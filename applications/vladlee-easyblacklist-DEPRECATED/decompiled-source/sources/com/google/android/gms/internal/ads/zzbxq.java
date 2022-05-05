package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxq.class */
public final class zzbxq implements View.OnClickListener {

    /* renamed from: a */
    String f12666a;

    /* renamed from: b */
    Long f12667b;

    /* renamed from: c */
    WeakReference<View> f12668c;

    /* renamed from: d */
    private final zzcaj f12669d;

    /* renamed from: e */
    private final Clock f12670e;

    /* renamed from: f */
    private zzaeb f12671f;

    /* renamed from: g */
    private zzafn<Object> f12672g;

    public zzbxq(zzcaj zzcajVar, Clock clock) {
        this.f12669d = zzcajVar;
        this.f12670e = clock;
    }

    /* renamed from: a */
    private final void m3859a() {
        View view;
        this.f12666a = null;
        this.f12667b = null;
        WeakReference<View> weakReference = this.f12668c;
        if (weakReference != null && (view = weakReference.get()) != null) {
            view.setClickable(false);
            view.setOnClickListener(null);
            this.f12668c = null;
        }
    }

    public final void cancelUnconfirmedClick() {
        if (this.f12671f != null && this.f12667b != null) {
            m3859a();
            try {
                this.f12671f.onUnconfirmedClickCancelled();
            } catch (RemoteException e) {
                zzayu.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.f12668c;
        if (weakReference != null && weakReference.get() == view) {
            if (!(this.f12666a == null || this.f12667b == null)) {
                HashMap hashMap = new HashMap();
                hashMap.put("id", this.f12666a);
                hashMap.put("time_interval", String.valueOf(this.f12670e.currentTimeMillis() - this.f12667b.longValue()));
                hashMap.put("messageType", "onePointFiveClick");
                this.f12669d.zza("sendMessageToNativeJs", hashMap);
            }
            m3859a();
        }
    }

    public final void zza(final zzaeb zzaebVar) {
        this.f12671f = zzaebVar;
        zzafn<Object> zzafnVar = this.f12672g;
        if (zzafnVar != null) {
            this.f12669d.zzb("/unconfirmedClick", zzafnVar);
        }
        this.f12672g = new zzafn(this, zzaebVar) { // from class: com.google.android.gms.internal.ads.od

            /* renamed from: a */
            private final zzbxq f10268a;

            /* renamed from: b */
            private final zzaeb f10269b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10268a = this;
                this.f10269b = zzaebVar;
            }

            @Override // com.google.android.gms.internal.ads.zzafn
            public final void zza(Object obj, Map map) {
                zzbxq zzbxqVar = this.f10268a;
                zzaeb zzaebVar2 = this.f10269b;
                try {
                    zzbxqVar.f12667b = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException e) {
                    zzavs.zzex("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzbxqVar.f12666a = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (zzaebVar2 == null) {
                    zzavs.zzea("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    zzaebVar2.onUnconfirmedClickReceived(str);
                } catch (RemoteException e2) {
                    zzayu.zze("#007 Could not call remote method.", e2);
                }
            }
        };
        this.f12669d.zza("/unconfirmedClick", this.f12672g);
    }

    public final zzaeb zzakh() {
        return this.f12671f;
    }
}
