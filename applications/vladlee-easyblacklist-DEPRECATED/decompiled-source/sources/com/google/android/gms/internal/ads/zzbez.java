package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbez.class */
public final class zzbez extends MutableContextWrapper {

    /* renamed from: a */
    private Activity f11782a;

    /* renamed from: b */
    private Context f11783b;

    /* renamed from: c */
    private Context f11784c;

    public zzbez(Context context) {
        super(context);
        setBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f11784c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        this.f11783b = context.getApplicationContext();
        this.f11782a = context instanceof Activity ? (Activity) context : null;
        this.f11784c = context;
        super.setBaseContext(this.f11783b);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f11782a;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.f11783b.startActivity(intent);
    }

    public final Activity zzyn() {
        return this.f11782a;
    }

    public final Context zzzv() {
        return this.f11784c;
    }
}
