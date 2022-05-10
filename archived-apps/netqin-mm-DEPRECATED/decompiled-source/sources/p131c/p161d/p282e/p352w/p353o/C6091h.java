package p131c.p161d.p282e.p352w.p353o;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Date;
/* renamed from: c.d.e.w.o.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/h.class */
public final /* synthetic */ class C6091h implements Continuation {

    /* renamed from: a */
    public final C6094k f19564a;

    /* renamed from: b */
    public final Task f19565b;

    /* renamed from: c */
    public final Task f19566c;

    /* renamed from: d */
    public final Date f19567d;

    public C6091h(C6094k kVar, Task task, Task task2, Date date) {
        this.f19564a = kVar;
        this.f19565b = task;
        this.f19566c = task2;
        this.f19567d = date;
    }

    /* renamed from: a */
    public static Continuation m22079a(C6094k kVar, Task task, Task task2, Date date) {
        return new C6091h(kVar, task, task2, date);
    }

    @Override // com.google.android.gms.tasks.Continuation
    /* renamed from: a */
    public Object mo8621a(Task task) {
        return C6094k.m22069a(this.f19564a, this.f19565b, this.f19566c, this.f19567d, task);
    }
}
