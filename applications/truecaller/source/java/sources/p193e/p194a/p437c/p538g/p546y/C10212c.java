package p193e.p194a.p437c.p538g.p546y;

import android.database.Cursor;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.categorizer.datasource.CategorizerDataSourceImpl$getAllHamKeywordMeta$2", f = "CategorizerDataSource.kt", l = {54}, m = "invokeSuspend")
/* renamed from: e.a.c.g.y.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/c.class */
public final class C10212c extends i implements p<g<? super String>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f30292e;

    /* renamed from: f */
    public int f30293f;

    /* renamed from: g */
    public final /* synthetic */ Cursor f30294g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10212c(Cursor cursor, d dVar) {
        super(2, dVar);
        this.f30294g = cursor;
    }

    /* renamed from: i */
    public final d<s> m26592i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C10212c c10212c = new C10212c(this.f30294g, dVar);
        c10212c.f30292e = obj;
        return c10212c;
    }

    /* renamed from: k */
    public final Object m26591k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C10212c c10212c = new C10212c(this.f30294g, dVar);
        c10212c.f30292e = obj;
        return c10212c.m26590s(s.a);
    }

    /* renamed from: s */
    public final Object m26590s(Object obj) {
        g gVar;
        a aVar = a.a;
        int i = this.f30293f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            gVar = (g) this.f30292e;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            gVar = (g) this.f30292e;
        }
        while (this.f30294g.moveToNext()) {
            String m13628F1 = C19291g.m13628F1(this.f30294g, "word");
            if (m13628F1 == null) {
                throw new IllegalArgumentException("Keyword cannot be null");
            }
            this.f30292e = gVar;
            this.f30293f = 1;
            if (gVar.a(m13628F1, this) == aVar) {
                return aVar;
            }
        }
        return s.a;
    }
}
