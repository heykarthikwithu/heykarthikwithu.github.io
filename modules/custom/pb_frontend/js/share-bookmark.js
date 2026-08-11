const STORAGE_KEY = "bookmarks";
const PAGE = "https://peoplesblog.co.in" + location.pathname;

function sharePage(e) {
  e.preventDefault();

  if (navigator.share) {
    navigator.share({
      title: document.title,
      url: location.href
    });
  }
}

function getBookmarks() {
  return JSON.parse(
    localStorage.getItem(STORAGE_KEY) || "[]"
  );
}

function saveBookmarks(bookmarks) {
  localStorage.setItem(
    STORAGE_KEY,
    JSON.stringify(bookmarks)
  );
}

function updateBookmarkIcon() {
  const bookmarked = getBookmarks().some(bookmark =>
    typeof bookmark === "string"
      ? bookmark === PAGE
      : bookmark.url === PAGE
  );

  document
    .getElementById("bookmark-icon")
    .setAttribute(
      "fill",
      bookmarked ? "currentColor" : "none"
    );
}

function showBookmarkMessage(message, showLink = false) {

  const button = document.getElementById("bookmark-btn");

  // Remove existing message
  const oldMessage = button.querySelector(".bookmark-message");

  if (oldMessage) {
    oldMessage.remove();
  }

  // Create message
  const messageElement = document.createElement("span");

  messageElement.className = "bookmark-message";

  if (showLink) {

    messageElement.innerHTML = `${message} <span class="bookmark-message-separator">—</span> <a href="/bookmarks/" class="bookmark-message-link">View bookmarks</a>`;

    const link = messageElement.querySelector(".bookmark-message-link");

    // Prevent parent bookmark button from being triggered
    link.addEventListener("click", function(e) {
      e.stopPropagation();
    });

  } else {

    messageElement.textContent = message;

  }

  button.appendChild(messageElement);

  // Keep "Saved" popup longer so link can be clicked
  const duration = showLink ? 3000 : 1500;

  setTimeout(() => {

    if (messageElement.parentNode) {
      messageElement.remove();
    }

  }, duration);
}

function toggleBookmark(e) {
  e.preventDefault();

  let bookmarks = getBookmarks();

  const index = bookmarks.findIndex(bookmark =>
    typeof bookmark === "string"
      ? bookmark === PAGE
      : bookmark.url === PAGE
  );

  // Remove bookmark
  if (index > -1) {

    bookmarks.splice(index, 1);

    saveBookmarks(bookmarks);

    updateBookmarkIcon();

    showBookmarkMessage("Removed");

    return;
  }

  // Add bookmark
  bookmarks.push({
    title: document.title,

    url: PAGE,

    published:
      document.querySelector(".pb-meta")
        ?.textContent
        .match(/Published:\s*(.*)$/)?.[1]
        ?.trim() || "",

    bookmarked: new Date().toISOString(),

    image:
      document.querySelector(
        'meta[property="og:image"]'
      )?.content || "",

    summary:
      document.querySelector(
        'meta[name="description"]'
      )?.content || ""
  });

  saveBookmarks(bookmarks);

  updateBookmarkIcon();

  showBookmarkMessage("Saved", true);
}

updateBookmarkIcon();