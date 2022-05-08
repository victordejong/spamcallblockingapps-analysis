package com.google.android.gms.tagmanager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzft.class */
final class zzft {
    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"CommitPrefEdits"})
    public static void zza(Context context, String str, String str2, String str3) {
        SharedPreferences.Editor edit = context.getSharedPreferences(str, 0).edit();
        edit.putString(str2, str3);
        edit.apply();
    }
}
