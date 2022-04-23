package com.hiya.stingray.p000ui.p008w;

import com.hiya.stingray.t.h1.d;
import com.hiya.stingray.t.h1.i;
import java.util.List;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.w.l$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/l$a.class */
public final class l$a {

    /* renamed from: a */
    private final List<d> f291a;

    /* renamed from: b */
    private final boolean f292b;

    /* renamed from: c */
    private final i f293c;

    public l$a(List<d> list, boolean z, i iVar) {
        k.g(iVar, "place");
        this.f291a = list;
        this.f292b = z;
        this.f293c = iVar;
    }

    /* renamed from: a */
    public final List<d> m994a() {
        return this.f291a;
    }

    /* renamed from: b */
    public final i m993b() {
        return this.f293c;
    }

    /* renamed from: c */
    public final boolean m992c() {
        return this.f292b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l$a)) {
            return false;
        }
        l$a l_a = (l$a) obj;
        return k.b(this.f291a, l_a.f291a) && this.f292b == l_a.f292b && k.b(this.f293c, l_a.f293c);
    }

    public int hashCode() {
        List<d> list = this.f291a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        boolean z = this.f292b;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        i iVar = this.f293c;
        if (iVar != null) {
            i = iVar.hashCode();
        }
        return (((hashCode * 31) + i2) * 31) + i;
    }

    public String toString() {
        return "BusinessesQueryResult(businesses=" + this.f291a + ", queryChanged=" + this.f292b + ", place=" + this.f293c + ")";
    }
}
