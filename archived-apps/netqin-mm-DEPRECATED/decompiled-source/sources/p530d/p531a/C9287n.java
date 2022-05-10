package p530d.p531a;

import io.grpc.ConnectivityState;
import io.grpc.Status;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.n */
/* loaded from: classes2-dex2jar.jar:d/a/n.class */
public final class C9287n {

    /* renamed from: a */
    public final ConnectivityState f35858a;

    /* renamed from: b */
    public final Status f35859b;

    public C9287n(ConnectivityState connectivityState, Status status) {
        C4933n.m24794a(connectivityState, "state is null");
        this.f35858a = connectivityState;
        C4933n.m24794a(status, "status is null");
        this.f35859b = status;
    }

    /* renamed from: a */
    public static C9287n m2996a(ConnectivityState connectivityState) {
        C4933n.m24790a(connectivityState != ConnectivityState.TRANSIENT_FAILURE, "state is TRANSIENT_ERROR. Use forError() instead");
        return new C9287n(connectivityState, Status.f37988f);
    }

    /* renamed from: a */
    public static C9287n m2995a(Status status) {
        C4933n.m24790a(!status.m602f(), "The error status must not be OK");
        return new C9287n(ConnectivityState.TRANSIENT_FAILURE, status);
    }

    /* renamed from: a */
    public ConnectivityState m2997a() {
        return this.f35858a;
    }

    /* renamed from: b */
    public Status m2994b() {
        return this.f35859b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C9287n)) {
            return false;
        }
        C9287n nVar = (C9287n) obj;
        boolean z = false;
        if (this.f35858a.equals(nVar.f35858a)) {
            z = false;
            if (this.f35859b.equals(nVar.f35859b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f35858a.hashCode() ^ this.f35859b.hashCode();
    }

    public String toString() {
        if (this.f35859b.m602f()) {
            return this.f35858a.toString();
        }
        return this.f35858a + "(" + this.f35859b + ")";
    }
}
