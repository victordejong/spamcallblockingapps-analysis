package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.api.Releasable;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcn.class */
public abstract class zzbcn implements Releasable {

    /* renamed from: a */
    protected Context f11712a;

    /* renamed from: b */
    protected String f11713b;

    /* renamed from: c */
    protected WeakReference<zzbaz> f11714c;

    public zzbcn(zzbaz zzbazVar) {
        this.f11712a = zzbazVar.getContext();
        this.f11713b = zzq.zzkq().zzr(this.f11712a, zzbazVar.zzyr().zzbma);
        this.f11714c = new WeakReference<>(zzbazVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m4130a(zzbcn zzbcnVar, String str, Map map) {
        zzbaz zzbazVar = zzbcnVar.f11714c.get();
        if (zzbazVar != null) {
            zzbazVar.zza(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    public static /* synthetic */ String m4128b(String str) {
        char c;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 3387234:
                if (str.equals("noop")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 96784904:
                if (str.equals("error")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str2 = "internal";
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                break;
            case 6:
            case 7:
                str2 = "io";
                break;
            case '\b':
            case '\t':
                str2 = "network";
                break;
            case '\n':
            case 11:
                str2 = "policy";
                break;
            default:
                str2 = "internal";
                break;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public String mo4122a(String str) {
        zzve.zzou();
        return zzayk.zzes(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m4129a(String str, String str2, int i) {
        zzayk.zzyu.post(new RunnableC1949if(this, str, str2, i));
    }

    public abstract void abort();

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    public final void zza(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        zzayk.zzyu.post(new RunnableC1946ic(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    public final void zza(String str, String str2, long j, long j2, boolean z, int i, int i2) {
        zzayk.zzyu.post(new RunnableC1947id(this, str, str2, j, j2, z, i, i2));
    }

    public final void zza(String str, String str2, String str3, String str4) {
        zzayk.zzyu.post(new RunnableC1950ig(this, str, str2, str3, str4));
    }

    public final void zzb(String str, String str2, long j) {
        zzayk.zzyu.post(new RunnableC1948ie(this, str, str2, j));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzcv(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzcw(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzcx(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzcy(int i) {
    }

    public boolean zze(String str, String[] strArr) {
        return zzfi(str);
    }

    public abstract boolean zzfi(String str);
}
