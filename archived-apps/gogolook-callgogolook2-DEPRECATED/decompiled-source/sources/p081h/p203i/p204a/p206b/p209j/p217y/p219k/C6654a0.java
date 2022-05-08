package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import android.database.sqlite.SQLiteDatabase;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0;
/* renamed from: h.i.a.b.j.y.k.a0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/a0.class */
public final /* synthetic */ class C6654a0 implements C6656b0.AbstractC6658b {

    /* renamed from: a */
    public final C6656b0 f16524a;

    /* renamed from: b */
    public final AbstractC6580m f16525b;

    public C6654a0(C6656b0 b0Var, AbstractC6580m mVar) {
        this.f16524a = b0Var;
        this.f16525b = mVar;
    }

    /* renamed from: a */
    public static C6656b0.AbstractC6658b m22168a(C6656b0 b0Var, AbstractC6580m mVar) {
        return new C6654a0(b0Var, mVar);
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0.AbstractC6658b
    public Object apply(Object obj) {
        return C6656b0.m22156a(this.f16524a, this.f16525b, (SQLiteDatabase) obj);
    }
}
