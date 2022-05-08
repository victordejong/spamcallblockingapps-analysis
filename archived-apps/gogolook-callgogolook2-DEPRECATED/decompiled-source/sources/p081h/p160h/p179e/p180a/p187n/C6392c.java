package p081h.p160h.p179e.p180a.p187n;

import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018�� \u00132\u00020\u0001:\u0001\u0013B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0007HÆ\u0003J1\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u0014"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/WCNumSearchConfig;", "", "isAutoHitRate", "", "isForceUpdate", "willSearchOnNetwork", "hiteRateLevel", "", "(ZZZI)V", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "", "Companion", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.a.n.c */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/n/c.class */
public final class C6392c {

    /* renamed from: e */
    public static final C6393a f15911e = new C6393a(null);

    /* renamed from: a */
    public boolean f15912a;

    /* renamed from: b */
    public boolean f15913b;

    /* renamed from: c */
    public boolean f15914c;

    /* renamed from: d */
    public int f15915d;

    /* renamed from: h.h.e.a.n.c$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/n/c$a.class */
    public static final class C6393a {
        public C6393a() {
        }

        public /* synthetic */ C6393a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C6392c m22843a() {
            return new C6392c(false, false, false, 0, 15, null);
        }
    }

    public C6392c() {
        this(false, false, false, 0, 15, null);
    }

    public C6392c(boolean z, boolean z2, boolean z3, int i) {
        this.f15912a = z;
        this.f15913b = z2;
        this.f15914c = z3;
        this.f15915d = i;
    }

    public /* synthetic */ C6392c(boolean z, boolean z2, boolean z3, int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? true : z3, (i2 & 8) != 0 ? 2 : i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6392c)) {
            return false;
        }
        C6392c cVar = (C6392c) obj;
        if (!(this.f15912a == cVar.f15912a)) {
            return false;
        }
        if (!(this.f15913b == cVar.f15913b)) {
            return false;
        }
        if (!(this.f15914c == cVar.f15914c)) {
            return false;
        }
        return this.f15915d == cVar.f15915d;
    }

    public int hashCode() {
        boolean z = this.f15912a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f15913b;
        int i2 = z3 ? 1 : 0;
        if (z3) {
            i2 = 1;
        }
        boolean z4 = this.f15914c;
        if (!z4) {
            i = z4 ? 1 : 0;
        }
        int i3 = z2 ? 1 : 0;
        int i4 = z2 ? 1 : 0;
        return (((((i3 * 31) + i2) * 31) + i) * 31) + this.f15915d;
    }

    public String toString() {
        return "WCNumSearchConfig(isAutoHitRate=" + this.f15912a + ", isForceUpdate=" + this.f15913b + ", willSearchOnNetwork=" + this.f15914c + ", hiteRateLevel=" + this.f15915d + ")";
    }
}
