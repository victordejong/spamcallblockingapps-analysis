package p193e.p194a.p437c.p580r.p587h;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17457b2;
import p193e.p194a.p437c.p538g.AbstractC10105a;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.r.h.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/h/f.class */
public abstract class AbstractC10549f {

    /* renamed from: e.a.c.r.h.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/h/f$a.class */
    public static final class C10550a extends AbstractC10549f {

        /* renamed from: a */
        public static final C10550a f31475a = new C10550a();

        public C10550a() {
            super(null);
        }
    }

    /* renamed from: e.a.c.r.h.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/h/f$b.class */
    public static final class C10551b extends AbstractC10549f {

        /* renamed from: a */
        public final C10266c f31476a;

        /* renamed from: b */
        public final AbstractC10553h f31477b;

        /* renamed from: c */
        public final String f31478c;

        /* renamed from: d */
        public final AbstractC10563i f31479d;

        /* renamed from: e */
        public final AbstractC10105a f31480e;

        /* renamed from: f */
        public final C17457b2.C17459b f31481f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10551b(C10266c c10266c, AbstractC10553h abstractC10553h, String str, AbstractC10563i abstractC10563i, AbstractC10105a abstractC10105a, C17457b2.C17459b c17459b) {
            super(null);
            l.e(c10266c, "smsMessage");
            l.e(abstractC10553h, "classification");
            l.e(str, "address");
            l.e(abstractC10563i, "detailedResponse");
            this.f31476a = c10266c;
            this.f31477b = abstractC10553h;
            this.f31478c = str;
            this.f31479d = abstractC10563i;
            this.f31480e = abstractC10105a;
            this.f31481f = c17459b;
        }

        public /* synthetic */ C10551b(C10266c c10266c, AbstractC10553h abstractC10553h, String str, AbstractC10563i abstractC10563i, AbstractC10105a abstractC10105a, C17457b2.C17459b c17459b, int i) {
            this(c10266c, abstractC10553h, str, abstractC10563i, null, null);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10551b)) {
                    return false;
                }
                C10551b c10551b = (C10551b) obj;
                return l.a(this.f31476a, c10551b.f31476a) && l.a(this.f31477b, c10551b.f31477b) && l.a(this.f31478c, c10551b.f31478c) && l.a(this.f31479d, c10551b.f31479d) && l.a(this.f31480e, c10551b.f31480e) && l.a(this.f31481f, c10551b.f31481f);
            }
            return true;
        }

        public int hashCode() {
            C10266c c10266c = this.f31476a;
            int i = 0;
            int hashCode = c10266c != null ? c10266c.hashCode() : 0;
            AbstractC10553h abstractC10553h = this.f31477b;
            int hashCode2 = abstractC10553h != null ? abstractC10553h.hashCode() : 0;
            String str = this.f31478c;
            int hashCode3 = str != null ? str.hashCode() : 0;
            AbstractC10563i abstractC10563i = this.f31479d;
            int hashCode4 = abstractC10563i != null ? abstractC10563i.hashCode() : 0;
            AbstractC10105a abstractC10105a = this.f31480e;
            int hashCode5 = abstractC10105a != null ? abstractC10105a.hashCode() : 0;
            C17457b2.C17459b c17459b = this.f31481f;
            if (c17459b != null) {
                i = c17459b.hashCode();
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ParseResponse(smsMessage=");
            m8728C.append(this.f31476a);
            m8728C.append(", classification=");
            m8728C.append(this.f31477b);
            m8728C.append(", address=");
            m8728C.append(this.f31478c);
            m8728C.append(", detailedResponse=");
            m8728C.append(this.f31479d);
            m8728C.append(", categorizerCategory=");
            m8728C.append(this.f31480e);
            m8728C.append(", logData=");
            m8728C.append(this.f31481f);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC10549f(f fVar) {
    }
}
