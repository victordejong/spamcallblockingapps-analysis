package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p211b0.C6561a;
import p081h.p203i.p204a.p206b.p209j.p215w.C6613a;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
/* renamed from: h.i.a.b.j.y.j.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/a.class */
public class C6626a implements AbstractC6650s {

    /* renamed from: a */
    public final Context f16450a;

    /* renamed from: b */
    public final AbstractC6661c f16451b;

    /* renamed from: c */
    public AlarmManager f16452c;

    /* renamed from: d */
    public final AbstractC6634g f16453d;

    /* renamed from: e */
    public final AbstractC6550a f16454e;

    @VisibleForTesting
    public C6626a(Context context, AbstractC6661c cVar, AlarmManager alarmManager, AbstractC6550a aVar, AbstractC6634g gVar) {
        this.f16450a = context;
        this.f16451b = cVar;
        this.f16452c = alarmManager;
        this.f16454e = aVar;
        this.f16453d = gVar;
    }

    public C6626a(Context context, AbstractC6661c cVar, AbstractC6550a aVar, AbstractC6634g gVar) {
        this(context, cVar, (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM), aVar, gVar);
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6650s
    /* renamed from: a */
    public void mo22169a(AbstractC6580m mVar, int i) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", mVar.mo22296a());
        builder.appendQueryParameter(IapProductRealmObject.PRIORITY, String.valueOf(C6561a.m22342a(mVar.mo22293c())));
        if (mVar.mo22294b() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(mVar.mo22294b(), 0));
        }
        Intent intent = new Intent(this.f16450a, AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (m22216a(intent)) {
            C6613a.m22235a("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", mVar);
            return;
        }
        long a = this.f16451b.mo22132a(mVar);
        long a2 = this.f16453d.m22207a(mVar.mo22293c(), a, i);
        C6613a.m22233a("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", mVar, Long.valueOf(a2), Long.valueOf(a), Integer.valueOf(i));
        this.f16452c.set(3, this.f16454e.mo22344a() + a2, PendingIntent.getBroadcast(this.f16450a, 0, intent, 0));
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m22216a(Intent intent) {
        boolean z = false;
        if (PendingIntent.getBroadcast(this.f16450a, 0, intent, 536870912) != null) {
            z = true;
        }
        return z;
    }
}
