package p459j.p460a.p515i0.p516a.p517n;

import android.content.Context;
import android.view.View;
import androidx.annotation.ColorRes;
import java.util.List;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0007\u0018�� \u00032\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\b"}, m815d2 = {"Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract;", "", "()V", "Companion", "DbExpiredStatus", "NumberItemInfo", "Presenter", "View", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i0.a.n.b */
/* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/b.class */
public final class C12441b {

    /* renamed from: a */
    public static final int f28039a = 0;

    /* renamed from: c */
    public static final C12442a f28041c = new C12442a(null);

    /* renamed from: b */
    public static final int f28040b = 1;

    /* renamed from: j.a.i0.a.n.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/b$a.class */
    public static final class C12442a {
        public C12442a() {
        }

        public /* synthetic */ C12442a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final int m6159a() {
            return C12441b.f28040b;
        }

        /* renamed from: b */
        public final int m6158b() {
            return C12441b.f28039a;
        }
    }

    /* renamed from: j.a.i0.a.n.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/b$b.class */
    public static final class C12443b {

        /* renamed from: a */
        public final boolean f28042a;

        /* renamed from: b */
        public final boolean f28043b;

        public C12443b(boolean z, boolean z2) {
            this.f28042a = z;
            this.f28043b = z2;
        }

        /* renamed from: a */
        public final boolean m6157a() {
            return this.f28043b;
        }

        /* renamed from: b */
        public final boolean m6156b() {
            return this.f28042a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12443b)) {
                return false;
            }
            C12443b bVar = (C12443b) obj;
            if (!(this.f28042a == bVar.f28042a)) {
                return false;
            }
            return this.f28043b == bVar.f28043b;
        }

        public int hashCode() {
            boolean z = this.f28042a;
            int i = 1;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            boolean z3 = this.f28043b;
            if (!z3) {
                i = z3 ? 1 : 0;
            }
            int i2 = z2 ? 1 : 0;
            int i3 = z2 ? 1 : 0;
            return (i2 * 31) + i;
        }

        public String toString() {
            return "DbExpiredStatus(isWarning=" + this.f28042a + ", showNeverUpdated=" + this.f28043b + ")";
        }
    }

    /* renamed from: j.a.i0.a.n.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/b$c.class */
    public static final class C12444c {

        /* renamed from: a */
        public final int f28044a;

        /* renamed from: b */
        public final boolean f28045b;

        /* renamed from: c */
        public final int f28046c;

        /* renamed from: d */
        public final String f28047d;

        /* renamed from: e */
        public final int f28048e;

        /* renamed from: f */
        public final String f28049f;

        /* renamed from: g */
        public final String f28050g;

        /* renamed from: h */
        public final String f28051h;

        /* renamed from: i */
        public final String f28052i;

        /* renamed from: j */
        public final String f28053j;

        /* renamed from: k */
        public final boolean f28054k;

        /* renamed from: l */
        public final boolean f28055l;

        /* renamed from: m */
        public final boolean f28056m;

        public C12444c(int i, boolean z, int i2, String str, @ColorRes int i3, String str2, String str3, String str4, String str5, String str6, boolean z2, boolean z3, boolean z4) {
            C15149k.m377b(str, "title");
            C15149k.m377b(str2, "itemLeftName");
            C15149k.m377b(str3, "itemLeftCount");
            C15149k.m377b(str4, "itemRightName");
            C15149k.m377b(str5, "itemRightCount");
            C15149k.m377b(str6, "ctaTitle");
            this.f28044a = i;
            this.f28045b = z;
            this.f28046c = i2;
            this.f28047d = str;
            this.f28048e = i3;
            this.f28049f = str2;
            this.f28050g = str3;
            this.f28051h = str4;
            this.f28052i = str5;
            this.f28053j = str6;
            this.f28054k = z2;
            this.f28055l = z3;
            this.f28056m = z4;
        }

        /* renamed from: a */
        public final int m6155a() {
            return this.f28048e;
        }

        /* renamed from: b */
        public final String m6154b() {
            return this.f28053j;
        }

        /* renamed from: c */
        public final int m6153c() {
            return this.f28046c;
        }

        /* renamed from: d */
        public final String m6152d() {
            return this.f28050g;
        }

        /* renamed from: e */
        public final String m6151e() {
            return this.f28049f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C12444c)) {
                return false;
            }
            C12444c cVar = (C12444c) obj;
            if (!(this.f28044a == cVar.f28044a)) {
                return false;
            }
            if (!(this.f28045b == cVar.f28045b)) {
                return false;
            }
            if (!(this.f28046c == cVar.f28046c) || !C15149k.m384a((Object) this.f28047d, (Object) cVar.f28047d)) {
                return false;
            }
            if (!(this.f28048e == cVar.f28048e) || !C15149k.m384a((Object) this.f28049f, (Object) cVar.f28049f) || !C15149k.m384a((Object) this.f28050g, (Object) cVar.f28050g) || !C15149k.m384a((Object) this.f28051h, (Object) cVar.f28051h) || !C15149k.m384a((Object) this.f28052i, (Object) cVar.f28052i) || !C15149k.m384a((Object) this.f28053j, (Object) cVar.f28053j)) {
                return false;
            }
            if (!(this.f28054k == cVar.f28054k)) {
                return false;
            }
            if (!(this.f28055l == cVar.f28055l)) {
                return false;
            }
            return this.f28056m == cVar.f28056m;
        }

        /* renamed from: f */
        public final String m6150f() {
            return this.f28052i;
        }

        /* renamed from: g */
        public final String m6149g() {
            return this.f28051h;
        }

        /* renamed from: h */
        public final String m6148h() {
            return this.f28047d;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            hashCode = Integer.valueOf(this.f28044a).hashCode();
            boolean z = this.f28045b;
            int i = z ? 1 : 0;
            if (z) {
                i = 1;
            }
            hashCode2 = Integer.valueOf(this.f28046c).hashCode();
            String str = this.f28047d;
            int i2 = 0;
            int hashCode4 = str != null ? str.hashCode() : 0;
            hashCode3 = Integer.valueOf(this.f28048e).hashCode();
            String str2 = this.f28049f;
            int hashCode5 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f28050g;
            int hashCode6 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f28051h;
            int hashCode7 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f28052i;
            int hashCode8 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f28053j;
            if (str6 != null) {
                i2 = str6.hashCode();
            }
            boolean z2 = this.f28054k;
            int i3 = z2 ? 1 : 0;
            if (z2) {
                i3 = 1;
            }
            boolean z3 = this.f28055l;
            int i4 = z3 ? 1 : 0;
            if (z3) {
                i4 = 1;
            }
            boolean z4 = this.f28056m;
            int i5 = z4 ? 1 : 0;
            if (z4) {
                i5 = 1;
            }
            return (((((((((((((((((((((((hashCode * 31) + i) * 31) + hashCode2) * 31) + hashCode4) * 31) + hashCode3) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5;
        }

        /* renamed from: i */
        public final int m6147i() {
            return this.f28044a;
        }

        /* renamed from: j */
        public final boolean m6146j() {
            return this.f28054k;
        }

        /* renamed from: k */
        public final boolean m6145k() {
            return this.f28055l;
        }

        /* renamed from: l */
        public final boolean m6144l() {
            return this.f28056m;
        }

        /* renamed from: m */
        public final boolean m6143m() {
            return this.f28045b;
        }

        public String toString() {
            return "NumberItemInfo(type=" + this.f28044a + ", isWarning=" + this.f28045b + ", imgRes=" + this.f28046c + ", title=" + this.f28047d + ", commonBgColorRes=" + this.f28048e + ", itemLeftName=" + this.f28049f + ", itemLeftCount=" + this.f28050g + ", itemRightName=" + this.f28051h + ", itemRightCount=" + this.f28052i + ", ctaTitle=" + this.f28053j + ", isCtaVisible=" + this.f28054k + ", isItemRightDisable=" + this.f28055l + ", isItemRightVisible=" + this.f28056m + ")";
        }
    }

    /* renamed from: j.a.i0.a.n.b$d */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/b$d.class */
    public interface AbstractC12445d {
    }

    /* renamed from: j.a.i0.a.n.b$e */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/b$e.class */
    public interface AbstractC12446e {
        /* renamed from: a */
        Context mo6137a();

        /* renamed from: a */
        void mo6136a(View view, int i, List<String> list);

        /* renamed from: a */
        void mo6134a(C12443b bVar);

        /* renamed from: b */
        void mo6130b(String str);

        /* renamed from: c */
        void mo6129c(boolean z);

        /* renamed from: d */
        void mo6128d(List<C12444c> list);

        /* renamed from: n */
        void mo6127n();

        /* renamed from: s */
        void mo6126s();
    }
}
