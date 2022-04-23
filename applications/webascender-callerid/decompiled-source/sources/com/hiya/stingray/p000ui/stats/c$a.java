package com.hiya.stingray.p000ui.stats;

import com.hiya.stingray.t.d0;
import java.util.List;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.stats.c$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/c$a.class */
public final class c$a {

    /* renamed from: a */
    private final List<Integer> f252a;

    /* renamed from: b */
    private final int f253b;

    /* renamed from: c */
    private final int f254c;

    /* renamed from: d */
    private final int f255d;

    /* renamed from: e */
    private final int f256e;

    /* renamed from: f */
    private final List<d0> f257f;

    public c$a() {
        this(null, 0, 0, 0, 0, null, 63, null);
    }

    public c$a(List<Integer> list, int i, int i2, int i3, int i4, List<? extends d0> list2) {
        k.g(list, "blockedByDay");
        k.g(list2, "recentlyBlocked");
        this.f252a = list;
        this.f253b = i;
        this.f254c = i2;
        this.f255d = i3;
        this.f256e = i4;
        this.f257f = list2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ c$a(java.util.List r9, int r10, int r11, int r12, int r13, java.util.List r14, int r15, kotlin.w.c.g r16) {
        /*
            r8 = this;
            r0 = r15
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000b
            java.util.List r0 = kotlin.s.k.g()
            r9 = r0
        L_0x000b:
            r0 = 0
            r17 = r0
            r0 = r15
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001a
            r0 = 0
            r10 = r0
            goto L_0x001a
        L_0x001a:
            r0 = r15
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = 0
            r11 = r0
            goto L_0x0026
        L_0x0026:
            r0 = r15
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0034
            r0 = 0
            r12 = r0
            goto L_0x0034
        L_0x0034:
            r0 = r15
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0043
            r0 = r17
            r13 = r0
            goto L_0x0043
        L_0x0043:
            r0 = r15
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0050
            java.util.List r0 = kotlin.s.k.g()
            r14 = r0
        L_0x0050:
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            r6 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hiya.stingray.p000ui.stats.c$a.<init>(java.util.List, int, int, int, int, java.util.List, int, kotlin.w.c.g):void");
    }

    /* renamed from: a */
    public final int m1033a() {
        return this.f255d;
    }

    /* renamed from: b */
    public final List<Integer> m1032b() {
        return this.f252a;
    }

    /* renamed from: c */
    public final int m1031c() {
        return this.f254c;
    }

    /* renamed from: d */
    public final int m1030d() {
        return this.f256e;
    }

    /* renamed from: e */
    public final int m1029e() {
        return this.f253b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c$a)) {
            return false;
        }
        c$a c_a = (c$a) obj;
        return k.b(this.f252a, c_a.f252a) && this.f253b == c_a.f253b && this.f254c == c_a.f254c && this.f255d == c_a.f255d && this.f256e == c_a.f256e && k.b(this.f257f, c_a.f257f);
    }

    /* renamed from: f */
    public final List<d0> m1028f() {
        return this.f257f;
    }

    public int hashCode() {
        List<Integer> list = this.f252a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        int i2 = this.f253b;
        int i3 = this.f254c;
        int i4 = this.f255d;
        int i5 = this.f256e;
        List<d0> list2 = this.f257f;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (((((((((hashCode * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i;
    }

    public String toString() {
        return "CallStats(blockedByDay=" + this.f252a + ", blockedSpam=" + this.f253b + ", blockedFraud=" + this.f254c + ", blockedBlockList=" + this.f255d + ", blockedPrivate=" + this.f256e + ", recentlyBlocked=" + this.f257f + ")";
    }
}
