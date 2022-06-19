package p193e.p194a.p372b0.p416j;

import java.io.File;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19250o;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.common.country.CountyRepositoryDelegate$initializeFromFile$1$1$1$1", f = "CountyRepositoryDelegate.kt", l = {104}, m = "invokeSuspend")
/* renamed from: e.a.b0.j.e */
/* loaded from: classes7-dex2jar.jar:e/a/b0/j/e.class */
public final class C8489e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f26252e;

    /* renamed from: f */
    public final /* synthetic */ C8476a f26253f;

    /* renamed from: g */
    public final /* synthetic */ C8487d f26254g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8489e(d dVar, C8476a c8476a, C8487d c8487d) {
        super(2, dVar);
        this.f26253f = c8476a;
        this.f26254g = c8487d;
    }

    /* renamed from: i */
    public final d<s> m28457i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8489e(dVar, this.f26253f, this.f26254g);
    }

    /* renamed from: k */
    public final Object m28456k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8489e(dVar, this.f26253f, this.f26254g).m28455s(s.a);
    }

    /* renamed from: s */
    public final Object m28455s(Object obj) {
        a aVar = a.a;
        int i = this.f26252e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C8476a c8476a = this.f26253f;
            C8487d c8487d = this.f26254g;
            C19250o c19250o = c8487d.f26249e;
            File filesDir = c8487d.f26247c.getFilesDir();
            l.d(filesDir, "context.filesDir");
            this.f26252e = 1;
            if (c8476a.m28489e(c19250o, filesDir, this) == aVar) {
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
