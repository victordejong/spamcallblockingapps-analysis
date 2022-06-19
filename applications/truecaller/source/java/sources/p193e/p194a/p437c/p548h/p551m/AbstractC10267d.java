package p193e.p194a.p437c.p548h.p551m;

import com.truecaller.account.network.TokenResponseDto;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.h.m.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/h/m/d.class */
public abstract class AbstractC10267d {

    /* renamed from: e.a.c.h.m.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/h/m/d$a.class */
    public static final class C10268a extends AbstractC10267d {

        /* renamed from: a */
        public final String f30443a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10268a() {
            super(null);
            l.e("im", "value");
            this.f30443a = "im";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10268a(String str, int i) {
            super(null);
            String str2 = (i & 1) != 0 ? "im" : null;
            l.e(str2, "value");
            this.f30443a = str2;
        }

        @Override // p193e.p194a.p437c.p548h.p551m.AbstractC10267d
        /* renamed from: a */
        public String mo26506a() {
            return this.f30443a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10268a) && l.a(this.f30443a, ((C10268a) obj).f30443a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f30443a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("IM(value="), this.f30443a, ")");
        }
    }

    /* renamed from: e.a.c.h.m.d$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/h/m/d$b.class */
    public static final class C10269b extends AbstractC10267d {

        /* renamed from: a */
        public final String f30444a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10269b() {
            super(null);
            l.e("mms", "value");
            this.f30444a = "mms";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10269b(String str, int i) {
            super(null);
            String str2 = (i & 1) != 0 ? "mms" : null;
            l.e(str2, "value");
            this.f30444a = str2;
        }

        @Override // p193e.p194a.p437c.p548h.p551m.AbstractC10267d
        /* renamed from: a */
        public String mo26506a() {
            return this.f30444a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10269b) && l.a(this.f30444a, ((C10269b) obj).f30444a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f30444a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("MMS(value="), this.f30444a, ")");
        }
    }

    /* renamed from: e.a.c.h.m.d$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/h/m/d$c.class */
    public static final class C10270c extends AbstractC10267d {

        /* renamed from: a */
        public final String f30445a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10270c() {
            super(null);
            l.e(TokenResponseDto.METHOD_SMS, "value");
            this.f30445a = TokenResponseDto.METHOD_SMS;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10270c(String str, int i) {
            super(null);
            String str2 = (i & 1) != 0 ? TokenResponseDto.METHOD_SMS : null;
            l.e(str2, "value");
            this.f30445a = str2;
        }

        @Override // p193e.p194a.p437c.p548h.p551m.AbstractC10267d
        /* renamed from: a */
        public String mo26506a() {
            return this.f30445a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10270c) && l.a(this.f30445a, ((C10270c) obj).f30445a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f30445a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("SMS(value="), this.f30445a, ")");
        }
    }

    public AbstractC10267d(f fVar) {
    }

    /* renamed from: a */
    public abstract String mo26506a();
}
