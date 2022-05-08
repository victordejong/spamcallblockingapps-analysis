package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import android.database.sqlite.SQLiteDatabase;
import p081h.p203i.p204a.p206b.p209j.AbstractC6571h;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0;
/* renamed from: h.i.a.b.j.y.k.w */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/w.class */
public final /* synthetic */ class C6693w implements C6656b0.AbstractC6658b {

    /* renamed from: a */
    public final C6656b0 f16576a;

    /* renamed from: b */
    public final AbstractC6580m f16577b;

    /* renamed from: c */
    public final AbstractC6571h f16578c;

    public C6693w(C6656b0 b0Var, AbstractC6580m mVar, AbstractC6571h hVar) {
        this.f16576a = b0Var;
        this.f16577b = mVar;
        this.f16578c = hVar;
    }

    /* renamed from: a */
    public static C6656b0.AbstractC6658b m22067a(C6656b0 b0Var, AbstractC6580m mVar, AbstractC6571h hVar) {
        return new C6693w(b0Var, mVar, hVar);
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0.AbstractC6658b
    public Object apply(Object obj) {
        return C6656b0.m22155a(this.f16576a, this.f16577b, this.f16578c, (SQLiteDatabase) obj);
    }
}
