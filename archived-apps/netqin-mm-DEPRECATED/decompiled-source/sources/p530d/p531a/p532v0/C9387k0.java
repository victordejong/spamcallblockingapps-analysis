package p530d.p531a.p532v0;

import com.google.common.collect.ImmutableSet;
import io.grpc.Status;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
/* renamed from: d.a.v0.k0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/k0.class */
public final class C9387k0 {

    /* renamed from: d */
    public static final C9387k0 f36053d = new C9387k0(1, 0, Collections.emptySet());

    /* renamed from: a */
    public final int f36054a;

    /* renamed from: b */
    public final long f36055b;

    /* renamed from: c */
    public final Set<Status.Code> f36056c;

    /* renamed from: d.a.v0.k0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/k0$a.class */
    public interface AbstractC9388a {
        C9387k0 get();
    }

    public C9387k0(int i, long j, Set<Status.Code> set) {
        this.f36054a = i;
        this.f36055b = j;
        this.f36056c = ImmutableSet.copyOf((Collection) set);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C9387k0.class != obj.getClass()) {
            return false;
        }
        C9387k0 k0Var = (C9387k0) obj;
        if (!(this.f36054a == k0Var.f36054a && this.f36055b == k0Var.f36055b && C4928k.m24808a(this.f36056c, k0Var.f36056c))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return C4928k.m24807a(Integer.valueOf(this.f36054a), Long.valueOf(this.f36055b), this.f36056c);
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24815a("maxAttempts", this.f36054a);
        a.m24814a("hedgingDelayNanos", this.f36055b);
        a.m24813a("nonFatalStatusCodes", this.f36056c);
        return a.toString();
    }
}
