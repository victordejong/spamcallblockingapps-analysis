package p131c.p161d.p282e.p289l.p290d.p307q;
/* renamed from: c.d.e.l.d.q.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/q/b.class */
public class C5448b implements AbstractC5450d {

    /* renamed from: a */
    public final int f18426a;

    public C5448b(int i) {
        this.f18426a = i;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p307q.AbstractC5450d
    /* renamed from: a */
    public StackTraceElement[] mo23758a(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int i = this.f18426a;
        if (length <= i) {
            return stackTraceElementArr;
        }
        int i2 = i / 2;
        int i3 = i - i2;
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[i];
        System.arraycopy(stackTraceElementArr, 0, stackTraceElementArr2, 0, i3);
        System.arraycopy(stackTraceElementArr, stackTraceElementArr.length - i2, stackTraceElementArr2, i3, i2);
        return stackTraceElementArr2;
    }
}
