package p131c.p161d.p170b.p173b.p176i.p184y;

import android.content.Context;
import android.os.Build;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.AbstractC2633r;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.C2614a;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.C2620e;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c;
/* renamed from: c.d.b.b.i.y.h */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/h.class */
public abstract class AbstractC2612h {
    /* renamed from: a */
    public static AbstractC2633r m29432a(Context context, AbstractC2644c cVar, SchedulerConfig schedulerConfig, AbstractC2541a aVar) {
        return Build.VERSION.SDK_INT >= 21 ? new C2620e(context, cVar, schedulerConfig) : new C2614a(context, cVar, aVar, schedulerConfig);
    }
}
