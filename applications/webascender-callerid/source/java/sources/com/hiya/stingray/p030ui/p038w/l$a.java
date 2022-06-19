package com.hiya.stingray.p030ui.p038w;

import com.hiya.stingray.t.h1.d;
import com.hiya.stingray.t.h1.i;
import java.util.List;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.w.l$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/l$a.class */
public final class l$a {

    /* renamed from: a */
    private final List<d> f4970a;

    /* renamed from: b */
    private final boolean f4971b;

    /* renamed from: c */
    private final i f4972c;

    public l$a(List<d> list, boolean z, i iVar) {
        k.g(iVar, "place");
        this.f4970a = list;
        this.f4971b = z;
        this.f4972c = iVar;
    }

    /* renamed from: a */
    public final List<d> m994a() {
        return this.f4970a;
    }

    /* renamed from: b */
    public final i m993b() {
        return this.f4972c;
    }

    /* renamed from: c */
    public final boolean m992c() {
        return this.f4971b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof l$a)) {
                return false;
            }
            l$a l_a = (l$a) obj;
            return k.b(this.f4970a, l_a.f4970a) && this.f4971b == l_a.f4971b && k.b(this.f4972c, l_a.f4972c);
        }
        return true;
    }

    public int hashCode() {
        List<d> list = this.f4970a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        boolean z = this.f4971b;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        i iVar = this.f4972c;
        if (iVar != null) {
            i = iVar.hashCode();
        }
        return (((hashCode * 31) + (z2 ? 1 : 0)) * 31) + i;
    }

    public String toString() {
        return "BusinessesQueryResult(businesses=" + this.f4970a + ", queryChanged=" + this.f4971b + ", place=" + this.f4972c + ")";
    }
}
