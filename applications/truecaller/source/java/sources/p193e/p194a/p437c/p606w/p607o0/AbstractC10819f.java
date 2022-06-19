package p193e.p194a.p437c.p606w.p607o0;

import com.truecaller.insights.repository.filters.InfoCardType;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p589j.C10611l;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.w.o0.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/f.class */
public abstract class AbstractC10819f {

    /* renamed from: e.a.c.w.o0.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/f$a.class */
    public static final class C10820a extends AbstractC10819f {

        /* renamed from: a */
        public final InfoCardType f32131a;

        /* renamed from: b */
        public final List<C10611l> f32132b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10820a(InfoCardType infoCardType, List<C10611l> list) {
            super(null);
            l.e(infoCardType, "infoCardType");
            this.f32131a = infoCardType;
            this.f32132b = list;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10820a)) {
                    return false;
                }
                C10820a c10820a = (C10820a) obj;
                return l.a(this.f32131a, c10820a.f32131a) && l.a(this.f32132b, c10820a.f32132b);
            }
            return true;
        }

        public int hashCode() {
            InfoCardType infoCardType = this.f32131a;
            int i = 0;
            int hashCode = infoCardType != null ? infoCardType.hashCode() : 0;
            List<C10611l> list = this.f32132b;
            if (list != null) {
                i = list.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SenderFilterCheck(infoCardType=");
            m8728C.append(this.f32131a);
            m8728C.append(", filters=");
            return C22128a.m8602l(m8728C, this.f32132b, ")");
        }
    }

    public AbstractC10819f(f fVar) {
    }
}
