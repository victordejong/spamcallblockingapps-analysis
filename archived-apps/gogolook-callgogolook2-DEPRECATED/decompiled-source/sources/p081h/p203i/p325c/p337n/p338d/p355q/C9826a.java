package p081h.p203i.p325c.p337n.p338d.p355q;
/* renamed from: h.i.c.n.d.q.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/q/a.class */
public class C9826a implements AbstractC9829d {

    /* renamed from: a */
    public final int f22294a;

    /* renamed from: b */
    public final AbstractC9829d[] f22295b;

    /* renamed from: c */
    public final C9827b f22296c;

    public C9826a(int i, AbstractC9829d... dVarArr) {
        this.f22294a = i;
        this.f22295b = dVarArr;
        this.f22296c = new C9827b(i);
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p355q.AbstractC9829d
    /* renamed from: a */
    public StackTraceElement[] mo14121a(StackTraceElement[] stackTraceElementArr) {
        AbstractC9829d[] dVarArr;
        if (stackTraceElementArr.length <= this.f22294a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (AbstractC9829d dVar : this.f22295b) {
            if (stackTraceElementArr2.length <= this.f22294a) {
                break;
            }
            stackTraceElementArr2 = dVar.mo14121a(stackTraceElementArr);
        }
        StackTraceElement[] stackTraceElementArr3 = stackTraceElementArr2;
        if (stackTraceElementArr2.length > this.f22294a) {
            stackTraceElementArr3 = this.f22296c.mo14121a(stackTraceElementArr2);
        }
        return stackTraceElementArr3;
    }
}
