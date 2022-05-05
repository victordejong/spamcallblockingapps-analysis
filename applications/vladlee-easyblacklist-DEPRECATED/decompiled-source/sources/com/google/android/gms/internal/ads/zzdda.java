package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdda.class */
public final class zzdda {

    /* renamed from: a */
    private final Executor f14197a;

    /* renamed from: b */
    private final zzayy f14198b;

    /* renamed from: c */
    private final zzclp f14199c;

    /* renamed from: d */
    private final String f14200d;

    /* renamed from: e */
    private final String f14201e;

    /* renamed from: f */
    private final String f14202f;

    /* renamed from: g */
    private final Context f14203g;

    /* renamed from: h */
    private final zzczs f14204h;

    /* renamed from: i */
    private final Clock f14205i;

    /* renamed from: j */
    private final zzdq f14206j;

    public zzdda(Executor executor, zzayy zzayyVar, zzclp zzclpVar, zzazb zzazbVar, String str, String str2, Context context, zzczs zzczsVar, Clock clock, zzdq zzdqVar) {
        this.f14197a = executor;
        this.f14198b = zzayyVar;
        this.f14199c = zzclpVar;
        this.f14200d = zzazbVar.zzbma;
        this.f14201e = str;
        this.f14202f = str2;
        this.f14203g = context;
        this.f14204h = zzczsVar;
        this.f14205i = clock;
        this.f14206j = zzdqVar;
    }

    /* renamed from: a */
    private static String m3615a(String str, String str2, String str3) {
        String str4 = str3;
        if (TextUtils.isEmpty(str3)) {
            str4 = "";
        }
        return str.replaceAll(str2, str4);
    }

    /* renamed from: b */
    private static String m3614b(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (zzayo.isEnabled()) {
                str2 = "fakeForAdDebugLog";
            }
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3616a(String str) {
        this.f14198b.zzen(str);
    }

    public final void zza(zzczt zzcztVar, zzczl zzczlVar, List<String> list) {
        zza(zzcztVar, zzczlVar, false, "", list);
    }

    public final void zza(zzczt zzcztVar, zzczl zzczlVar, List<String> list, zzare zzareVar) {
        long currentTimeMillis = this.f14205i.currentTimeMillis();
        try {
            String type = zzareVar.getType();
            String num = Integer.toString(zzareVar.getAmount());
            ArrayList arrayList = new ArrayList();
            zzczs zzczsVar = this.f14204h;
            String str = "";
            String b = zzczsVar == null ? "" : m3614b(zzczsVar.zzdnv);
            zzczs zzczsVar2 = this.f14204h;
            if (zzczsVar2 != null) {
                str = m3614b(zzczsVar2.zzdnw);
            }
            for (String str2 : list) {
                arrayList.add(zzauk.zzb(m3615a(m3615a(m3615a(m3615a(m3615a(m3615a(str2, "@gw_rwd_userid@", Uri.encode(b)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(currentTimeMillis)), "@gw_rwd_itm@", Uri.encode(type)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.f14200d), this.f14203g, zzczlVar.zzdll));
            }
            zzg(arrayList);
        } catch (RemoteException e) {
        }
    }

    public final void zza(zzczt zzcztVar, zzczl zzczlVar, boolean z, String str, List<String> list) {
        ArrayList arrayList = new ArrayList();
        String str2 = z ? "1" : "0";
        for (String str3 : list) {
            String a = m3615a(m3615a(m3615a(str3, "@gw_adlocid@", zzcztVar.zzgmh.zzfgl.zzgmm), "@gw_adnetrefresh@", str2), "@gw_sdkver@", this.f14200d);
            String str4 = a;
            if (zzczlVar != null) {
                str4 = zzauk.zzb(m3615a(m3615a(m3615a(a, "@gw_qdata@", zzczlVar.zzdbw), "@gw_adnetid@", zzczlVar.zzaez), "@gw_allocid@", zzczlVar.zzdcm), this.f14203g, zzczlVar.zzdll);
            }
            String a2 = m3615a(m3615a(m3615a(str4, "@gw_adnetstatus@", this.f14199c.zzamh()), "@gw_seqnum@", this.f14201e), "@gw_sessid@", this.f14202f);
            String str5 = a2;
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcls)).booleanValue()) {
                str5 = a2;
                if (!TextUtils.isEmpty(str)) {
                    str5 = a2;
                    if (this.f14206j.zzb(Uri.parse(a2))) {
                        str5 = Uri.parse(a2).buildUpon().appendQueryParameter("ms", str).build().toString();
                    }
                }
            }
            arrayList.add(str5);
        }
        zzg(arrayList);
    }

    public final void zzen(final String str) {
        this.f14197a.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.aap

            /* renamed from: a */
            private final zzdda f7140a;

            /* renamed from: b */
            private final String f7141b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7140a = this;
                this.f7141b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7140a.m3616a(this.f7141b);
            }
        });
    }

    public final void zzg(List<String> list) {
        for (String str : list) {
            zzen(str);
        }
    }
}
