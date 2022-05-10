package p530d.p531a;

import io.grpc.Context;
import io.grpc.Status;
import java.util.concurrent.TimeoutException;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.p */
/* loaded from: classes2-dex2jar.jar:d/a/p.class */
public final class C9294p {
    /* renamed from: a */
    public static Status m2984a(Context context) {
        C4933n.m24794a(context, "context must not be null");
        if (!context.mo672e()) {
            return null;
        }
        Throwable c = context.mo674c();
        if (c == null) {
            return Status.f37989g.m609b("io.grpc.Context was cancelled without error");
        }
        if (c instanceof TimeoutException) {
            return Status.f37991i.m609b(c.getMessage()).m612a(c);
        }
        Status b = Status.m608b(c);
        return (!Status.Code.UNKNOWN.equals(b.m604d()) || b.m606c() != c) ? b.m612a(c) : Status.f37989g.m609b("Context cancelled").m612a(c);
    }
}
