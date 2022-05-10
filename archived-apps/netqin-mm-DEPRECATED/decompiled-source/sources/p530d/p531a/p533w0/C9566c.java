package p530d.p531a.p533w0;

import io.grpc.internal.GrpcUtil;
import java.util.ArrayList;
import java.util.List;
import okio.ByteString;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9214a0;
import p530d.p531a.C9260k0;
import p530d.p531a.p532v0.C9553y1;
import p530d.p531a.p533w0.p534o.p535f.C9601c;
/* renamed from: d.a.w0.c */
/* loaded from: classes2-dex2jar.jar:d/a/w0/c.class */
public class C9566c {

    /* renamed from: a */
    public static final C9601c f36483a = new C9601c(C9601c.f36633g, "https");

    /* renamed from: b */
    public static final C9601c f36484b = new C9601c(C9601c.f36633g, "http");

    /* renamed from: c */
    public static final C9601c f36485c = new C9601c(C9601c.f36631e, "POST");

    /* renamed from: d */
    public static final C9601c f36486d = new C9601c(C9601c.f36631e, "GET");

    /* renamed from: e */
    public static final C9601c f36487e = new C9601c(GrpcUtil.f38064g.m3043b(), "application/grpc");

    /* renamed from: f */
    public static final C9601c f36488f = new C9601c("te", "trailers");

    /* renamed from: a */
    public static List<C9601c> m2473a(C9260k0 k0Var, String str, String str2, String str3, boolean z, boolean z2) {
        C4933n.m24794a(k0Var, "headers");
        C4933n.m24794a(str, "defaultPath");
        C4933n.m24794a(str2, "authority");
        k0Var.m3068a(GrpcUtil.f38064g);
        k0Var.m3068a(GrpcUtil.f38065h);
        k0Var.m3068a(GrpcUtil.f38066i);
        ArrayList arrayList = new ArrayList(C9214a0.m3147a(k0Var) + 7);
        if (z2) {
            arrayList.add(f36484b);
        } else {
            arrayList.add(f36483a);
        }
        if (z) {
            arrayList.add(f36486d);
        } else {
            arrayList.add(f36485c);
        }
        arrayList.add(new C9601c(C9601c.f36634h, str2));
        arrayList.add(new C9601c(C9601c.f36632f, str));
        arrayList.add(new C9601c(GrpcUtil.f38066i.m3043b(), str3));
        arrayList.add(f36487e);
        arrayList.add(f36488f);
        byte[][] a = C9553y1.m2495a(k0Var);
        for (int i = 0; i < a.length; i += 2) {
            ByteString of = ByteString.m3of(a[i]);
            if (m2472a(of.utf8())) {
                arrayList.add(new C9601c(of, ByteString.m3of(a[i + 1])));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static boolean m2472a(String str) {
        return !str.startsWith(":") && !GrpcUtil.f38064g.m3043b().equalsIgnoreCase(str) && !GrpcUtil.f38066i.m3043b().equalsIgnoreCase(str);
    }
}
