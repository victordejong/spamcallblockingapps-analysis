package p193e.p194a.p751f4.p762g;

import com.truecaller.log.AssertionUtil;
import java.io.IOException;
import u3.g0;
import x3.a0;
import x3.b;
import x3.d;
/* renamed from: e.a.f4.g.b */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/b.class */
public abstract class AbstractC14003b<T> implements b<T> {

    /* renamed from: a */
    public final b<T> f40468a;

    public AbstractC14003b(b<T> bVar) {
        this.f40468a = bVar;
    }

    /* renamed from: a */
    public a0<T> mo20848a(a0<T> a0Var, T t) {
        return a0Var;
    }

    public final void cancel() {
        AssertionUtil.AlwaysFatal.isTrue(false, "Don't call #cancel()");
    }

    public final void enqueue(d<T> dVar) {
        AssertionUtil.AlwaysFatal.isTrue(false, "Don't call #enqueue()");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a0<T> execute() throws IOException {
        a0<T> execute = this.f40468a.execute();
        a0<T> a0Var = execute;
        if (execute.b()) {
            Object obj = execute.b;
            a0Var = execute;
            if (obj != null) {
                a0Var = mo20848a(execute, obj);
            }
        }
        return a0Var;
    }

    public boolean isCanceled() {
        return this.f40468a.isCanceled();
    }

    public g0 request() {
        return this.f40468a.request();
    }
}
