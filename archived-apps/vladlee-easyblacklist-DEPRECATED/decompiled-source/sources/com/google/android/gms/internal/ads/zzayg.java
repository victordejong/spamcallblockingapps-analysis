package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayg.class */
public final class zzayg {

    /* renamed from: d */
    private boolean f11530d;

    /* renamed from: e */
    private Context f11531e;

    /* renamed from: c */
    private boolean f11529c = false;

    /* renamed from: b */
    private final Map<BroadcastReceiver, IntentFilter> f11528b = new WeakHashMap();

    /* renamed from: a */
    private final BroadcastReceiver f11527a = new C1879fq(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m4213a(Context context, Intent intent) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.f11528b.entrySet()) {
                if (entry.getValue().hasAction(intent.getAction())) {
                    arrayList.add(entry.getKey());
                }
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                ((BroadcastReceiver) obj).onReceive(context, intent);
            }
        }
    }

    public final void initialize(Context context) {
        synchronized (this) {
            if (!this.f11529c) {
                this.f11531e = context.getApplicationContext();
                if (this.f11531e == null) {
                    this.f11531e = context;
                }
                zzzn.initialize(this.f11531e);
                this.f11530d = ((Boolean) zzve.zzoy().zzd(zzzn.zzcmg)).booleanValue();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                intentFilter.addAction("android.intent.action.USER_PRESENT");
                this.f11531e.registerReceiver(this.f11527a, intentFilter);
                this.f11529c = true;
            }
        }
    }

    public final void zza(Context context, BroadcastReceiver broadcastReceiver) {
        synchronized (this) {
            if (this.f11530d) {
                this.f11528b.remove(broadcastReceiver);
            } else {
                context.unregisterReceiver(broadcastReceiver);
            }
        }
    }

    public final void zza(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this) {
            if (this.f11530d) {
                this.f11528b.put(broadcastReceiver, intentFilter);
            } else {
                context.registerReceiver(broadcastReceiver, intentFilter);
            }
        }
    }
}
