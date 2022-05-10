package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import p131c.p161d.p170b.p224d.p252g.p253a.C3608h6;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbc.class */
public final class zzbbc {

    /* renamed from: d */
    public boolean f24733d;

    /* renamed from: e */
    public Context f24734e;

    /* renamed from: c */
    public boolean f24732c = false;

    /* renamed from: b */
    public final Map<BroadcastReceiver, IntentFilter> f24731b = new WeakHashMap();

    /* renamed from: a */
    public final BroadcastReceiver f24730a = new C3608h6(this);

    /* renamed from: a */
    public final void m15919a(Context context) {
        synchronized (this) {
            if (!this.f24732c) {
                Context applicationContext = context.getApplicationContext();
                this.f24734e = applicationContext;
                if (applicationContext == null) {
                    this.f24734e = context;
                }
                zzabb.m16916a(this.f24734e);
                this.f24733d = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23680G1)).booleanValue();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                intentFilter.addAction("android.intent.action.USER_PRESENT");
                this.f24734e.registerReceiver(this.f24730a, intentFilter);
                this.f24732c = true;
            }
        }
    }

    /* renamed from: a */
    public final void m15918a(Context context, BroadcastReceiver broadcastReceiver) {
        synchronized (this) {
            if (this.f24733d) {
                this.f24731b.remove(broadcastReceiver);
            } else {
                context.unregisterReceiver(broadcastReceiver);
            }
        }
    }

    /* renamed from: a */
    public final void m15917a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this) {
            if (this.f24733d) {
                this.f24731b.put(broadcastReceiver, intentFilter);
            } else {
                context.registerReceiver(broadcastReceiver, intentFilter);
            }
        }
    }

    /* renamed from: a */
    public final void m15916a(Context context, Intent intent) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.f24731b.entrySet()) {
                if (entry.getValue().hasAction(intent.getAction())) {
                    arrayList.add(entry.getKey());
                }
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((BroadcastReceiver) obj).onReceive(context, intent);
            }
        }
    }
}
