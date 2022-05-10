package io.reactivex.internal.functions;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions.class */
public final class Functions {

    /* renamed from: a */
    public static final AbstractC9645h<Object, Object> f38319a = new C10392i();

    /* renamed from: b */
    public static final Runnable f38320b = new RunnableC10388e();

    /* renamed from: c */
    public static final AbstractC9638a f38321c = new C10385b();

    /* renamed from: d */
    public static final AbstractC9644g<Object> f38322d = new C10386c();

    /* renamed from: e */
    public static final AbstractC9644g<Throwable> f38323e = new C10398o();

    /* renamed from: f */
    public static final AbstractC9646i<Object> f38324f = new C10399p();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$HashSetCallable.class */
    public enum HashSetCallable implements Callable<Set<Object>> {
        INSTANCE;

        @Override // java.util.concurrent.Callable
        public Set<Object> call() throws Exception {
            return new HashSet();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$NaturalComparator.class */
    public enum NaturalComparator implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$a.class */
    public static final class C10384a<T1, T2, R> implements AbstractC9645h<Object[], R> {

        /* renamed from: a */
        public final AbstractC9640c<? super T1, ? super T2, ? extends R> f38325a;

        public C10384a(AbstractC9640c<? super T1, ? super T2, ? extends R> cVar) {
            this.f38325a = cVar;
        }

        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 2) {
                return (R) this.f38325a.apply(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$b */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$b.class */
    public static final class C10385b implements AbstractC9638a {
        @Override // p530d.p541c.p542a0.AbstractC9638a
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$c */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$c.class */
    public static final class C10386c implements AbstractC9644g<Object> {
        @Override // p530d.p541c.p542a0.AbstractC9644g
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$d */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$d.class */
    public static final class C10387d {
    }

    /* renamed from: io.reactivex.internal.functions.Functions$e */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$e.class */
    public static final class RunnableC10388e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$f */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$f.class */
    public static final class C10389f<T> implements AbstractC9646i<T> {

        /* renamed from: a */
        public final T f38326a;

        public C10389f(T t) {
            this.f38326a = t;
        }

        @Override // p530d.p541c.p542a0.AbstractC9646i
        public boolean test(T t) throws Exception {
            return C9650a.m2096a(t, this.f38326a);
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$g */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$g.class */
    public static final class C10390g implements AbstractC9644g<Throwable> {
        /* renamed from: a */
        public void accept(Throwable th) {
            C9815a.m1923b(th);
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$h */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$h.class */
    public static final class C10391h implements AbstractC9646i<Object> {
        @Override // p530d.p541c.p542a0.AbstractC9646i
        public boolean test(Object obj) {
            return false;
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$i */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$i.class */
    public static final class C10392i implements AbstractC9645h<Object, Object> {
        @Override // p530d.p541c.p542a0.AbstractC9645h
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$j */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$j.class */
    public static final class CallableC10393j<T, U> implements Callable<U>, AbstractC9645h<T, U> {

        /* renamed from: a */
        public final U f38327a;

        public CallableC10393j(U u) {
            this.f38327a = u;
        }

        @Override // p530d.p541c.p542a0.AbstractC9645h
        public U apply(T t) throws Exception {
            return this.f38327a;
        }

        @Override // java.util.concurrent.Callable
        public U call() throws Exception {
            return this.f38327a;
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$k */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$k.class */
    public static final class C10394k<T> implements AbstractC9645h<List<T>, List<T>> {

        /* renamed from: a */
        public final Comparator<? super T> f38328a;

        public C10394k(Comparator<? super T> comparator) {
            this.f38328a = comparator;
        }

        /* renamed from: a */
        public List<T> m258a(List<T> list) {
            Collections.sort(list, this.f38328a);
            return list;
        }

        @Override // p530d.p541c.p542a0.AbstractC9645h
        public /* bridge */ /* synthetic */ Object apply(Object obj) throws Exception {
            List<T> list = (List) obj;
            m258a(list);
            return list;
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$l */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$l.class */
    public static final class C10395l implements AbstractC9644g<AbstractC10434d> {
        /* renamed from: a */
        public void accept(AbstractC10434d dVar) throws Exception {
            dVar.request(Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$m */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$m.class */
    public static final class C10396m implements Comparator<Object> {
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$n */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$n.class */
    public static final class CallableC10397n implements Callable<Object> {
        @Override // java.util.concurrent.Callable
        public Object call() {
            return null;
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$o */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$o.class */
    public static final class C10398o implements AbstractC9644g<Throwable> {
        /* renamed from: a */
        public void accept(Throwable th) {
            C9815a.m1923b(new OnErrorNotImplementedException(th));
        }
    }

    /* renamed from: io.reactivex.internal.functions.Functions$p */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/functions/Functions$p.class */
    public static final class C10399p implements AbstractC9646i<Object> {
        @Override // p530d.p541c.p542a0.AbstractC9646i
        public boolean test(Object obj) {
            return true;
        }
    }

    static {
        new C10390g();
        new C10387d();
        new C10391h();
        new CallableC10397n();
        new C10396m();
        new C10395l();
    }

    /* renamed from: a */
    public static <T1, T2, R> AbstractC9645h<Object[], R> m266a(AbstractC9640c<? super T1, ? super T2, ? extends R> cVar) {
        C9650a.m2095a(cVar, "f is null");
        return new C10384a(cVar);
    }

    /* renamed from: a */
    public static <T> AbstractC9645h<List<T>, List<T>> m264a(Comparator<? super T> comparator) {
        return new C10394k(comparator);
    }

    /* renamed from: a */
    public static <T> AbstractC9646i<T> m267a() {
        return (AbstractC9646i<T>) f38324f;
    }

    /* renamed from: a */
    public static <T> AbstractC9646i<T> m265a(T t) {
        return new C10389f(t);
    }

    /* renamed from: b */
    public static <T> AbstractC9644g<T> m263b() {
        return (AbstractC9644g<T>) f38322d;
    }

    /* renamed from: b */
    public static <T, U> AbstractC9645h<T, U> m262b(U u) {
        return new CallableC10393j(u);
    }

    /* renamed from: c */
    public static <T> AbstractC9645h<T, T> m261c() {
        return (AbstractC9645h<T, T>) f38319a;
    }
}
