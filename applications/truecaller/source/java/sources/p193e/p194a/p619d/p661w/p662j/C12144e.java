package p193e.p194a.p619d.p661w.p662j;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11387c0;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.action.CollectPeerHistoryImpl$registerCallHistory$1", f = "CollectPeerHistory.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.w.j.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/e.class */
public final class C12144e extends i implements p<AbstractC11387c0.C11388a<C11593e>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35489e;

    /* renamed from: f */
    public final /* synthetic */ C12146f f35490f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12144e(C12146f c12146f, d dVar) {
        super(2, dVar);
        this.f35490f = c12146f;
    }

    /* renamed from: i */
    public final d<s> m23566i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12144e c12144e = new C12144e(this.f35490f, dVar);
        c12144e.f35489e = obj;
        return c12144e;
    }

    /* renamed from: k */
    public final Object m23565k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12146f c12146f = this.f35490f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        Collection<C11593e> collection = ((AbstractC11387c0.C11388a) obj).f33453a;
        Objects.requireNonNull(c12146f);
        for (C11593e c11593e : collection) {
            LinkedHashMap<Integer, k<Integer, C11593e>> linkedHashMap = c12146f.f35493a;
            linkedHashMap.remove(Integer.valueOf(c11593e.f33990a));
            linkedHashMap.put(Integer.valueOf(c11593e.f33990a), new k<>(Integer.valueOf(c12146f.f35494b), c11593e));
            c12146f.f35494b++;
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m23564s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC11387c0.C11388a c11388a = (AbstractC11387c0.C11388a) this.f35489e;
        C12146f c12146f = this.f35490f;
        Collection<C11593e> collection = c11388a.f33453a;
        Objects.requireNonNull(c12146f);
        for (C11593e c11593e : collection) {
            LinkedHashMap<Integer, k<Integer, C11593e>> linkedHashMap = c12146f.f35493a;
            linkedHashMap.remove(Integer.valueOf(c11593e.f33990a));
            linkedHashMap.put(Integer.valueOf(c11593e.f33990a), new k<>(Integer.valueOf(c12146f.f35494b), c11593e));
            c12146f.f35494b++;
        }
        return s.a;
    }
}
