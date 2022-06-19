package p193e.p194a.p437c.p598v.p603h;

import com.truecaller.insights.reminders.models.DeeplinkActionType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.v.h.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/h/c.class */
public abstract class AbstractC10734c {

    /* renamed from: e.a.c.v.h.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/v/h/c$a.class */
    public static final class C10735a extends AbstractC10734c {

        /* renamed from: a */
        public final AbstractC10730a f31891a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10735a(AbstractC10730a abstractC10730a) {
            super(null);
            l.e(abstractC10730a, "concreteActionType");
            this.f31891a = abstractC10730a;
        }

        @Override // p193e.p194a.p437c.p598v.p603h.AbstractC10734c
        /* renamed from: a */
        public String mo25678a() {
            return "com.truecaller.insights.reminders.action.concrete";
        }
    }

    /* renamed from: e.a.c.v.h.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/v/h/c$b.class */
    public static final class C10736b extends AbstractC10734c {

        /* renamed from: a */
        public final DeeplinkActionType f31892a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10736b(DeeplinkActionType deeplinkActionType) {
            super(null);
            l.e(deeplinkActionType, "type");
            this.f31892a = deeplinkActionType;
        }

        @Override // p193e.p194a.p437c.p598v.p603h.AbstractC10734c
        /* renamed from: a */
        public String mo25678a() {
            return "com.truecaller.insights.reminders.action.deeplink";
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C10736b) && l.a(this.f31892a, ((C10736b) obj).f31892a);
            }
            return true;
        }

        public int hashCode() {
            DeeplinkActionType deeplinkActionType = this.f31892a;
            return deeplinkActionType != null ? deeplinkActionType.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Deeplink(type=");
            m8728C.append(this.f31892a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC10734c(f fVar) {
    }

    /* renamed from: a */
    public abstract String mo25678a();
}
