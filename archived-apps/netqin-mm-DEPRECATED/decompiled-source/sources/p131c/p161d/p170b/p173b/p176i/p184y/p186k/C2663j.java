package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import android.database.sqlite.SQLiteDatabase;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0;
/* renamed from: c.d.b.b.i.y.k.j */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/j.class */
public final /* synthetic */ class C2663j implements C2639b0.AbstractC2641b {

    /* renamed from: a */
    public final long f9792a;

    /* renamed from: b */
    public final AbstractC2571m f9793b;

    public C2663j(long j, AbstractC2571m mVar) {
        this.f9792a = j;
        this.f9793b = mVar;
    }

    /* renamed from: a */
    public static C2639b0.AbstractC2641b m29316a(long j, AbstractC2571m mVar) {
        return new C2663j(j, mVar);
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0.AbstractC2641b
    public Object apply(Object obj) {
        return C2639b0.m29399a(this.f9792a, this.f9793b, (SQLiteDatabase) obj);
    }
}
