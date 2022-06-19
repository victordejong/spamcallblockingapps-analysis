package androidx.work;

import android.net.Uri;
import androidx.work.impl.utils.p017o.AbstractC0537a;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters.class */
public final class WorkerParameters {

    /* renamed from: a */
    private UUID f2422a;

    /* renamed from: b */
    private C0474e f2423b;

    /* renamed from: c */
    private Executor f2424c;

    /* renamed from: d */
    private AbstractC0537a f2425d;

    /* renamed from: e */
    private AbstractC0554y f2426e;

    /* renamed from: androidx.work.WorkerParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters$a.class */
    public static class C0465a {

        /* renamed from: a */
        public List<String> f2427a = Collections.emptyList();

        /* renamed from: b */
        public List<Uri> f2428b = Collections.emptyList();
    }

    public WorkerParameters(UUID uuid, C0474e c0474e, Collection<String> collection, C0465a c0465a, int i, Executor executor, AbstractC0537a abstractC0537a, AbstractC0554y abstractC0554y, AbstractC0546r abstractC0546r, AbstractC0479i abstractC0479i) {
        this.f2422a = uuid;
        this.f2423b = c0474e;
        new HashSet(collection);
        this.f2424c = executor;
        this.f2425d = abstractC0537a;
        this.f2426e = abstractC0554y;
    }

    /* renamed from: a */
    public Executor m4555a() {
        return this.f2424c;
    }

    /* renamed from: b */
    public UUID m4554b() {
        return this.f2422a;
    }

    /* renamed from: c */
    public C0474e m4553c() {
        return this.f2423b;
    }

    /* renamed from: d */
    public AbstractC0537a m4552d() {
        return this.f2425d;
    }

    /* renamed from: e */
    public AbstractC0554y m4551e() {
        return this.f2426e;
    }
}
