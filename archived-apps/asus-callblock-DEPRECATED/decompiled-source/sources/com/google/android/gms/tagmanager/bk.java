package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bk.class */
final class bk extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4307b = h.RANDOM.toString();
    private static final String c = i.MIN.toString();
    private static final String d = i.MAX.toString();

    public bk() {
        super(f4307b, new String[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        if (r9 <= r11) goto L_0x005c;
     */
    @Override // com.google.android.gms.tagmanager.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.k.a a(java.util.Map<java.lang.String, com.google.android.gms.internal.k.a> r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = com.google.android.gms.tagmanager.bk.c
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.k$a r0 = (com.google.android.gms.internal.k.a) r0
            r7 = r0
            r0 = r6
            java.lang.String r1 = com.google.android.gms.tagmanager.bk.d
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.k$a r0 = (com.google.android.gms.internal.k.a) r0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0072
            r0 = r7
            com.google.android.gms.internal.k$a r1 = com.google.android.gms.tagmanager.cn.f()
            if (r0 == r1) goto L_0x0072
            r0 = r8
            if (r0 == 0) goto L_0x0072
            r0 = r8
            com.google.android.gms.internal.k$a r1 = com.google.android.gms.tagmanager.cn.f()
            if (r0 == r1) goto L_0x0072
            r0 = r7
            com.google.android.gms.tagmanager.cm r0 = com.google.android.gms.tagmanager.cn.b(r0)
            r6 = r0
            r0 = r8
            com.google.android.gms.tagmanager.cm r0 = com.google.android.gms.tagmanager.cn.b(r0)
            r7 = r0
            r0 = r6
            com.google.android.gms.tagmanager.cm r1 = com.google.android.gms.tagmanager.cn.d()
            if (r0 == r1) goto L_0x0072
            r0 = r7
            com.google.android.gms.tagmanager.cm r1 = com.google.android.gms.tagmanager.cn.d()
            if (r0 == r1) goto L_0x0072
            r0 = r6
            double r0 = r0.doubleValue()
            r9 = r0
            r0 = r7
            double r0 = r0.doubleValue()
            r11 = r0
            r0 = r9
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0072
        L_0x005c:
            r0 = r11
            r1 = r9
            double r0 = r0 - r1
            double r1 = java.lang.Math.random()
            double r0 = r0 * r1
            r1 = r9
            double r0 = r0 + r1
            long r0 = java.lang.Math.round(r0)
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            com.google.android.gms.internal.k$a r0 = com.google.android.gms.tagmanager.cn.a(r0)
            return r0
        L_0x0072:
            r0 = 4746794007244308480(0x41dfffffffc00000, double:2.147483647E9)
            r11 = r0
            r0 = 0
            r9 = r0
            goto L_0x005c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.bk.a(java.util.Map):com.google.android.gms.internal.k$a");
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return false;
    }
}
