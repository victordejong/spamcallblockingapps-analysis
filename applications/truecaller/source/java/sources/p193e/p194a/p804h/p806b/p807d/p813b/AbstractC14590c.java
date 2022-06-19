package p193e.p194a.p804h.p806b.p807d.p813b;

import com.truecaller.callhistory.data.FilterType;
import com.truecaller.calling.dialer.call_log.data.HistoryEventsScope;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.a.x2.i1;
import s1.w.d;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.h.b.d.b.c */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/d/b/c.class */
public interface AbstractC14590c {

    /* renamed from: e.a.h.b.d.b.c$a */
    /* loaded from: classes3-dex2jar.jar:e/a/h/b/d/b/c$a.class */
    public static final class C14591a {

        /* renamed from: a */
        public final boolean f41926a;

        /* renamed from: b */
        public final boolean f41927b;

        /* renamed from: c */
        public final FilterType f41928c;

        public C14591a(boolean z, boolean z2, FilterType filterType) {
            l.e(filterType, "filter");
            this.f41926a = z;
            this.f41927b = z2;
            this.f41928c = filterType;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C14591a)) {
                    return false;
                }
                C14591a c14591a = (C14591a) obj;
                return this.f41926a == c14591a.f41926a && this.f41927b == c14591a.f41927b && l.a(this.f41928c, c14591a.f41928c);
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f41926a;
            int i = 1;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            boolean z3 = this.f41927b;
            if (!z3) {
                i = z3;
            }
            FilterType filterType = this.f41928c;
            return ((((z2 ? 1 : 0) * 31) + i) * 31) + (filterType != null ? filterType.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("CallHistoryRequest(slim=");
            m8728C.append(this.f41926a);
            m8728C.append(", increasePage=");
            m8728C.append(this.f41927b);
            m8728C.append(", filter=");
            m8728C.append(this.f41928c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.h.b.d.b.c$b */
    /* loaded from: classes3-dex2jar.jar:e/a/h/b/d/b/c$b.class */
    public static abstract class AbstractC14592b {
        public AbstractC14592b() {
        }

        public AbstractC14592b(f fVar) {
        }
    }

    /* renamed from: a */
    boolean m19963a();

    /* renamed from: b */
    void m19962b(List<Long> list, List<Long> list2, HistoryEventsScope historyEventsScope);

    /* renamed from: c */
    i1<AbstractC14592b> m19961c();

    /* renamed from: d */
    boolean m19960d();

    void destroy();

    /* renamed from: e */
    Object m19959e(boolean z, FilterType filterType, Integer num, d<? super List<? extends AbstractC14594i>> dVar);

    /* renamed from: f */
    void m19958f();

    /* renamed from: g */
    void m19957g();

    /* renamed from: h */
    void m19956h(boolean z, boolean z2, FilterType filterType);
}
