package p193e.p194a.p437c.p598v.p602g;

import android.content.BroadcastReceiver;
import android.os.Bundle;
import java.util.Calendar;
import p193e.p194a.p437c.p598v.p602g.AbstractC10727e;
import s1.z.c.l;
/* renamed from: e.a.c.v.g.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/g/a.class */
public final class C10723a {

    /* renamed from: a */
    public final Calendar f31877a;

    /* renamed from: b */
    public AbstractC10727e f31878b = AbstractC10727e.C10729b.f31886a;

    /* renamed from: c */
    public int f31879c = -1;

    /* renamed from: d */
    public Class<? extends BroadcastReceiver> f31880d = BroadcastReceiver.class;

    /* renamed from: e */
    public Bundle f31881e;

    public C10723a() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        l.d(calendar, "Calendar.getInstance().a…currentTimeMillis()\n    }");
        this.f31877a = calendar;
        Bundle bundle = Bundle.EMPTY;
        l.d(bundle, "Bundle.EMPTY");
        this.f31881e = bundle;
    }
}
