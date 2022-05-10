package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmi.class */
public final class zzcmi implements zzbul, zzbuz, zzbyc, zzux {

    /* renamed from: a */
    public final Context f26239a;

    /* renamed from: b */
    public final zzdow f26240b;

    /* renamed from: c */
    public final zzcmu f26241c;

    /* renamed from: d */
    public final zzdog f26242d;

    /* renamed from: e */
    public final zzdnv f26243e;

    /* renamed from: f */
    public final zzcsp f26244f;

    /* renamed from: g */
    public Boolean f26245g;

    /* renamed from: h */
    public final boolean f26246h = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23702K3)).booleanValue();

    public zzcmi(Context context, zzdow zzdowVar, zzcmu zzcmuVar, zzdog zzdogVar, zzdnv zzdnvVar, zzcsp zzcspVar) {
        this.f26239a = context;
        this.f26240b = zzdowVar;
        this.f26241c = zzcmuVar;
        this.f26242d = zzdogVar;
        this.f26243e = zzdnvVar;
        this.f26244f = zzcspVar;
    }

    /* renamed from: a */
    public static boolean m14065a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzp.m17965g().m16188a(e, "CsiActionsListener.isPatternMatched");
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    /* renamed from: M */
    public final void mo13728M() {
        if (m14064b() || this.f26243e.f27589e0) {
            m14067a(m14066a("impression"));
        }
    }

    /* renamed from: a */
    public final zzcmt m14066a(String str) {
        zzcmt a = this.f26241c.m14042a();
        a.m14047a(this.f26242d.f27634b.f27630b);
        a.m14048a(this.f26243e);
        a.m14046a("action", str);
        if (!this.f26243e.f27603s.isEmpty()) {
            a.m14046a("ancn", this.f26243e.f27603s.get(0));
        }
        if (this.f26243e.f27589e0) {
            zzp.m17969c();
            a.m14046a("device_connectivity", zzayu.m16077q(this.f26239a) ? "online" : "offline");
            a.m14046a("event_timestamp", String.valueOf(zzp.m17962j().mo17091b()));
            a.m14046a("offline_ad", "1");
        }
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzbyc
    /* renamed from: a */
    public final void mo14069a() {
        if (m14064b()) {
            m14066a("adapter_impression").m14045b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    /* renamed from: a */
    public final void mo14068a(zzccl zzcclVar) {
        if (this.f26246h) {
            zzcmt a = m14066a("ifts");
            a.m14046a("reason", "exception");
            if (!TextUtils.isEmpty(zzcclVar.getMessage())) {
                a.m14046a("msg", zzcclVar.getMessage());
            }
            a.m14045b();
        }
    }

    /* renamed from: a */
    public final void m14067a(zzcmt zzcmtVar) {
        if (this.f26243e.f27589e0) {
            this.f26244f.m13870a(new zzcsv(zzp.m17962j().mo17091b(), this.f26242d.f27634b.f27630b.f27612b, zzcmtVar.m14044c(), zzcsq.f26479b));
            return;
        }
        zzcmtVar.m14045b();
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    /* renamed from: b */
    public final void mo14063b(zzva zzvaVar) {
        if (this.f26246h) {
            zzcmt a = m14066a("ifts");
            a.m14046a("reason", "adapter");
            int i = zzvaVar.f28995a;
            String str = zzvaVar.f28996b;
            int i2 = i;
            String str2 = str;
            if (zzvaVar.f28997c.equals("com.google.android.gms.ads")) {
                zzva zzvaVar2 = zzvaVar.f28998d;
                i2 = i;
                str2 = str;
                if (zzvaVar2 != null) {
                    i2 = i;
                    str2 = str;
                    if (!zzvaVar2.f28997c.equals("com.google.android.gms.ads")) {
                        zzva zzvaVar3 = zzvaVar.f28998d;
                        i2 = zzvaVar3.f28995a;
                        str2 = zzvaVar3.f28996b;
                    }
                }
            }
            if (i2 >= 0) {
                a.m14046a("arec", String.valueOf(i2));
            }
            String a2 = this.f26240b.m13388a(str2);
            if (a2 != null) {
                a.m14046a("areec", a2);
            }
            a.m14045b();
        }
    }

    /* renamed from: b */
    public final boolean m14064b() {
        if (this.f26245g == null) {
            synchronized (this) {
                if (this.f26245g == null) {
                    zzaaq<String> zzaaqVar = zzabb.f23719O0;
                    zzp.m17969c();
                    this.f26245g = Boolean.valueOf(m14065a((String) zzwm.m11166e().m16921a(zzaaqVar), zzayu.m16079o(this.f26239a)));
                }
            }
        }
        return this.f26245g.booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.zzbyc
    /* renamed from: c */
    public final void mo14062c() {
        if (m14064b()) {
            m14066a("adapter_shown").m14045b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    /* renamed from: m */
    public final void mo14061m() {
        if (this.f26246h) {
            zzcmt a = m14066a("ifts");
            a.m14046a("reason", "blocked");
            a.m14045b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void onAdClicked() {
        if (this.f26243e.f27589e0) {
            m14067a(m14066a("click"));
        }
    }
}
