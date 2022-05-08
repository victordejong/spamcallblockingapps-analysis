package com.google.firebase.appindexing.internal;

import android.util.Log;
import com.google.firebase.appindexing.FirebaseAppIndex;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzt.class */
public final class zzt {
    public static boolean isLoggable(int i) {
        if (Log.isLoggable(FirebaseAppIndex.APP_INDEXING_API_TAG, i)) {
            return true;
        }
        return Log.isLoggable(FirebaseAppIndex.APP_INDEXING_API_TAG, i);
    }

    public static int zzn(String str) {
        if (isLoggable(3)) {
            return Log.d(FirebaseAppIndex.APP_INDEXING_API_TAG, str);
        }
        return 0;
    }
}
