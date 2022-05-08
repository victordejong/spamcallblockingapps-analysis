package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzm.class */
public class zzm extends zzgh {
    private static final String zzazb;
    private final zza zzazd;
    private final Context zzri;

    /* renamed from: ID */
    private static final String f206ID = com.google.android.gms.internal.measurement.zza.ARBITRARY_PIXEL.toString();
    private static final String URL = zzb.URL.toString();
    private static final String zzayz = zzb.ADDITIONAL_PARAMS.toString();
    private static final String zzaza = zzb.UNREPEATABLE.toString();
    private static final Set<String> zzazc = new HashSet();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzm$zza.class */
    public interface zza {
        zzbx zznc();
    }

    static {
        String str = f206ID;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17);
        sb.append("gtm_");
        sb.append(str);
        sb.append("_unrepeatable");
        zzazb = sb.toString();
    }

    public zzm(Context context) {
        this(context, new zzn(context));
    }

    @VisibleForTesting
    private zzm(Context context, zza zzaVar) {
        super(f206ID, URL);
        this.zzazd = zzaVar;
        this.zzri = context;
    }

    private final boolean zzcx(String str) {
        synchronized (this) {
            if (zzazc.contains(str)) {
                return true;
            }
            if (!this.zzri.getSharedPreferences(zzazb, 0).contains(str)) {
                return false;
            }
            zzazc.add(str);
            return true;
        }
    }

    @Override // com.google.android.gms.tagmanager.zzgh
    public final void zzg(Map<String, zzp> map) {
        String zzc = map.get(zzaza) != null ? zzgj.zzc(map.get(zzaza)) : null;
        if (zzc == null || !zzcx(zzc)) {
            Uri.Builder buildUpon = Uri.parse(zzgj.zzc(map.get(URL))).buildUpon();
            zzp zzpVar = map.get(zzayz);
            if (zzpVar != null) {
                Object zzh = zzgj.zzh(zzpVar);
                if (!(zzh instanceof List)) {
                    String valueOf = String.valueOf(buildUpon.build().toString());
                    zzdi.m329e(valueOf.length() != 0 ? "ArbitraryPixel: additional params not a list: not sending partial hit: ".concat(valueOf) : new String("ArbitraryPixel: additional params not a list: not sending partial hit: "));
                    return;
                }
                for (Object obj : (List) zzh) {
                    if (!(obj instanceof Map)) {
                        String valueOf2 = String.valueOf(buildUpon.build().toString());
                        zzdi.m329e(valueOf2.length() != 0 ? "ArbitraryPixel: additional params contains non-map: not sending partial hit: ".concat(valueOf2) : new String("ArbitraryPixel: additional params contains non-map: not sending partial hit: "));
                        return;
                    }
                    for (Map.Entry entry : ((Map) obj).entrySet()) {
                        buildUpon.appendQueryParameter(entry.getKey().toString(), entry.getValue().toString());
                    }
                }
            }
            String uri = buildUpon.build().toString();
            this.zzazd.zznc().zzdk(uri);
            String valueOf3 = String.valueOf(uri);
            zzdi.m328v(valueOf3.length() != 0 ? "ArbitraryPixel: url = ".concat(valueOf3) : new String("ArbitraryPixel: url = "));
            if (zzc != null) {
                synchronized (zzm.class) {
                    try {
                        zzazc.add(zzc);
                        zzft.zza(this.zzri, zzazb, zzc, "true");
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }
}
