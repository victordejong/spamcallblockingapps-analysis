package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdn.class */
public final class zzbdn {

    /* renamed from: a */
    public final Context f24809a;

    /* renamed from: b */
    public final zzbdu f24810b;

    /* renamed from: c */
    public final ViewGroup f24811c;

    /* renamed from: d */
    public zzbdh f24812d;

    @VisibleForTesting
    public zzbdn(Context context, ViewGroup viewGroup, zzbdu zzbduVar, zzbdh zzbdhVar) {
        this.f24809a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f24811c = viewGroup;
        this.f24810b = zzbduVar;
        this.f24812d = null;
    }

    public zzbdn(Context context, ViewGroup viewGroup, zzbgj zzbgjVar) {
        this(context, viewGroup, zzbgjVar, null);
    }

    /* renamed from: a */
    public final void m15772a() {
        Preconditions.m17286a("onDestroy must be called from the UI thread.");
        zzbdh zzbdhVar = this.f24812d;
        if (zzbdhVar != null) {
            zzbdhVar.m15808a();
            this.f24811c.removeView(this.f24812d);
            this.f24812d = null;
        }
    }

    /* renamed from: a */
    public final void m15771a(int i, int i2, int i3, int i4) {
        Preconditions.m17286a("The underlay may only be modified from the UI thread.");
        zzbdh zzbdhVar = this.f24812d;
        if (zzbdhVar != null) {
            zzbdhVar.m15804a(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public final void m15770a(int i, int i2, int i3, int i4, int i5, boolean z, zzbdv zzbdvVar) {
        if (this.f24812d == null) {
            zzabj.m16895a(this.f24810b.mo15566d().m16892a(), this.f24810b.mo15597M(), "vpr2");
            Context context = this.f24809a;
            zzbdu zzbduVar = this.f24810b;
            zzbdh zzbdhVar = new zzbdh(context, zzbduVar, i5, z, zzbduVar.mo15566d().m16892a(), zzbdvVar);
            this.f24812d = zzbdhVar;
            this.f24811c.addView(zzbdhVar, 0, new ViewGroup.LayoutParams(-1, -1));
            this.f24812d.m15804a(i, i2, i3, i4);
            this.f24810b.mo15575a(false);
        }
    }

    /* renamed from: b */
    public final void m15769b() {
        Preconditions.m17286a("onPause must be called from the UI thread.");
        zzbdh zzbdhVar = this.f24812d;
        if (zzbdhVar != null) {
            zzbdhVar.m15782i();
        }
    }

    /* renamed from: c */
    public final zzbdh m15768c() {
        Preconditions.m17286a("getAdVideoUnderlay must be called from the UI thread.");
        return this.f24812d;
    }
}
