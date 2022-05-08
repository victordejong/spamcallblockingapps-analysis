package com.google.firebase.appindexing;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/AndroidAppUri.class */
public final class AndroidAppUri {
    private final Uri uri;

    private AndroidAppUri(Uri uri) {
        this.uri = uri;
    }

    public static AndroidAppUri newAndroidAppUri(Uri uri) {
        AndroidAppUri androidAppUri = new AndroidAppUri(uri);
        if (!"android-app".equals(androidAppUri.uri.getScheme())) {
            throw new IllegalArgumentException("android-app scheme is required.");
        } else if (!TextUtils.isEmpty(androidAppUri.getPackageName())) {
            return androidAppUri;
        } else {
            throw new IllegalArgumentException("Package name is empty.");
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AndroidAppUri) {
            return this.uri.equals(((AndroidAppUri) obj).uri);
        }
        return false;
    }

    public final Uri getDeepLinkUri() {
        List<String> pathSegments = this.uri.getPathSegments();
        if (pathSegments.size() <= 0) {
            return null;
        }
        String str = pathSegments.get(0);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(str);
        if (pathSegments.size() > 1) {
            builder.authority(pathSegments.get(1));
            for (int i = 2; i < pathSegments.size(); i++) {
                builder.appendPath(pathSegments.get(i));
            }
        }
        builder.encodedQuery(this.uri.getEncodedQuery());
        builder.encodedFragment(this.uri.getEncodedFragment());
        return builder.build();
    }

    public final String getPackageName() {
        return this.uri.getAuthority();
    }

    public final int hashCode() {
        return Objects.m14536b(this.uri);
    }

    public final String toString() {
        return this.uri.toString();
    }
}
