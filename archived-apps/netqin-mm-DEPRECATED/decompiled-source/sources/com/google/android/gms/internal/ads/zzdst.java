package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdst;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdst.class */
public final class zzdst {

    /* renamed from: a */
    public final Executor f27800a;

    /* renamed from: b */
    public final zzbbu f27801b;

    public zzdst(Executor executor, zzbbu zzbbuVar) {
        this.f27800a = executor;
        this.f27801b = zzbbuVar;
    }

    /* renamed from: a */
    public final void m13237a(final String str) {
        this.f27800a.execute(new Runnable(this, str) { // from class: c.d.b.d.g.a.vz

            /* renamed from: a */
            public final zzdst f15890a;

            /* renamed from: b */
            public final String f15891b;

            {
                this.f15890a = this;
                this.f15891b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f15890a.m13235b(this.f15891b);
            }
        });
    }

    /* renamed from: a */
    public final void m13236a(List<String> list) {
        for (String str : list) {
            m13237a(str);
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m13235b(String str) {
        this.f27801b.mo15845a(str);
    }
}
