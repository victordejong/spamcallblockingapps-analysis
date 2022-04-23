package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.util.BitSet;
/* renamed from: com.google.a.b.a.ai */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ai.class */
final class C1393ai extends AbstractC1378ae<BitSet> {
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        if (java.lang.Integer.parseInt(r0) != 0) goto L_0x0085;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0082, code lost:
        if (r5.mo6229m() != 0) goto L_0x0085;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.BitSet m6345b(com.google.p051a.p058d.C1495a r5) {
        /*
            java.util.BitSet r0 = new java.util.BitSet
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            r0.mo6250a()
            r0 = r5
            com.google.a.d.c r0 = r0.mo6236f()
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0013:
            r0 = r7
            com.google.a.d.c r1 = com.google.p051a.p058d.EnumC1497c.END_ARRAY
            if (r0 == r1) goto L_0x009a
            int[] r0 = com.google.p051a.p053b.p054a.C1413bb.f5503a
            r1 = r7
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L_0x007e
            r0 = r9
            r1 = 2
            if (r0 == r1) goto L_0x0075
            r0 = r9
            r1 = 3
            if (r0 != r1) goto L_0x0064
            r0 = r5
            java.lang.String r0 = r0.mo6234h()
            r7 = r0
            r0 = r7
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x0052
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x004c
            goto L_0x0085
        L_0x004c:
            r0 = 0
            r10 = r0
            goto L_0x0085
        L_0x0052:
            r5 = move-exception
            com.google.a.aa r0 = new com.google.a.aa
            r1 = r0
            java.lang.String r2 = "Error: Expecting: bitset number value (1, 0), Found: "
            r3 = r7
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        L_0x0064:
            com.google.a.aa r0 = new com.google.a.aa
            r1 = r0
            java.lang.String r2 = "Invalid bitset value type: "
            r3 = r7
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        L_0x0075:
            r0 = r5
            boolean r0 = r0.mo6233i()
            r10 = r0
            goto L_0x0085
        L_0x007e:
            r0 = r5
            int r0 = r0.mo6229m()
            if (r0 == 0) goto L_0x004c
        L_0x0085:
            r0 = r10
            if (r0 == 0) goto L_0x008f
            r0 = r6
            r1 = r8
            r0.set(r1)
        L_0x008f:
            int r8 = r8 + 1
            r0 = r5
            com.google.a.d.c r0 = r0.mo6236f()
            r7 = r0
            goto L_0x0013
        L_0x009a:
            r0 = r5
            r0.mo6245b()
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p051a.p053b.p054a.C1393ai.m6345b(com.google.a.d.a):java.util.BitSet");
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ BitSet mo6175a(C1495a aVar) {
        return m6345b(aVar);
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, BitSet bitSet) {
        BitSet bitSet2 = bitSet;
        dVar.mo6206b();
        int length = bitSet2.length();
        for (int i = 0; i < length; i++) {
            dVar.mo6211a(bitSet2.get(i) ? 1L : 0L);
        }
        dVar.mo6202c();
    }
}
