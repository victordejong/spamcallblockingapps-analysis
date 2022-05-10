package p131c.p161d.p282e.p289l.p290d.p307q;
/* renamed from: c.d.e.l.d.q.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/q/a.class */
public class C5447a implements AbstractC5450d {

    /* renamed from: a */
    public final int f18423a;

    /* renamed from: b */
    public final AbstractC5450d[] f18424b;

    /* renamed from: c */
    public final C5448b f18425c;

    public C5447a(int i, AbstractC5450d... dVarArr) {
        this.f18423a = i;
        this.f18424b = dVarArr;
        this.f18425c = new C5448b(i);
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p307q.AbstractC5450d
    /* renamed from: a */
    public StackTraceElement[] mo23758a(StackTraceElement[] stackTraceElementArr) {
        AbstractC5450d[] dVarArr;
        if (stackTraceElementArr.length <= this.f18423a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (AbstractC5450d dVar : this.f18424b) {
            if (stackTraceElementArr2.length <= this.f18423a) {
                break;
            }
            stackTraceElementArr2 = dVar.mo23758a(stackTraceElementArr);
        }
        StackTraceElement[] stackTraceElementArr3 = stackTraceElementArr2;
        if (stackTraceElementArr2.length > this.f18423a) {
            stackTraceElementArr3 = this.f18425c.mo23758a(stackTraceElementArr2);
        }
        return stackTraceElementArr3;
    }
}
