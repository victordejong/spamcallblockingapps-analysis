package p131c.p161d.p282e.p289l.p290d.p293h;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* renamed from: c.d.e.l.d.h.b0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/b0.class */
public final /* synthetic */ class C5213b0 implements Continuation {

    /* renamed from: a */
    public final C5217d0 f17895a;

    public C5213b0(C5217d0 d0Var) {
        this.f17895a = d0Var;
    }

    /* renamed from: a */
    public static Continuation m24271a(C5217d0 d0Var) {
        return new C5213b0(d0Var);
    }

    @Override // com.google.android.gms.tasks.Continuation
    /* renamed from: a */
    public Object mo8621a(Task task) {
        boolean a;
        a = this.f17895a.m24265a(task);
        return Boolean.valueOf(a);
    }
}
