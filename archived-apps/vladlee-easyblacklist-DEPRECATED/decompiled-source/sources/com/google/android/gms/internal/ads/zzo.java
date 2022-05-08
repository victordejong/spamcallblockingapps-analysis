package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzo.class */
public final class zzo {

    /* renamed from: a */
    private final long f15226a;
    public final List<zzk> allHeaders;
    public final byte[] data;
    public final int statusCode;
    public final Map<String, String> zzab;
    public final boolean zzac;

    private zzo(int i, byte[] bArr, Map<String, String> map, List<zzk> list, boolean z, long j) {
        this.statusCode = i;
        this.data = bArr;
        this.zzab = map;
        this.allHeaders = list == null ? null : Collections.unmodifiableList(list);
        this.zzac = z;
        this.f15226a = j;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzo(int r10, byte[] r11, java.util.Map<java.lang.String, java.lang.String> r12, boolean r13, long r14) {
        /*
            r9 = this;
            r0 = r12
            if (r0 != 0) goto L_0x000a
            r0 = 0
            r16 = r0
        L_0x0007:
            goto L_0x0077
        L_0x000a:
            r0 = r12
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x001b
            java.util.List r0 = java.util.Collections.emptyList()
            r16 = r0
            goto L_0x0007
        L_0x001b:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r12
            int r2 = r2.size()
            r1.<init>(r2)
            r17 = r0
            r0 = r12
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r18 = r0
        L_0x0037:
            r0 = r17
            r16 = r0
            r0 = r18
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0007
            r0 = r18
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r16 = r0
            r0 = r17
            com.google.android.gms.internal.ads.zzk r1 = new com.google.android.gms.internal.ads.zzk
            r2 = r1
            r3 = r16
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r16
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L_0x0037
        L_0x0077:
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r16
            r5 = r13
            r6 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzo.<init>(int, byte[], java.util.Map, boolean, long):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzo(int r10, byte[] r11, boolean r12, long r13, java.util.List<com.google.android.gms.internal.ads.zzk> r15) {
        /*
            r9 = this;
            r0 = r15
            if (r0 != 0) goto L_0x000b
            r0 = 0
            r16 = r0
        L_0x0008:
            goto L_0x0061
        L_0x000b:
            r0 = r15
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x001d
            java.util.Map r0 = java.util.Collections.emptyMap()
            r16 = r0
            goto L_0x0008
        L_0x001d:
            java.util.TreeMap r0 = new java.util.TreeMap
            r1 = r0
            java.util.Comparator r2 = java.lang.String.CASE_INSENSITIVE_ORDER
            r1.<init>(r2)
            r17 = r0
            r0 = r15
            java.util.Iterator r0 = r0.iterator()
            r18 = r0
        L_0x0032:
            r0 = r17
            r16 = r0
            r0 = r18
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0008
            r0 = r18
            java.lang.Object r0 = r0.next()
            com.google.android.gms.internal.ads.zzk r0 = (com.google.android.gms.internal.ads.zzk) r0
            r16 = r0
            r0 = r17
            r1 = r16
            java.lang.String r1 = r1.getName()
            r2 = r16
            java.lang.String r2 = r2.getValue()
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0032
        L_0x0061:
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r16
            r4 = r15
            r5 = r12
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzo.<init>(int, byte[], boolean, long, java.util.List):void");
    }

    @Deprecated
    public zzo(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }
}
