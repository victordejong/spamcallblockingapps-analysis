package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzag;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzq.class */
public abstract class zzq<T> implements Comparable<zzq<T>> {

    /* renamed from: a */
    private final zzag.C2429a f15346a;

    /* renamed from: b */
    private final int f15347b;

    /* renamed from: c */
    private final String f15348c;

    /* renamed from: d */
    private final int f15349d;

    /* renamed from: e */
    private final Object f15350e;

    /* renamed from: f */
    private zzy f15351f;

    /* renamed from: g */
    private Integer f15352g;

    /* renamed from: h */
    private zzu f15353h;

    /* renamed from: i */
    private boolean f15354i;

    /* renamed from: j */
    private boolean f15355j;

    /* renamed from: k */
    private boolean f15356k;

    /* renamed from: l */
    private boolean f15357l;

    /* renamed from: m */
    private zzad f15358m;

    /* renamed from: n */
    private zzd f15359n;

    /* renamed from: o */
    private aqh f15360o;

    public zzq(int i, String str, zzy zzyVar) {
        this.f15346a = zzag.C2429a.f10907a ? new zzag.C2429a() : null;
        this.f15350e = new Object();
        this.f15354i = true;
        this.f15355j = false;
        this.f15356k = false;
        this.f15357l = false;
        this.f15359n = null;
        this.f15347b = i;
        this.f15348c = str;
        this.f15351f = zzyVar;
        this.f15358m = new zzg();
        int i2 = 0;
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            i2 = 0;
            if (parse != null) {
                String host = parse.getHost();
                i2 = 0;
                if (host != null) {
                    i2 = host.hashCode();
                }
            }
        }
        this.f15349d = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract zzz<T> mo3114a(zzo zzoVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3117a() {
        aqh aqhVar;
        synchronized (this.f15350e) {
            aqhVar = this.f15360o;
        }
        if (aqhVar != null) {
            aqhVar.mo4756a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3116a(int i) {
        zzu zzuVar = this.f15353h;
        if (zzuVar != null) {
            zzuVar.m3004a(this, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3115a(aqh aqhVar) {
        synchronized (this.f15350e) {
            this.f15360o = aqhVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3112a(zzz<?> zzzVar) {
        aqh aqhVar;
        synchronized (this.f15350e) {
            aqhVar = this.f15360o;
        }
        if (aqhVar != null) {
            aqhVar.mo4755a(this, zzzVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract void mo3111a(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m3110b(String str) {
        zzu zzuVar = this.f15353h;
        if (zzuVar != null) {
            zzuVar.m3005a(this);
        }
        if (zzag.C2429a.f10907a) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new aqu(this, str, id));
                return;
            }
            this.f15346a.m4408a(str, id);
            this.f15346a.m4409a(toString());
        }
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        int ordinal;
        int ordinal2;
        zzq zzqVar = (zzq) obj;
        zzv zzvVar = zzv.NORMAL;
        zzv zzvVar2 = zzv.NORMAL;
        if (zzvVar == zzvVar2) {
            ordinal = this.f15352g.intValue();
            ordinal2 = zzqVar.f15352g.intValue();
        } else {
            ordinal = zzvVar2.ordinal();
            ordinal2 = zzvVar.ordinal();
        }
        return ordinal - ordinal2;
    }

    public Map<String, String> getHeaders() {
        return Collections.emptyMap();
    }

    public final int getMethod() {
        return this.f15347b;
    }

    public final String getUrl() {
        return this.f15348c;
    }

    public final boolean isCanceled() {
        synchronized (this.f15350e) {
        }
        return false;
    }

    public String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.f15349d));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        isCanceled();
        String str = this.f15348c;
        String valueOf2 = String.valueOf(zzv.NORMAL);
        String valueOf3 = String.valueOf(this.f15352g);
        StringBuilder sb = new StringBuilder("[ ] ".length() + 3 + String.valueOf(str).length() + String.valueOf(concat).length() + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length());
        sb.append("[ ] ");
        sb.append(str);
        sb.append(" ");
        sb.append(concat);
        sb.append(" ");
        sb.append(valueOf2);
        sb.append(" ");
        sb.append(valueOf3);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzq<?> zza(zzd zzdVar) {
        this.f15359n = zzdVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzq<?> zza(zzu zzuVar) {
        this.f15353h = zzuVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzq<?> zzb(int i) {
        this.f15352g = Integer.valueOf(i);
        return this;
    }

    public final void zzb(zzae zzaeVar) {
        zzy zzyVar;
        synchronized (this.f15350e) {
            zzyVar = this.f15351f;
        }
        if (zzyVar != null) {
            zzyVar.zzc(zzaeVar);
        }
    }

    public final void zzb(String str) {
        if (zzag.C2429a.f10907a) {
            this.f15346a.m4408a(str, Thread.currentThread().getId());
        }
    }

    public final int zzc() {
        return this.f15349d;
    }

    public final String zzd() {
        String str = this.f15348c;
        int i = this.f15347b;
        if (i == 0 || i == -1) {
            return str;
        }
        String num = Integer.toString(i);
        StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 1 + String.valueOf(str).length());
        sb.append(num);
        sb.append('-');
        sb.append(str);
        return sb.toString();
    }

    public final zzd zze() {
        return this.f15359n;
    }

    public byte[] zzf() {
        return null;
    }

    public final boolean zzg() {
        return this.f15354i;
    }

    public final int zzh() {
        return this.f15358m.zza();
    }

    public final zzad zzi() {
        return this.f15358m;
    }

    public final void zzj() {
        synchronized (this.f15350e) {
            this.f15356k = true;
        }
    }

    public final boolean zzk() {
        boolean z;
        synchronized (this.f15350e) {
            z = this.f15356k;
        }
        return z;
    }
}
