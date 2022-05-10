package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;
import p131c.p161d.p170b.p224d.p252g.p253a.ef0;
import p131c.p161d.p170b.p224d.p252g.p253a.ff0;
import p131c.p161d.p170b.p224d.p252g.p253a.gf0;
import p131c.p161d.p170b.p224d.p252g.p253a.hf0;
import p131c.p161d.p170b.p224d.p252g.p253a.if0;
import p131c.p161d.p170b.p224d.p252g.p253a.jf0;
import p131c.p161d.p170b.p224d.p252g.p253a.kf0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqg.class */
public final class zzqg {

    /* renamed from: a */
    public final Handler f28856a;

    /* renamed from: b */
    public final zzqd f28857b;

    public zzqg(Handler handler, zzqd zzqdVar) {
        Handler handler2;
        if (zzqdVar != null) {
            zzoz.m11698a(handler);
            handler2 = handler;
        } else {
            handler2 = null;
        }
        this.f28856a = handler2;
        this.f28857b = zzqdVar;
    }

    /* renamed from: a */
    public final void m11561a(int i, int i2, int i3, float f) {
        if (this.f28857b != null) {
            this.f28856a.post(new hf0(this, i, i2, i3, f));
        }
    }

    /* renamed from: a */
    public final void m11560a(int i, long j) {
        if (this.f28857b != null) {
            this.f28856a.post(new if0(this, i, j));
        }
    }

    /* renamed from: a */
    public final void m11559a(Surface surface) {
        if (this.f28857b != null) {
            this.f28856a.post(new kf0(this, surface));
        }
    }

    /* renamed from: a */
    public final void m11558a(zzho zzhoVar) {
        if (this.f28857b != null) {
            this.f28856a.post(new ff0(this, zzhoVar));
        }
    }

    /* renamed from: a */
    public final void m11557a(zzjl zzjlVar) {
        if (this.f28857b != null) {
            this.f28856a.post(new ef0(this, zzjlVar));
        }
    }

    /* renamed from: a */
    public final void m11555a(String str, long j, long j2) {
        if (this.f28857b != null) {
            this.f28856a.post(new gf0(this, str, j, j2));
        }
    }

    /* renamed from: b */
    public final void m11554b(zzjl zzjlVar) {
        if (this.f28857b != null) {
            this.f28856a.post(new jf0(this, zzjlVar));
        }
    }
}
