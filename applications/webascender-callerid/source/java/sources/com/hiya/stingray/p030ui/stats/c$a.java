package com.hiya.stingray.p030ui.stats;

import com.hiya.stingray.t.d0;
import java.util.List;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.stats.c$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/c$a.class */
public final class c$a {

    /* renamed from: a */
    private final List<Integer> f4931a;

    /* renamed from: b */
    private final int f4932b;

    /* renamed from: c */
    private final int f4933c;

    /* renamed from: d */
    private final int f4934d;

    /* renamed from: e */
    private final int f4935e;

    /* renamed from: f */
    private final List<d0> f4936f;

    public c$a() {
        this(null, 0, 0, 0, 0, null, 63, null);
    }

    public c$a(List<Integer> list, int i, int i2, int i3, int i4, List<? extends d0> list2) {
        k.g(list, "blockedByDay");
        k.g(list2, "recentlyBlocked");
        this.f4931a = list;
        this.f4932b = i;
        this.f4933c = i2;
        this.f4934d = i3;
        this.f4935e = i4;
        this.f4936f = list2;
    }

    public /* synthetic */ c$a(List list, int i, int i2, int i3, int i4, List list2, int i5, g gVar) {
        this((i5 & 1) != 0 ? kotlin.s.k.g() : list, (i5 & 2) != 0 ? 0 : i, (i5 & 4) != 0 ? 0 : i2, (i5 & 8) != 0 ? 0 : i3, (i5 & 16) != 0 ? 0 : i4, (i5 & 32) != 0 ? kotlin.s.k.g() : list2);
    }

    /* renamed from: a */
    public final int m1033a() {
        return this.f4934d;
    }

    /* renamed from: b */
    public final List<Integer> m1032b() {
        return this.f4931a;
    }

    /* renamed from: c */
    public final int m1031c() {
        return this.f4933c;
    }

    /* renamed from: d */
    public final int m1030d() {
        return this.f4935e;
    }

    /* renamed from: e */
    public final int m1029e() {
        return this.f4932b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof c$a)) {
                return false;
            }
            c$a c_a = (c$a) obj;
            return k.b(this.f4931a, c_a.f4931a) && this.f4932b == c_a.f4932b && this.f4933c == c_a.f4933c && this.f4934d == c_a.f4934d && this.f4935e == c_a.f4935e && k.b(this.f4936f, c_a.f4936f);
        }
        return true;
    }

    /* renamed from: f */
    public final List<d0> m1028f() {
        return this.f4936f;
    }

    public int hashCode() {
        List<Integer> list = this.f4931a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        int i2 = this.f4932b;
        int i3 = this.f4933c;
        int i4 = this.f4934d;
        int i5 = this.f4935e;
        List<d0> list2 = this.f4936f;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (((((((((hashCode * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i;
    }

    public String toString() {
        return "CallStats(blockedByDay=" + this.f4931a + ", blockedSpam=" + this.f4932b + ", blockedFraud=" + this.f4933c + ", blockedBlockList=" + this.f4934d + ", blockedPrivate=" + this.f4935e + ", recentlyBlocked=" + this.f4936f + ")";
    }
}
