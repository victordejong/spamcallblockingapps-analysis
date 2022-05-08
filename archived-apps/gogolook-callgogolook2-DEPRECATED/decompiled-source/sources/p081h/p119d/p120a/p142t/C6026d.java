package p081h.p119d.p120a.p142t;

import android.content.Context;
import p081h.p119d.p120a.p142t.AbstractC6024c;
/* renamed from: h.d.a.t.d */
/* loaded from: classes-dex2jar.jar:h/d/a/t/d.class */
public class C6026d {
    /* renamed from: a */
    public AbstractC6024c m24016a(Context context, AbstractC6024c.AbstractC6025a aVar) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0 ? new C6027e(context, aVar) : new C6032i();
    }
}
