package p530d.p541c.p565w.p567b;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Callable;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p565w.p566a.C9853a;
/* renamed from: d.c.w.b.a */
/* loaded from: classes2-dex2jar.jar:d/c/w/b/a.class */
public final class C9854a {

    /* renamed from: a */
    public static final AbstractC9845s f37083a = C9853a.m1836b(new CallableC9855a());

    /* renamed from: d.c.w.b.a$a */
    /* loaded from: classes2-dex2jar.jar:d/c/w/b/a$a.class */
    public static final class CallableC9855a implements Callable<AbstractC9845s> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public AbstractC9845s call() throws Exception {
            return C9856b.f37084a;
        }
    }

    /* renamed from: d.c.w.b.a$b */
    /* loaded from: classes2-dex2jar.jar:d/c/w/b/a$b.class */
    public static final class C9856b {

        /* renamed from: a */
        public static final AbstractC9845s f37084a = new C9857b(new Handler(Looper.getMainLooper()));
    }

    /* renamed from: a */
    public static AbstractC9845s m1835a() {
        return C9853a.m1838a(f37083a);
    }
}
