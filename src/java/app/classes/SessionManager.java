package app.classes;

import javax.servlet.http.HttpSession;

public class SessionManager {
    public static User getLoggedInUser(HttpSession session) {
        return (User) session.getAttribute("user");
    }

    public static boolean isUserLoggedIn(HttpSession session) {
        return session.getAttribute("user") != null;
    }

    public static void logOut(HttpSession session) {
        session.invalidate();
    }
}
