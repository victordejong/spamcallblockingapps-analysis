package p530d.p531a.p532v0;

import com.google.common.collect.ImmutableSet;
import io.grpc.Status;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
/* renamed from: d.a.v0.n1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/n1.class */
public final class C9446n1 {

    /* renamed from: f */
    public static final C9446n1 f36224f = new C9446n1(1, 0, 0, 1.0d, Collections.emptySet());

    /* renamed from: a */
    public final int f36225a;

    /* renamed from: b */
    public final long f36226b;

    /* renamed from: c */
    public final long f36227c;

    /* renamed from: d */
    public final double f36228d;

    /* renamed from: e */
    public final Set<Status.Code> f36229e;

    /* renamed from: d.a.v0.n1$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/n1$a.class */
    public interface AbstractC9447a {
        C9446n1 get();
    }

    public C9446n1(int i, long j, long j2, double d, Set<Status.Code> set) {
        this.f36225a = i;
        this.f36226b = j;
        this.f36227c = j2;
        this.f36228d = d;
        this.f36229e = ImmutableSet.copyOf((Collection) set);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C9446n1)) {
            return false;
        }
        C9446n1 n1Var = (C9446n1) obj;
        boolean z = false;
        if (this.f36225a == n1Var.f36225a) {
            z = false;
            if (this.f36226b == n1Var.f36226b) {
                z = false;
                if (this.f36227c == n1Var.f36227c) {
                    z = false;
                    if (Double.compare(this.f36228d, n1Var.f36228d) == 0) {
                        z = false;
                        if (C4928k.m24808a(this.f36229e, n1Var.f36229e)) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return C4928k.m24807a(Integer.valueOf(this.f36225a), Long.valueOf(this.f36226b), Long.valueOf(this.f36227c), Double.valueOf(this.f36228d), this.f36229e);
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24815a("maxAttempts", this.f36225a);
        a.m24814a("initialBackoffNanos", this.f36226b);
        a.m24814a("maxBackoffNanos", this.f36227c);
        a.m24816a("backoffMultiplier", this.f36228d);
        a.m24813a("retryableStatusCodes", this.f36229e);
        return a.toString();
    }
}
