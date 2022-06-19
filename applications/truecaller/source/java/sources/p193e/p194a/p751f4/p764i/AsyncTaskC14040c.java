package p193e.p194a.p751f4.p764i;

import p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e;
import x3.a0;
import x3.b;
/* renamed from: e.a.f4.i.c */
/* loaded from: classes11-dex2jar.jar:e/a/f4/i/c.class */
public class AsyncTaskC14040c<Params, Progress, Result> extends AbstractAsyncTaskC14042e<Params, Progress, Result> {

    /* renamed from: d */
    public final b<Result> f40596d;

    public AsyncTaskC14040c(b<Result> bVar) {
        super(null, false, false);
        this.f40596d = bVar;
    }

    @Override // p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e
    /* renamed from: e */
    public Result mo20823e(Params[] paramsArr) throws Exception {
        a0 execute = this.f40596d.execute();
        if (execute.b() && execute.b != null) {
            return (Result) execute.b;
        }
        throw new AbstractAsyncTaskC14042e.C14043a(execute.a.e);
    }
}
