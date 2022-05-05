package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyy.class */
public final class zzyy {

    /* renamed from: a */
    private final Context f15695a;

    public zzyy(Context context) {
        Preconditions.checkNotNull(context, "Context can not be null");
        this.f15695a = context;
    }

    /* renamed from: a */
    private final boolean m2958a(Intent intent) {
        Preconditions.checkNotNull(intent, "Intent can not be null");
        return !this.f15695a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    public final boolean zzqb() {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return m2958a(intent);
    }

    public final boolean zzqc() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return m2958a(intent);
    }

    public final boolean zzqd() {
        return ((Boolean) zzayc.zza(this.f15695a, new asi())).booleanValue() && Wrappers.packageManager(this.f15695a).checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public final boolean zzqe() {
        return m2958a(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }
}
