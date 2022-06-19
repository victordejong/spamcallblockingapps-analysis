package p193e.p194a.p619d.p666y.p669c;

import android.content.Context;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.d.y.c.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/c/m.class */
public final class C12328m extends m implements a<AbstractC14920n> {

    /* renamed from: b */
    public final /* synthetic */ C12329n f35999b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12328m(C12329n c12329n) {
        super(0);
        this.f35999b = c12329n;
    }

    public Object invoke() {
        Context applicationContext = this.f35999b.f36004e.getApplicationContext();
        Context context = applicationContext;
        if (!(applicationContext instanceof AbstractC14932g)) {
            context = null;
        }
        AbstractC14932g abstractC14932g = (AbstractC14932g) context;
        if (abstractC14932g != null) {
            return abstractC14932g.mo19403n();
        }
        throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
    }
}
