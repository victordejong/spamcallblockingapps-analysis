package p131c.p161d.p170b.p173b.p176i.p184y.p185j;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p178b0.C2552a;
import p131c.p161d.p170b.p173b.p176i.p182w.C2601a;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c;
/* renamed from: c.d.b.b.i.y.j.a */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/j/a.class */
public class C2614a implements AbstractC2633r {

    /* renamed from: a */
    public final Context f9689a;

    /* renamed from: b */
    public final AbstractC2644c f9690b;

    /* renamed from: c */
    public AlarmManager f9691c;

    /* renamed from: d */
    public final SchedulerConfig f9692d;

    /* renamed from: e */
    public final AbstractC2541a f9693e;

    public C2614a(Context context, AbstractC2644c cVar, AlarmManager alarmManager, AbstractC2541a aVar, SchedulerConfig schedulerConfig) {
        this.f9689a = context;
        this.f9690b = cVar;
        this.f9691c = alarmManager;
        this.f9693e = aVar;
        this.f9692d = schedulerConfig;
    }

    public C2614a(Context context, AbstractC2644c cVar, AbstractC2541a aVar, SchedulerConfig schedulerConfig) {
        this(context, cVar, (AlarmManager) context.getSystemService("alarm"), aVar, schedulerConfig);
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p185j.AbstractC2633r
    /* renamed from: a */
    public void mo29403a(AbstractC2571m mVar, int i) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", mVar.mo29506a());
        builder.appendQueryParameter("priority", String.valueOf(C2552a.m29552a(mVar.mo29503c())));
        if (mVar.mo29504b() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(mVar.mo29504b(), 0));
        }
        Intent intent = new Intent(this.f9689a, AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (m29429a(intent)) {
            C2601a.m29448a("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", mVar);
            return;
        }
        long b = this.f9690b.mo29363b(mVar);
        long a = this.f9692d.m18729a(mVar.mo29503c(), b, i);
        C2601a.m29446a("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", mVar, Long.valueOf(a), Long.valueOf(b), Integer.valueOf(i));
        this.f9691c.set(3, this.f9693e.mo29554a() + a, PendingIntent.getBroadcast(this.f9689a, 0, intent, 0));
    }

    /* renamed from: a */
    public boolean m29429a(Intent intent) {
        boolean z = false;
        if (PendingIntent.getBroadcast(this.f9689a, 0, intent, 536870912) != null) {
            z = true;
        }
        return z;
    }
}
