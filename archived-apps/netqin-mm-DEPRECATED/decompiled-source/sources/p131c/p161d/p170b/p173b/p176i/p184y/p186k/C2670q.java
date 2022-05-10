package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import android.database.sqlite.SQLiteDatabase;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0;
/* renamed from: c.d.b.b.i.y.k.q */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/q.class */
public final /* synthetic */ class C2670q implements C2639b0.AbstractC2643d {

    /* renamed from: a */
    public final SQLiteDatabase f9803a;

    public C2670q(SQLiteDatabase sQLiteDatabase) {
        this.f9803a = sQLiteDatabase;
    }

    /* renamed from: a */
    public static C2639b0.AbstractC2643d m29309a(SQLiteDatabase sQLiteDatabase) {
        return new C2670q(sQLiteDatabase);
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0.AbstractC2643d
    /* renamed from: a */
    public Object mo29307a() {
        return this.f9803a.beginTransaction();
    }
}
