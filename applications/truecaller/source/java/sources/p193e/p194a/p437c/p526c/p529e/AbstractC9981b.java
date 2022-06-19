package p193e.p194a.p437c.p526c.p529e;

import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10553h;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.c.e.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/e/b.class */
public abstract class AbstractC9981b {

    /* renamed from: e.a.c.c.e.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/e/b$a.class */
    public static final class C9982a extends AbstractC9981b {

        /* renamed from: a */
        public final int f29752a;

        /* renamed from: b */
        public final Map<AbstractC10553h, Integer> f29753b;

        /* renamed from: c */
        public final List<Throwable> f29754c;

        /* renamed from: d */
        public final String f29755d;

        /* renamed from: e */
        public final int f29756e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C9982a(int i, Map<AbstractC10553h, Integer> map, List<? extends Throwable> list, String str, int i2) {
            super(null);
            l.e(map, "categoryCounts");
            l.e(list, "exceptions");
            this.f29752a = i;
            this.f29753b = map;
            this.f29754c = list;
            this.f29755d = str;
            this.f29756e = i2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9982a)) {
                    return false;
                }
                C9982a c9982a = (C9982a) obj;
                return this.f29752a == c9982a.f29752a && l.a(this.f29753b, c9982a.f29753b) && l.a(this.f29754c, c9982a.f29754c) && l.a(this.f29755d, c9982a.f29755d) && this.f29756e == c9982a.f29756e;
            }
            return true;
        }

        public int hashCode() {
            int i = this.f29752a;
            Map<AbstractC10553h, Integer> map = this.f29753b;
            int i2 = 0;
            int hashCode = map != null ? map.hashCode() : 0;
            List<Throwable> list = this.f29754c;
            int hashCode2 = list != null ? list.hashCode() : 0;
            String str = this.f29755d;
            if (str != null) {
                i2 = str.hashCode();
            }
            return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + this.f29756e;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ParseTransactionStats(messageCount=");
            m8728C.append(this.f29752a);
            m8728C.append(", categoryCounts=");
            m8728C.append(this.f29753b);
            m8728C.append(", exceptions=");
            m8728C.append(this.f29754c);
            m8728C.append(", lastMessageId=");
            m8728C.append(this.f29755d);
            m8728C.append(", rawMessageCount=");
            return C22128a.m8697J2(m8728C, this.f29756e, ")");
        }
    }

    public AbstractC9981b(f fVar) {
    }
}
