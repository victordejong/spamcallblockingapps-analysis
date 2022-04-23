package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.core.content.C0646b;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzah.class */
public final class zzah extends AbstractC2764er {

    /* renamed from: a */
    private long f17094a;

    /* renamed from: b */
    private String f17095b;

    /* renamed from: c */
    private Boolean f17096c;

    /* renamed from: d */
    private AccountManager f17097d;

    /* renamed from: e */
    private Boolean f17098e;

    /* renamed from: f */
    private long f17099f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzah(zzga zzgaVar) {
        super(zzgaVar);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2764er
    /* renamed from: a */
    protected final boolean mo1646a() {
        Calendar instance = Calendar.getInstance();
        this.f17094a = TimeUnit.MINUTES.convert(instance.get(15) + instance.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.f17095b = sb.toString();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m1998c() {
        zzd();
        this.f17098e = null;
        this.f17099f = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m1997d() {
        zzd();
        long currentTimeMillis = zzm().currentTimeMillis();
        if (currentTimeMillis - this.f17099f > 86400000) {
            this.f17098e = null;
        }
        Boolean bool = this.f17098e;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (C0646b.m8618a(zzn(), "android.permission.GET_ACCOUNTS") != 0) {
            zzr().zzj().zza("Permission error checking for dasher/unicorn accounts");
        } else {
            if (this.f17097d == null) {
                this.f17097d = AccountManager.get(zzn());
            }
            try {
                Account[] result = this.f17097d.getAccountsByTypeAndFeatures(AccountType.GOOGLE, new String[]{"service_HOSTED"}, null, null).getResult();
                if (result == null || result.length <= 0) {
                    Account[] result2 = this.f17097d.getAccountsByTypeAndFeatures(AccountType.GOOGLE, new String[]{"service_uca"}, null, null).getResult();
                    if (result2 != null && result2.length > 0) {
                        this.f17098e = Boolean.TRUE;
                        this.f17099f = currentTimeMillis;
                        return true;
                    }
                } else {
                    this.f17098e = Boolean.TRUE;
                    this.f17099f = currentTimeMillis;
                    return true;
                }
            } catch (AuthenticatorException | OperationCanceledException | IOException e) {
                zzr().zzg().zza("Exception checking account types", e);
            }
        }
        this.f17099f = currentTimeMillis;
        this.f17098e = Boolean.FALSE;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j_ */
    public final long m1996j_() {
        zzd();
        return this.f17099f;
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final boolean zza(Context context) {
        if (this.f17096c == null) {
            zzu();
            this.f17096c = Boolean.FALSE;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    packageManager.getPackageInfo("com.google.android.gms", 128);
                    this.f17096c = Boolean.TRUE;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return this.f17096c.booleanValue();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    public final long zzf() {
        m2056l();
        return this.f17094a;
    }

    public final String zzg() {
        m2056l();
        return this.f17095b;
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
