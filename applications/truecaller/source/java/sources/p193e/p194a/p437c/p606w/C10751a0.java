package p193e.p194a.p437c.p606w;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.w.a0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/a0.class */
public final class C10751a0 implements AbstractC10859z {

    /* renamed from: a */
    public Set<String> f31939a = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: e.a.c.w.a0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/a0$a.class */
    public static final class C10752a extends m implements l<String, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ Set f31940b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10752a(Set set) {
            super(1);
            this.f31940b = set;
        }

        /* renamed from: d */
        public Object m25667d(Object obj) {
            return Boolean.valueOf(!this.f31940b.contains((String) obj));
        }
    }

    @Override // p193e.p194a.p437c.p606w.AbstractC10859z
    /* renamed from: a */
    public void mo25550a(Set<String> set) {
        s1.z.c.l.e(set, "otpNumbers");
        Set<String> set2 = this.f31939a;
        C10752a c10752a = new C10752a(set);
        s1.z.c.l.e(set2, "$this$removeAll");
        s1.z.c.l.e(c10752a, "predicate");
        i.y(set2, c10752a, true);
        set2.addAll(set);
    }

    @Override // p193e.p194a.p437c.p606w.AbstractC10859z
    /* renamed from: b */
    public Set<String> mo25549b() {
        Set<String> set = this.f31939a;
        s1.z.c.l.d(set, "otpNumbers");
        return set;
    }
}
