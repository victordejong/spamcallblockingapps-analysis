package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import g.f.a.b.i.m;
import g.f.a.b.i.r;
import g.f.a.b.i.z.a;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver.class */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static /* synthetic */ void m3827a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        r.f(context);
        m.a a = m.a();
        a.b(queryParameter);
        a.d(a.b(intValue));
        if (queryParameter2 != null) {
            a.c(Base64.decode(queryParameter2, 0));
        }
        r.c().e().m3795g(a.a(), i, RunnableC0747b.m3825a());
    }
}
