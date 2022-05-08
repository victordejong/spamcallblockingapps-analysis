package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.cz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cz.class */
public final class C2544cz implements AbstractC2569dx {

    /* renamed from: b */
    private static final AbstractC2553dh f15960b = new C2548dc();

    /* renamed from: a */
    private final AbstractC2553dh f15961a;

    public C2544cz() {
        this(new C2547db(C2537cs.m2830a(), m2815a()));
    }

    private C2544cz(AbstractC2553dh dhVar) {
        this.f15961a = (AbstractC2553dh) zzff.m2269a(dhVar, "messageInfoFactory");
    }

    /* renamed from: a */
    private static AbstractC2553dh m2815a() {
        try {
            return (AbstractC2553dh) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f15960b;
        }
    }

    /* renamed from: a */
    private static boolean m2814a(AbstractC2554di diVar) {
        return diVar.mo2609a() == zzfd.zze.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2569dx
    /* renamed from: a */
    public final <T> AbstractC2566du<T> mo2633a(Class<T> cls) {
        C2568dw.m2677a((Class<?>) cls);
        AbstractC2554di b = this.f15961a.mo2798b(cls);
        if (b.mo2608b()) {
            return zzfd.class.isAssignableFrom(cls) ? C2558dm.m2754a(C2568dw.m2666c(), C2529ck.m2867a(), b.mo2607c()) : C2558dm.m2754a(C2568dw.m2689a(), C2529ck.m2866b(), b.mo2607c());
        }
        if (zzfd.class.isAssignableFrom(cls)) {
            boolean a = m2814a(b);
            AbstractC2560do b2 = C2561dp.m2751b();
            AbstractC2541cw b3 = AbstractC2541cw.m2822b();
            AbstractC2585em<?, ?> c = C2568dw.m2666c();
            return a ? C2557dl.m2789a(b, b2, b3, c, C2529ck.m2867a(), C2551df.m2809b()) : C2557dl.m2789a(b, b2, b3, c, (AbstractC2528cj<?>) null, C2551df.m2809b());
        }
        boolean a2 = m2814a(b);
        AbstractC2560do a3 = C2561dp.m2752a();
        AbstractC2541cw a4 = AbstractC2541cw.m2823a();
        return a2 ? C2557dl.m2789a(b, a3, a4, C2568dw.m2689a(), C2529ck.m2866b(), C2551df.m2810a()) : C2557dl.m2789a(b, a3, a4, C2568dw.m2673b(), (AbstractC2528cj<?>) null, C2551df.m2810a());
    }
}
