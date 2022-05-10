package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4214xg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbe.class */
public final class zzcbe extends zzbqo {

    /* renamed from: h */
    public final Context f25663h;

    /* renamed from: i */
    public final WeakReference<zzbgj> f25664i;

    /* renamed from: j */
    public final zzbzp f25665j;

    /* renamed from: k */
    public final zzccm f25666k;

    /* renamed from: l */
    public final zzbrh f25667l;

    /* renamed from: m */
    public final zzdtn f25668m;

    /* renamed from: n */
    public final zzbuk f25669n;

    /* renamed from: o */
    public boolean f25670o = false;

    public zzcbe(zzbqn zzbqnVar, Context context, zzbgj zzbgjVar, zzbzp zzbzpVar, zzccm zzccmVar, zzbrh zzbrhVar, zzdtn zzdtnVar, zzbuk zzbukVar) {
        super(zzbqnVar);
        this.f25663h = context;
        this.f25664i = new WeakReference<>(zzbgjVar);
        this.f25665j = zzbzpVar;
        this.f25666k = zzccmVar;
        this.f25667l = zzbrhVar;
        this.f25668m = zzdtnVar;
        this.f25669n = zzbukVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m14850a(boolean r5) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzaaq<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabb.f23809f0
            r6 = r0
            com.google.android.gms.internal.ads.zzaax r0 = com.google.android.gms.internal.ads.zzwm.m11166e()
            r1 = r6
            java.lang.Object r0 = r0.m16921a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0059
            com.google.android.gms.internal.ads.zzayu r0 = com.google.android.gms.ads.internal.zzp.m17969c()
            r0 = r4
            android.content.Context r0 = r0.f25663h
            boolean r0 = com.google.android.gms.internal.ads.zzayu.m16088g(r0)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.internal.ads.zzbbq.m15852d(r0)
            r0 = r4
            com.google.android.gms.internal.ads.zzbuk r0 = r0.f25669n
            r0.mo14061m()
            com.google.android.gms.internal.ads.zzaaq<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabb.f23815g0
            r6 = r0
            com.google.android.gms.internal.ads.zzaax r0 = com.google.android.gms.internal.ads.zzwm.m11166e()
            r1 = r6
            java.lang.Object r0 = r0.m16921a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0065
            r0 = r4
            com.google.android.gms.internal.ads.zzdtn r0 = r0.f25668m
            r1 = r4
            com.google.android.gms.internal.ads.zzdog r1 = r1.f25380a
            com.google.android.gms.internal.ads.zzdoe r1 = r1.f27634b
            com.google.android.gms.internal.ads.zzdnw r1 = r1.f27630b
            java.lang.String r1 = r1.f27612b
            r0.m13199a(r1)
            goto L_0x0065
        L_0x0059:
            r0 = r4
            boolean r0 = r0.f25670o
            if (r0 != 0) goto L_0x0065
            r0 = 1
            r7 = r0
            goto L_0x0067
        L_0x0065:
            r0 = 0
            r7 = r0
        L_0x0067:
            r0 = r7
            if (r0 != 0) goto L_0x006d
            r0 = 0
            return r0
        L_0x006d:
            r0 = r4
            com.google.android.gms.internal.ads.zzbzp r0 = r0.f25665j
            r0.m14873s()
            r0 = r4
            com.google.android.gms.internal.ads.zzccm r0 = r0.f25666k     // Catch: zzccl -> 0x0090
            r1 = r5
            r2 = r4
            android.content.Context r2 = r2.f25663h     // Catch: zzccl -> 0x0090
            r0.mo14809a(r1, r2)     // Catch: zzccl -> 0x0090
            r0 = r4
            com.google.android.gms.internal.ads.zzbzp r0 = r0.f25665j     // Catch: zzccl -> 0x0090
            r0.m14874q()     // Catch: zzccl -> 0x0090
            r0 = r4
            r1 = 1
            r0.f25670o = r1
            r0 = 1
            return r0
        L_0x0090:
            r6 = move-exception
            r0 = r4
            com.google.android.gms.internal.ads.zzbuk r0 = r0.f25669n
            r1 = r6
            r0.mo14068a(r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcbe.m14850a(boolean):boolean");
    }

    public final void finalize() throws Throwable {
        try {
            zzbgj zzbgjVar = this.f25664i.get();
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23687H3)).booleanValue()) {
                if (!this.f25670o && zzbgjVar != null) {
                    zzdzb zzdzbVar = zzbbz.f24768e;
                    zzbgjVar.getClass();
                    zzdzbVar.execute(RunnableC4214xg.m26153a(zzbgjVar));
                }
            } else if (zzbgjVar != null) {
                zzbgjVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    /* renamed from: g */
    public final boolean m14849g() {
        return this.f25667l.m15135a();
    }
}
