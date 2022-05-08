package com.aotter.net.trek.common;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/SharedPreferencesHelper.class */
public final class SharedPreferencesHelper {
    public static final String PREFERENCE_NAME = "trekSettings";

    public static SharedPreferences getSharedPreferences(Context context) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0);
    }

    public static SharedPreferences getSharedPreferences(@NonNull Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        return context.getSharedPreferences(str, 0);
    }
}
