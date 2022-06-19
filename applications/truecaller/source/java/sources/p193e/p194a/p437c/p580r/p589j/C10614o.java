package p193e.p194a.p437c.p580r.p589j;

import com.truecaller.insights.models.smartcards.CardFeedBackType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/o.class */
public final class C10614o {

    /* renamed from: a */
    public final CardFeedBackType f31653a;

    /* renamed from: c */
    public static final C10615a f31652c = new C10615a(null);

    /* renamed from: b */
    public static final C10614o f31651b = new C10614o(null);

    /* renamed from: e.a.c.r.j.o$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/o$a.class */
    public static final class C10615a {
        public C10615a(f fVar) {
        }
    }

    public C10614o(CardFeedBackType cardFeedBackType) {
        this.f31653a = cardFeedBackType;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C10614o) && l.a(this.f31653a, ((C10614o) obj).f31653a);
        }
        return true;
    }

    public int hashCode() {
        CardFeedBackType cardFeedBackType = this.f31653a;
        return cardFeedBackType != null ? cardFeedBackType.hashCode() : 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InfoCardActionState(givenFeedback=");
        m8728C.append(this.f31653a);
        m8728C.append(")");
        return m8728C.toString();
    }
}
