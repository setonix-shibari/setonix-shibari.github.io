<div id="age-verification">
    <br style="height: 45vh">
    <button id="confirm" onclick="setCookieAndAllowAccess()">I am 18 or older</button>
    <button id="deny" onclick="denyAccess()">I am under 18</button>
</div>

<script type="text/plain" cookie-consent="strictly-necessary">

// Function to check if the cookie is already set
function checkAgeCookie() {
    const cookie = document.cookie.split(';').find(row => row.trim().startsWith('ageVerified='));
    if (cookie) {
        const ageVerified = cookie.split('=')[1];
        if (ageVerified === 'true') {
            showContent();
        } else {
            denyAccess();
        }
    } else {
        showAgeVerification();
    }
}

// Show the age verification prompt
function showAgeVerification() {
    document.getElementById('age-verification').style.display = 'block';
    document.body.style.display = 'block';
}

// Set the cookie and show the content
function setCookieAndAllowAccess() {
    document.cookie = "ageVerified=true; path=/; max-age=" + 60 * 60 * 24 * 365; // cookie lasts 1 year
    showContent();
}

// Deny access if they are not over 18
function denyAccess() {
    document.cookie = "ageVerified=false; path=/; max-age=" + 60 * 60 * 24 * 365; // cookie lasts 1 year
    alert("You must be over 18 to view this website.");
}

// Show the content of the website
function showContent() {
    document.getElementById('age-verification').style.display = 'none';
}

// Run the age check when the page loads
checkAgeCookie();


</script>