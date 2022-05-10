package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import p131c.p161d.p170b.p224d.p252g.p253a.CallableC3374b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaam.class */
public final class zzaam {

    /* renamed from: a */
    public final Context f23633a;

    public zzaam(Context context) {
        Preconditions.m17287a(context, "Context can not be null");
        this.f23633a = context;
    }

    /* renamed from: a */
    public final boolean m16948a() {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return m16947a(intent);
    }

    /* renamed from: a */
    public final boolean m16947a(Intent intent) {
        Preconditions.m17287a(intent, "Intent can not be null");
        return !this.f23633a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    /* renamed from: b */
    public final boolean m16946b() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return m16947a(intent);
    }

    /* renamed from: c */
    public final boolean m16945c() {
        return ((Boolean) zzbay.m15929a(this.f23633a, new CallableC3374b())).booleanValue() && Wrappers.m17026b(this.f23633a).m17033a("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    /* renamed from: d */
    public final boolean m16944d() {
        return m16947a(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }
}
