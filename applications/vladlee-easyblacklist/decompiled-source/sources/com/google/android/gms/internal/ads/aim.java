package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aim.class */
public final class aim implements ajn {

    /* renamed from: b */
    private static final aiu f7423b = new aip();

    /* renamed from: a */
    private final aiu f7424a;

    public aim() {
        this(new aio(aif.m5329a(), m5315a()));
    }

    private aim(aiu aiuVar) {
        this.f7424a = (aiu) zzdrv.m3349a(aiuVar, "messageInfoFactory");
    }

    /* renamed from: a */
    private static aiu m5315a() {
        try {
            return (aiu) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f7423b;
        }
    }

    /* renamed from: a */
    private static boolean m5314a(aiv aivVar) {
        return aivVar.mo5096a() == zzdrt.zze.zzhna;
    }

    @Override // com.google.android.gms.internal.ads.ajn
    /* renamed from: a */
    public final <T> ajo<T> mo5185a(Class<T> cls) {
        ajq.m5146a((Class<?>) cls);
        aiv b = this.f7424a.mo5297b(cls);
        if (b.mo5095b()) {
            return zzdrt.class.isAssignableFrom(cls) ? aiz.m5253a(ajq.m5135c(), ahx.m5366a(), b.mo5094c()) : aiz.m5253a(ajq.m5158a(), ahx.m5365b(), b.mo5094c());
        }
        if (zzdrt.class.isAssignableFrom(cls)) {
            boolean a = m5314a(b);
            ajb b2 = ajc.m5249b();
            aij b3 = aij.m5322b();
            ake<?, ?> c = ajq.m5135c();
            return a ? aiy.m5288a(b, b2, b3, c, ahx.m5366a(), ais.m5308b()) : aiy.m5288a(b, b2, b3, c, (ahw<?>) null, ais.m5308b());
        }
        boolean a2 = m5314a(b);
        ajb a3 = ajc.m5250a();
        aij a4 = aij.m5323a();
        return a2 ? aiy.m5288a(b, a3, a4, ajq.m5158a(), ahx.m5365b(), ais.m5309a()) : aiy.m5288a(b, a3, a4, ajq.m5142b(), (ahw<?>) null, ais.m5309a());
    }
}
