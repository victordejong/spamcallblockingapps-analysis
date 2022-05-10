package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzafz;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzcfh;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfh.class */
public final class zzcfh implements View.OnClickListener {

    /* renamed from: a */
    public final zzcil f25927a;

    /* renamed from: b */
    public final Clock f25928b;

    /* renamed from: c */
    public zzafz f25929c;

    /* renamed from: d */
    public zzahq<Object> f25930d;

    /* renamed from: e */
    public String f25931e;

    /* renamed from: f */
    public Long f25932f;

    /* renamed from: g */
    public WeakReference<View> f25933g;

    public zzcfh(zzcil zzcilVar, Clock clock) {
        this.f25927a = zzcilVar;
        this.f25928b = clock;
    }

    /* renamed from: a */
    public final void m14346a() {
        if (this.f25929c != null && this.f25932f != null) {
            m14343c();
            try {
                this.f25929c.mo16768s0();
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
            }
        }
    }

    /* renamed from: a */
    public final void m14345a(final zzafz zzafzVar) {
        this.f25929c = zzafzVar;
        zzahq<Object> zzahqVar = this.f25930d;
        if (zzahqVar != null) {
            this.f25927a.m14170b("/unconfirmedClick", zzahqVar);
        }
        zzahq<Object> vhVar = new zzahq(this, zzafzVar) { // from class: c.d.b.d.g.a.vh

            /* renamed from: a */
            public final zzcfh f15862a;

            /* renamed from: b */
            public final zzafz f15863b;

            {
                this.f15862a = this;
                this.f15863b = zzafzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzahq
            /* renamed from: a */
            public final void mo14168a(Object obj, Map map) {
                zzcfh zzcfhVar = this.f15862a;
                zzafz zzafzVar2 = this.f15863b;
                try {
                    zzcfhVar.f25932f = Long.valueOf(Long.parseLong((String) map.get(AvidJSONUtil.KEY_TIMESTAMP)));
                } catch (NumberFormatException e) {
                    zzbbq.m15856b("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzcfhVar.f25931e = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (zzafzVar2 == null) {
                    zzbbq.m15858a("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    zzafzVar2.mo16769g(str);
                } catch (RemoteException e2) {
                    zzbbq.m15851d("#007 Could not call remote method.", e2);
                }
            }
        };
        this.f25930d = vhVar;
        this.f25927a.m14176a("/unconfirmedClick", vhVar);
    }

    /* renamed from: b */
    public final zzafz m14344b() {
        return this.f25929c;
    }

    /* renamed from: c */
    public final void m14343c() {
        View view;
        this.f25931e = null;
        this.f25932f = null;
        WeakReference<View> weakReference = this.f25933g;
        if (weakReference != null && (view = weakReference.get()) != null) {
            view.setClickable(false);
            view.setOnClickListener(null);
            this.f25933g = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.f25933g;
        if (weakReference != null && weakReference.get() == view) {
            if (!(this.f25931e == null || this.f25932f == null)) {
                HashMap hashMap = new HashMap();
                hashMap.put("id", this.f25931e);
                hashMap.put("time_interval", String.valueOf(this.f25928b.mo17091b() - this.f25932f.longValue()));
                hashMap.put("messageType", "onePointFiveClick");
                this.f25927a.m14175a("sendMessageToNativeJs", hashMap);
            }
            m14343c();
        }
    }
}
