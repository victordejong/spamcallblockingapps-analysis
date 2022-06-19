package p193e.p194a.p936j3;

import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.t;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import u3.l0;
import x3.b;
import x3.h0.a;
import x3.h0.o;
import x3.h0.s;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018��2\u00020\u0001J)\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0001\u0010\n\u001a\u00020\u0002H'¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0001\u0010\n\u001a\u00020\u0002H'¢\u0006\u0004\b\r\u0010\f¨\u0006\u000e"}, d2 = {"Le/a/j3/h;", "", "", "receiver", "Le/m/e/t;", "body", "Lx3/b;", "Lu3/l0;", AbstractC2405c.f7629a, "(Ljava/lang/String;Le/m/e/t;)Lx3/b;", "webId", C22021b.f61237c, "(Ljava/lang/String;)Lx3/b;", "a", "contact-request_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.j3.h */
/* loaded from: classes8-dex2jar.jar:e/a/j3/h.class */
public interface AbstractC15556h {
    @o("/v1/contact-request/webid/{webid}/reject")
    /* renamed from: a */
    b<l0> m18692a(@s("webid") String str);

    @o("/v1/contact-request/webid/{webid}/accept")
    /* renamed from: b */
    b<l0> m18691b(@s("webid") String str);

    @o("/v1/contact-request/receiver/{receiver}")
    /* renamed from: c */
    b<l0> m18690c(@s("receiver") String str, @a t tVar);
}
