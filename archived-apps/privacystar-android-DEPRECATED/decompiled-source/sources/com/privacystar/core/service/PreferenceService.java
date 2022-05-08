package com.privacystar.core.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.p001v4.util.ArraySet;
import android.text.TextUtils;
import com.privacystar.core.PSAbstractApplication;
import com.privacystar.core.util.exception.InitializationException;
import java.util.Map;
import java.util.Set;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/PreferenceService.class */
public class PreferenceService {
    private static SharedPreferences preferences;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/PreferenceService$Builder.class */
    public static final class Builder {
        private Context context;
        private String key;
        private int mode = -1;
        private boolean useDefault = false;

        public SharedPreferences build() {
            if (this.context == null) {
                throw new InitializationException("Context not set, set context before building.");
            }
            if (TextUtils.isEmpty(this.key)) {
                this.key = this.context.getPackageName();
            }
            if (this.useDefault) {
                this.key += "_preferences";
            }
            if (this.mode == -1) {
                this.mode = 0;
            }
            return PreferenceService.setPreferences(this.context, this.key, this.mode);
        }

        public Builder setContext(Context context) {
            this.context = context;
            return this;
        }

        public Builder setMode(int i) {
            if (i == 0 || i == 1 || i == 2 || i == 4) {
                this.mode = i;
            } else {
                this.mode = 0;
                Timber.m25w("The mode in the SharedPreference can only be set to ContextWrapper.MODE_PRIVATE, ContextWrapper.MODE_WORLD_READABLE, ContextWrapper.MODE_WORLD_WRITEABLE or ContextWrapper.MODE_MULTI_PROCESS", new Object[0]);
            }
            return this;
        }

        public Builder setPreferencesName(String str) {
            this.key = str;
            return this;
        }

        public Builder setUseDefaultPreferences(boolean z) {
            this.useDefault = z;
            return this;
        }
    }

    public static boolean contains(String str) {
        return getPreferences().contains(str);
    }

    public static Map<String, ?> getAll() {
        return getPreferences().getAll();
    }

    public static boolean getBoolean(String str, boolean z) {
        return getPreferences().getBoolean(str, z);
    }

    public static int getCallerIdPositionX(Context context) {
        return getInt(Preferences.CALLER_ID_POSITION_X, 0);
    }

    public static int getCallerIdPositionY(Context context) {
        return getInt(Preferences.CALLER_ID_POSITION_Y, 0);
    }

    public static double getDouble(String str, double d) {
        return Double.doubleToLongBits(getPreferences().getLong(str, Double.doubleToLongBits(d)));
    }

    public static SharedPreferences.Editor getEditor() {
        return getPreferences().edit();
    }

    public static float getFloat(String str, float f) {
        return getPreferences().getFloat(str, f);
    }

    public static int getInt(String str, int i) {
        return getPreferences().getInt(str, i);
    }

    public static int[] getIntArray(String str, int i) {
        String str2 = str + "Entry";
        int i2 = getInt(str + "Length", 0);
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = getInt(str2 + i3, i);
        }
        return iArr;
    }

    public static long getLong(String str, long j) {
        return getPreferences().getLong(str, j);
    }

    public static SharedPreferences getPreferences() {
        return preferences != null ? preferences : PSAbstractApplication.setupSharedPreferences(PSAbstractApplication.context());
    }

    private static SharedPreferences getPreferences(Context context, String str, int i) {
        return context.getSharedPreferences(str, i);
    }

    public static String getString(String str, String str2) {
        return getPreferences().getString(str, str2);
    }

    public static Set<String> getStringSet(String str) {
        return getPreferences().getStringSet(str, new ArraySet());
    }

    public static void putBoolean(String str, boolean z) {
        SharedPreferences.Editor editor = getEditor();
        editor.putBoolean(str, z);
        editor.apply();
    }

    public static void putDouble(String str, double d) {
        SharedPreferences.Editor editor = getEditor();
        editor.putLong(str, Double.doubleToRawLongBits(d));
        editor.apply();
    }

    public static void putFloat(String str, float f) {
        SharedPreferences.Editor editor = getEditor();
        editor.putFloat(str, f);
        editor.apply();
    }

    public static void putInt(String str, int i) {
        SharedPreferences.Editor editor = getEditor();
        editor.putInt(str, i);
        editor.apply();
    }

    public static void putIntArray(String str, int[] iArr) {
        SharedPreferences.Editor editor = getEditor();
        editor.putInt(str + "Length", iArr.length);
        String str2 = str + "Entry";
        for (int i = 0; i < iArr.length; i++) {
            editor.putInt(str2 + i, iArr[i]);
        }
        editor.apply();
    }

    public static void putLong(String str, long j) {
        SharedPreferences.Editor editor = getEditor();
        editor.putLong(str, j);
        editor.apply();
    }

    public static void putString(String str, String str2) {
        SharedPreferences.Editor editor = getEditor();
        editor.putString(str, str2);
        editor.apply();
    }

    public static void putStringSet(String str, ArraySet<String> arraySet) {
        SharedPreferences.Editor editor = getEditor();
        editor.putStringSet(str, arraySet);
        editor.apply();
    }

    public static void remove(String str) {
        getEditor().remove(str);
    }

    public static void setCallerIdPositionX(int i, Context context) {
        putInt(Preferences.CALLER_ID_POSITION_X, i);
    }

    public static void setCallerIdPositionY(int i, Context context) {
        putInt(Preferences.CALLER_ID_POSITION_Y, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SharedPreferences setPreferences(Context context, String str, int i) {
        preferences = getPreferences(context, str, i);
        return preferences;
    }

    public void resetToDefault() {
        SharedPreferences.Editor edit = getPreferences().edit();
        edit.clear();
        edit.apply();
    }
}
