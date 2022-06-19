package p193e.p194a.p749f3;

import android.app.PendingIntent;
import android.content.Intent;
import java.util.Objects;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.f3.v */
/* loaded from: classes6-dex2jar.jar:e/a/f3/v.class */
public final class C13929v extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C13930w f40335b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13929v(C13930w c13930w) {
        super(0);
        this.f40335b = c13930w;
    }

    public Object invoke() {
        Intent intent = (Intent) this.f40335b.f40337c.invoke();
        if (intent != null) {
            C13919o c13919o = this.f40335b.f40336b;
            Objects.requireNonNull(c13919o);
            try {
                PendingIntent.getActivity(c13919o.f40319g, 456, intent, 1140850688).send();
            } catch (PendingIntent.CanceledException e) {
                c13919o.f40319g.startActivity(intent);
            }
            this.f40335b.f40338d.invoke();
        }
        return s.a;
    }
}
