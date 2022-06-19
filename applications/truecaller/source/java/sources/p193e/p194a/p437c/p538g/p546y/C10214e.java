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
@e(c = "com.truecaller.insights.categorizer.datasource.CategorizerDataSourceImpl$getAllSpamKeywordMeta$2", f = "CategorizerDataSource.kt", l = {68}, m = "invokeSuspend")
/* renamed from: e.a.c.g.y.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/e.class */
public final class C10214e extends i implements p<g<? super String>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f30296e;

    /* renamed from: f */
    public int f30297f;

    /* renamed from: g */
    public final /* synthetic */ Cursor f30298g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10214e(Cursor cursor, d dVar) {
        super(2, dVar);
        this.f30298g = cursor;
    }

    /* renamed from: i */
    public final d<s> m26587i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C10214e c10214e = new C10214e(this.f30298g, dVar);
        c10214e.f30296e = obj;
        return c10214e;
    }

    /* renamed from: k */
    public final Object m26586k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C10214e c10214e = new C10214e(this.f30298g, dVar);
        c10214e.f30296e = obj;
        return c10214e.m26585s(s.a);
    }

    /* renamed from: s */
    public final Object m26585s(Object obj) {
        g gVar;
        a aVar = a.a;
        int i = this.f30297f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            gVar = (g) this.f30296e;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            gVar = (g) this.f30296e;
        }
        while (this.f30298g.moveToNext()) {
            String m13628F1 = C19291g.m13628F1(this.f30298g, "word");
            if (m13628F1 == null) {
                throw new IllegalArgumentException("Keyword cannot be null");
            }
            this.f30296e = gVar;
            this.f30297f = 1;
            if (gVar.a(m13628F1, this) == aVar) {
                return aVar;
            }
        }
        return s.a;
    }
}
