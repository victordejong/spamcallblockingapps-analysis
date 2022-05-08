package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.appevents.C2283m;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/BoltsMeasurementEventListener.class */
public class BoltsMeasurementEventListener extends BroadcastReceiver {

    /* renamed from: b */
    public static BoltsMeasurementEventListener f2936b;

    /* renamed from: a */
    public Context f2937a;

    public BoltsMeasurementEventListener(Context context) {
        this.f2937a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static BoltsMeasurementEventListener m34984a(Context context) {
        BoltsMeasurementEventListener boltsMeasurementEventListener = f2936b;
        if (boltsMeasurementEventListener != null) {
            return boltsMeasurementEventListener;
        }
        f2936b = new BoltsMeasurementEventListener(context);
        f2936b.m34983b();
        return f2936b;
    }

    /* renamed from: a */
    public final void m34985a() {
        LocalBroadcastManager.getInstance(this.f2937a).unregisterReceiver(this);
    }

    /* renamed from: b */
    public final void m34983b() {
        LocalBroadcastManager.getInstance(this.f2937a).registerReceiver(this, new IntentFilter("com.parse.bolts.measurement_event"));
    }

    public void finalize() throws Throwable {
        try {
            m34985a();
        } finally {
            super.finalize();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C2283m mVar = new C2283m(context);
        String str = "bf_" + intent.getStringExtra("event_name");
        Bundle bundleExtra = intent.getBundleExtra("event_args");
        Bundle bundle = new Bundle();
        for (String str2 : bundleExtra.keySet()) {
            bundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", "-").replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String) bundleExtra.get(str2));
        }
        mVar.m35300a(str, bundle);
    }
}
