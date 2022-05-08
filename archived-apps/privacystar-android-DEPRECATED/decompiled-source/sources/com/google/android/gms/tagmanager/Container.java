package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzl;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.internal.measurement.zzrs;
import com.google.android.gms.internal.measurement.zzrw;
import com.google.android.gms.internal.measurement.zzsa;
import com.google.android.gms.tagmanager.zzeh;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/Container.class */
public class Container {
    private final String zzazf;
    private final DataLayer zzazg;
    private zzfb zzazh;
    private Map<String, FunctionCallMacroCallback> zzazi;
    private Map<String, FunctionCallTagCallback> zzazj;
    private volatile long zzazk;
    private volatile String zzazl;
    private final Context zzri;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/Container$FunctionCallMacroCallback.class */
    public interface FunctionCallMacroCallback {
        Object getValue(String str, Map<String, Object> map);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/Container$FunctionCallTagCallback.class */
    public interface FunctionCallTagCallback {
        void execute(String str, Map<String, Object> map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/Container$zza.class */
    public final class zza implements zzan {
        private zza() {
        }

        @Override // com.google.android.gms.tagmanager.zzan
        public final Object zza(String str, Map<String, Object> map) {
            FunctionCallMacroCallback zzcy = Container.this.zzcy(str);
            if (zzcy == null) {
                return null;
            }
            return zzcy.getValue(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/Container$zzb.class */
    public final class zzb implements zzan {
        private zzb() {
        }

        @Override // com.google.android.gms.tagmanager.zzan
        public final Object zza(String str, Map<String, Object> map) {
            FunctionCallTagCallback zzcz = Container.this.zzcz(str);
            if (zzcz != null) {
                zzcz.execute(str, map);
            }
            return zzgj.zzqf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Container(Context context, DataLayer dataLayer, String str, long j, zzo zzoVar) {
        this.zzazi = new HashMap();
        this.zzazj = new HashMap();
        this.zzazl = "";
        this.zzri = context;
        this.zzazg = dataLayer;
        this.zzazf = str;
        this.zzazk = j;
        zzl zzlVar = zzoVar.zzqg;
        if (zzlVar == null) {
            throw new NullPointerException();
        }
        try {
            zza(zzrs.zza(zzlVar));
        } catch (zzsa e) {
            String valueOf = String.valueOf(zzlVar);
            String zzsaVar = e.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46 + String.valueOf(zzsaVar).length());
            sb.append("Not loading resource: ");
            sb.append(valueOf);
            sb.append(" because it is invalid: ");
            sb.append(zzsaVar);
            zzdi.m329e(sb.toString());
        }
        if (zzoVar.zzqf != null) {
            zzn[] zznVarArr = zzoVar.zzqf;
            ArrayList arrayList = new ArrayList();
            for (zzn zznVar : zznVarArr) {
                arrayList.add(zznVar);
            }
            zzng().zzf(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Container(Context context, DataLayer dataLayer, String str, long j, zzrw zzrwVar) {
        this.zzazi = new HashMap();
        this.zzazj = new HashMap();
        this.zzazl = "";
        this.zzri = context;
        this.zzazg = dataLayer;
        this.zzazf = str;
        this.zzazk = 0L;
        zza(zzrwVar);
    }

    private final void zza(zzrw zzrwVar) {
        this.zzazl = zzrwVar.getVersion();
        String str = this.zzazl;
        zzeh.zzpc().zzpd().equals(zzeh.zza.CONTAINER_DEBUG);
        zza(new zzfb(this.zzri, zzrwVar, this.zzazg, new zza(), new zzb(), new zzdq()));
        if (getBoolean("_gtm.loadEventEnabled")) {
            this.zzazg.pushEvent("gtm.load", DataLayer.mapOf("gtm.id", this.zzazf));
        }
    }

    private final void zza(zzfb zzfbVar) {
        synchronized (this) {
            this.zzazh = zzfbVar;
        }
    }

    private final zzfb zzng() {
        zzfb zzfbVar;
        synchronized (this) {
            zzfbVar = this.zzazh;
        }
        return zzfbVar;
    }

    public boolean getBoolean(String str) {
        zzfb zzng = zzng();
        if (zzng == null) {
            zzdi.m329e("getBoolean called for closed container.");
            return zzgj.zzqd().booleanValue();
        }
        try {
            return zzgj.zzg(zzng.zzdv(str).getObject()).booleanValue();
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 66);
            sb.append("Calling getBoolean() threw an exception: ");
            sb.append(message);
            sb.append(" Returning default value.");
            zzdi.m329e(sb.toString());
            return zzgj.zzqd().booleanValue();
        }
    }

    public String getContainerId() {
        return this.zzazf;
    }

    public double getDouble(String str) {
        zzfb zzng = zzng();
        if (zzng == null) {
            zzdi.m329e("getDouble called for closed container.");
            return zzgj.zzqc().doubleValue();
        }
        try {
            return zzgj.zzf(zzng.zzdv(str).getObject()).doubleValue();
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 65);
            sb.append("Calling getDouble() threw an exception: ");
            sb.append(message);
            sb.append(" Returning default value.");
            zzdi.m329e(sb.toString());
            return zzgj.zzqc().doubleValue();
        }
    }

    public long getLastRefreshTime() {
        return this.zzazk;
    }

    public long getLong(String str) {
        zzfb zzng = zzng();
        if (zzng == null) {
            zzdi.m329e("getLong called for closed container.");
            return zzgj.zzqb().longValue();
        }
        try {
            return zzgj.zze(zzng.zzdv(str).getObject()).longValue();
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 63);
            sb.append("Calling getLong() threw an exception: ");
            sb.append(message);
            sb.append(" Returning default value.");
            zzdi.m329e(sb.toString());
            return zzgj.zzqb().longValue();
        }
    }

    public String getString(String str) {
        zzfb zzng = zzng();
        if (zzng == null) {
            zzdi.m329e("getString called for closed container.");
            return zzgj.zzqf();
        }
        try {
            return zzgj.zzc(zzng.zzdv(str).getObject());
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 65);
            sb.append("Calling getString() threw an exception: ");
            sb.append(message);
            sb.append(" Returning default value.");
            zzdi.m329e(sb.toString());
            return zzgj.zzqf();
        }
    }

    public boolean isDefault() {
        return getLastRefreshTime() == 0;
    }

    public void registerFunctionCallMacroCallback(String str, FunctionCallMacroCallback functionCallMacroCallback) {
        if (functionCallMacroCallback == null) {
            throw new NullPointerException("Macro handler must be non-null");
        }
        synchronized (this.zzazi) {
            this.zzazi.put(str, functionCallMacroCallback);
        }
    }

    public void registerFunctionCallTagCallback(String str, FunctionCallTagCallback functionCallTagCallback) {
        if (functionCallTagCallback == null) {
            throw new NullPointerException("Tag callback must be non-null");
        }
        synchronized (this.zzazj) {
            this.zzazj.put(str, functionCallTagCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void release() {
        this.zzazh = null;
    }

    public void unregisterFunctionCallMacroCallback(String str) {
        synchronized (this.zzazi) {
            this.zzazi.remove(str);
        }
    }

    public void unregisterFunctionCallTagCallback(String str) {
        synchronized (this.zzazj) {
            this.zzazj.remove(str);
        }
    }

    @VisibleForTesting
    final FunctionCallMacroCallback zzcy(String str) {
        FunctionCallMacroCallback functionCallMacroCallback;
        synchronized (this.zzazi) {
            functionCallMacroCallback = this.zzazi.get(str);
        }
        return functionCallMacroCallback;
    }

    @VisibleForTesting
    public final FunctionCallTagCallback zzcz(String str) {
        FunctionCallTagCallback functionCallTagCallback;
        synchronized (this.zzazj) {
            functionCallTagCallback = this.zzazj.get(str);
        }
        return functionCallTagCallback;
    }

    @VisibleForTesting
    public final void zzda(String str) {
        zzng().zzda(str);
    }

    @VisibleForTesting
    public final String zznf() {
        return this.zzazl;
    }
}
