package p131c.p161d.p282e.p352w.p353o;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* renamed from: c.d.e.w.o.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/g.class */
public final /* synthetic */ class C6090g implements Continuation {

    /* renamed from: a */
    public final C6094k f19562a;

    /* renamed from: b */
    public final long f19563b;

    public C6090g(C6094k kVar, long j) {
        this.f19562a = kVar;
        this.f19563b = j;
    }

    /* renamed from: a */
    public static Continuation m22080a(C6094k kVar, long j) {
        return new C6090g(kVar, j);
    }

    @Override // com.google.android.gms.tasks.Continuation
    /* renamed from: a */
    public Object mo8621a(Task task) {
        Task a;
        a = this.f19562a.m22066a(task, this.f19563b);
        return a;
    }
}
