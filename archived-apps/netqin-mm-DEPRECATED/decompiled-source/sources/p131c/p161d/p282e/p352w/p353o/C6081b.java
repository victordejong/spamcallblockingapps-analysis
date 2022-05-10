package p131c.p161d.p282e.p352w.p353o;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
/* renamed from: c.d.e.w.o.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/b.class */
public final /* synthetic */ class C6081b implements SuccessContinuation {

    /* renamed from: a */
    public final C6084e f19541a;

    /* renamed from: b */
    public final boolean f19542b;

    /* renamed from: c */
    public final C6087f f19543c;

    public C6081b(C6084e eVar, boolean z, C6087f fVar) {
        this.f19541a = eVar;
        this.f19542b = z;
        this.f19543c = fVar;
    }

    /* renamed from: a */
    public static SuccessContinuation m22108a(C6084e eVar, boolean z, C6087f fVar) {
        return new C6081b(eVar, z, fVar);
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    /* renamed from: a */
    public Task mo8618a(Object obj) {
        return C6084e.m22102a(this.f19541a, this.f19542b, this.f19543c, (Void) obj);
    }
}
