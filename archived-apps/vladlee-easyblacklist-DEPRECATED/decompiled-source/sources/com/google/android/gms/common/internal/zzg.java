package com.google.android.gms.common.internal;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzg.class */
public final class zzg {

    /* renamed from: a */
    private static final Uri f6849a;

    /* renamed from: b */
    private static final Uri f6850b;

    static {
        Uri parse = Uri.parse("https://plus.google.com/");
        f6849a = parse;
        f6850b = parse.buildUpon().appendPath("circles").appendPath("find").build();
    }

    public static Intent zza(String str, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW");
        Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", str);
        if (!TextUtils.isEmpty(str2)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", str2);
        }
        intent.setData(appendQueryParameter.build());
        intent.setPackage("com.android.vending");
        intent.addFlags(524288);
        return intent;
    }

    public static Intent zzg(String str) {
        Uri fromParts = Uri.fromParts("package", str, null);
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(fromParts);
        return intent;
    }

    public static Intent zzs() {
        Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
        intent.setPackage("com.google.android.wearable.app");
        return intent;
    }
}
