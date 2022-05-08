package p033i.p034a.p035a.p038h;

import java.util.concurrent.atomic.AtomicReference;
import p033i.p034a.p061e.p062a.AbstractC0437a;
/* renamed from: i.a.a.h.d */
/* loaded from: classes2-dex2jar.jar:i/a/a/h/d.class */
public class C0308d {

    /* renamed from: a */
    private static final Object f849a = new Object();

    /* renamed from: b */
    private static final AtomicReference<AbstractC0317j> f850b = new AtomicReference<>();

    /* renamed from: a */
    public static AbstractC0317j m431a() {
        AtomicReference<AbstractC0317j> atomicReference = f850b;
        AbstractC0317j jVar = atomicReference.get();
        jVar = jVar;
        if (jVar == null) {
            synchronized (f849a) {
                if (atomicReference.get() == null) {
                    AbstractC0437a c = m429c();
                    jVar = c != null ? c.m145a() : C0316i.m417a();
                    atomicReference.compareAndSet(null, jVar);
                }
            }
        }
        return jVar;
    }

    /* renamed from: b */
    public static AbstractC0315h m430b(String str) {
        return m431a().get(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x001b  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static p033i.p034a.p061e.p062a.AbstractC0437a m429c() {
        /*
            java.lang.Class<i.a.e.a.a> r0 = p033i.p034a.p061e.p062a.AbstractC0437a.class
            java.lang.String r0 = r0.getName()
            java.lang.String r0 = java.lang.System.getProperty(r0)
            r8 = r0
            java.lang.Class<i.a.e.a.a> r0 = p033i.p034a.p061e.p062a.AbstractC0437a.class
            java.util.ServiceLoader r0 = java.util.ServiceLoader.load(r0)
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x0012:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0039
            r0 = r9
            java.lang.Object r0 = r0.next()
            i.a.e.a.a r0 = (p033i.p034a.p061e.p062a.AbstractC0437a) r0
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0037
            r0 = r8
            r1 = r10
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0012
        L_0x0037:
            r0 = r10
            return r0
        L_0x0039:
            r0 = r8
            if (r0 != 0) goto L_0x003f
            r0 = 0
            return r0
        L_0x003f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Service provider %s not found"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r8
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p033i.p034a.p035a.p038h.C0308d.m429c():i.a.e.a.a");
    }
}
