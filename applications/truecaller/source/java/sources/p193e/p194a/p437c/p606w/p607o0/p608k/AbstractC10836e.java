package p193e.p194a.p437c.p606w.p607o0.p608k;

import com.truecaller.insights.models.updates.UpdateCategory;
import com.truecaller.insights.smartcards.SmartCardCategory;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.w.o0.k.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/k/e.class */
public abstract class AbstractC10836e {

    /* renamed from: e.a.c.w.o0.k.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/k/e$a.class */
    public static final class C10837a extends AbstractC10836e {

        /* renamed from: a */
        public final SmartCardCategory f32186a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10837a(SmartCardCategory smartCardCategory) {
            super(null);
            l.e(smartCardCategory, "cardCategory");
            this.f32186a = smartCardCategory;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10837a) && l.a(this.f32186a, ((C10837a) obj).f32186a);
            }
            return true;
        }

        public int hashCode() {
            SmartCardCategory smartCardCategory = this.f32186a;
            return smartCardCategory != null ? smartCardCategory.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ByCardCategory(cardCategory=");
            m8728C.append(this.f32186a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.w.o0.k.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/k/e$b.class */
    public static final class C10838b extends AbstractC10836e {

        /* renamed from: a */
        public final String f32187a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10838b(String str) {
            super(null);
            l.e(str, "grammar");
            this.f32187a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10838b) && l.a(this.f32187a, ((C10838b) obj).f32187a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f32187a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("ByGrammar(grammar="), this.f32187a, ")");
        }
    }

    /* renamed from: e.a.c.w.o0.k.e$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/k/e$c.class */
    public static final class C10839c extends AbstractC10836e {

        /* renamed from: a */
        public final String f32188a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10839c(String str) {
            super(null);
            l.e(str, "senderId");
            this.f32188a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10839c) && l.a(this.f32188a, ((C10839c) obj).f32188a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f32188a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("BySender(senderId="), this.f32188a, ")");
        }
    }

    /* renamed from: e.a.c.w.o0.k.e$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/k/e$d.class */
    public static final class C10840d extends AbstractC10836e {

        /* renamed from: a */
        public final UpdateCategory f32189a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10840d(UpdateCategory updateCategory) {
            super(null);
            l.e(updateCategory, "updateCategory");
            this.f32189a = updateCategory;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10840d) && l.a(this.f32189a, ((C10840d) obj).f32189a);
            }
            return true;
        }

        public int hashCode() {
            UpdateCategory updateCategory = this.f32189a;
            return updateCategory != null ? updateCategory.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ByUpdateCategory(updateCategory=");
            m8728C.append(this.f32189a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC10836e() {
    }

    public AbstractC10836e(f fVar) {
    }
}
