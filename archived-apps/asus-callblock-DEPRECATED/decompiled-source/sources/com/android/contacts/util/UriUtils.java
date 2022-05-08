package com.android.contacts.util;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/UriUtils.class */
public class UriUtils {
    private UriUtils() {
    }

    public static boolean areEqual(Uri uri, Uri uri2) {
        return (uri == null && uri2 == null) ? true : (uri == null || uri2 == null) ? false : uri.equals(uri2);
    }

    public static Uri nullForNonContactsUri(Uri uri) {
        Uri uri2;
        if (uri == null) {
            uri2 = null;
        } else {
            uri2 = uri;
            if (!"com.android.contacts".equals(uri.getAuthority())) {
                uri2 = null;
            }
        }
        return uri2;
    }

    public static Uri parseUriOrNull(String str) {
        return str == null ? null : Uri.parse(str);
    }

    public static String uriToString(Uri uri) {
        return uri == null ? null : uri.toString();
    }
}
