package p131c.p161d.p282e.p352w.p353o;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Date;
/* renamed from: c.d.e.w.o.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/i.class */
public final /* synthetic */ class C6092i implements Continuation {

    /* renamed from: a */
    public final C6094k f19568a;

    /* renamed from: b */
    public final Date f19569b;

    public C6092i(C6094k kVar, Date date) {
        this.f19568a = kVar;
        this.f19569b = date;
    }

    /* renamed from: a */
    public static Continuation m22078a(C6094k kVar, Date date) {
        return new C6092i(kVar, date);
    }

    @Override // com.google.android.gms.tasks.Continuation
    /* renamed from: a */
    public Object mo8621a(Task task) {
        this.f19568a.m22065a(task, this.f19569b);
        return task;
    }
}
