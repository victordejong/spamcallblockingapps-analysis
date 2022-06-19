package p193e.p194a.p947k.p973n.p975e;

import com.truecaller.videocallerid.p186db.hiddencontacts.HiddenContact;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.hiddencontacts.HiddenContactRepositoryImpl$delete$2", f = "HiddenContactRepository.kt", l = {51}, m = "invokeSuspend")
/* renamed from: e.a.k.n.e.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/e/c.class */
public final class C16175c extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f45639e;

    /* renamed from: f */
    public final /* synthetic */ C16167b f45640f;

    /* renamed from: g */
    public final /* synthetic */ HiddenContact f45641g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16175c(C16167b c16167b, HiddenContact hiddenContact, d dVar) {
        super(1, dVar);
        this.f45640f = c16167b;
        this.f45641g = hiddenContact;
    }

    /* renamed from: d */
    public final Object m17766d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16175c(this.f45640f, this.f45641g, dVar).m17764s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17765l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16175c(this.f45640f, this.f45641g, dVar);
    }

    /* renamed from: s */
    public final Object m17764s(Object obj) {
        a aVar = a.a;
        int i = this.f45639e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16177e abstractC16177e = this.f45640f.f45617a;
            HiddenContact hiddenContact = this.f45641g;
            this.f45639e = 1;
            if (abstractC16177e.mo17760a(hiddenContact, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
