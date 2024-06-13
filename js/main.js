function validateForm(event) {
    event.preventDefault();
    let valid = true;

    valid = validateField('title', 'porukaTitle', 'Title must be between 5 and 30 characters!', 5, 30) && valid;
    valid = validateField('about', 'porukaAbout', 'Summary must be between 10 and 100 characters!', 10, 100) && valid;
    valid = validatePresence('content', 'porukaContent', 'Content must be entered!') && valid;
    valid = validatePresence('image', 'porukaSlika', 'Image must be uploaded!') && valid;
    valid = validateSelection('category', 'porukaKategorija', 'Category must be selected!') && valid;

    if (valid) {
        document.getElementById('newsForm').submit();
    }
}

function validateField(fieldId, messageId, errorMessage, minLength, maxLength) {
    const field = document.getElementById(fieldId);
    const message = document.getElementById(messageId);

    if (field.value.length < minLength || field.value.length > maxLength) {
        message.textContent = errorMessage;
        field.style.border = '1px dashed red';
        return false;
    } else {
        message.textContent = '';
        field.style.border = '1px solid green';
        return true;
    }
}

function validatePresence(fieldId, messageId, errorMessage) {
    const field = document.getElementById(fieldId);
    const message = document.getElementById(messageId);

    if (field.value.length === 0) {
        message.textContent = errorMessage;
        field.style.border = '1px dashed red';
        return false;
    } else {
        message.textContent = '';
        field.style.border = '1px solid green';
        return true;
    }
}

function validateSelection(fieldId, messageId, errorMessage) {
    const field = document.getElementById(fieldId);
    const message = document.getElementById(messageId);

    if (field.selectedIndex === 0) {
        message.textContent = errorMessage;
        field.style.border = '1px dashed red';
        return false;
    } else {
        message.textContent = '';
        field.style.border = '1px solid green';
        return true;
    }
}

document.addEventListener('DOMContentLoaded', function () {
    const currentPath = window.location.pathname.split('/').pop();
    const navLinks = {
        'index.php': 'homeLink',
        'sport.php': 'sportLink',
        'politics.php': 'politicsLink',
        'administration.php': 'adminLink',
        'login.php': 'loginLink',
        'registration.php': 'registerLink',
        'enter_news.php': 'enterNewsLink'
    };

    const linkId = navLinks[currentPath];
    if (linkId) {
        document.getElementById(linkId).classList.add('active');
    }

    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.has('success')) {
        const messageDiv = document.createElement('div');
        messageDiv.className = 'success-message';
        messageDiv.textContent = 'New record created successfully!';
        document.body.prepend(messageDiv);
    }

    fetch('php/fetch_news.php')
        .then(response => response.json())
        .then(newsItems => {
            const newsSection = document.getElementById('news');
            newsSection.innerHTML = '';

            let filteredItems = newsItems;
            if (currentPath === 'sport.php') {
                filteredItems = newsItems.filter(item => item.category === 'sport');
            } else if (currentPath === 'politics.php') {
                filteredItems = newsItems.filter(item => item.category === 'politics');
            }

            filteredItems.forEach(item => {
                const article = document.createElement('article');
                const title = document.createElement('h3');
                title.textContent = item.title;

                const summary = document.createElement('p');
                summary.textContent = item.summary.substring(0, 100) + '...';

                const link = document.createElement('a');
                link.href = `article.php?id=${item.id}`;
                link.textContent = 'Read more';

                article.appendChild(title);
                article.appendChild(summary);
                article.appendChild(link);
                newsSection.appendChild(article);
            });
        });

    document.getElementById('newsForm').onsubmit = validateForm;
});
