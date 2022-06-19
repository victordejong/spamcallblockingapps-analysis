package p193e.p194a.p437c.p538g.p546y;

import android.database.Cursor;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.insights.categorizer.datasource.CategorizerDataSourceImpl$getAllHamKeywordMeta$3", f = "CategorizerDataSource.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.g.y.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/d.class */
public final class C10213d extends i implements q<g<? super String>, Throwable, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ Cursor f30295e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10213d(Cursor cursor, d dVar) {
        super(3, dVar);
        this.f30295e = cursor;
    }

    /* renamed from: h */
    public final Object m26589h(Object obj, Object obj2, Object obj3) {
        Throwable th = (Throwable) obj2;
        d dVar = (d) obj3;
        l.e((g) obj, "$this$create");
        l.e(dVar, "continuation");
        Cursor cursor = this.f30295e;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        cursor.close();
        return sVar;
    }

    /* renamed from: s */
    public final Object m26588s(Object obj) {
        C25225a.m3932a3(obj);
        this.f30295e.close();
        return s.a;
    }
}
