package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.pm.PackageManager;
import com.mopub.common.privacy.AdvertisingId;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import p012b.p042i.p044i.C0869a;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzak.class */
public final class zzak extends AbstractC4747l4 {

    /* renamed from: c */
    public long f29799c;

    /* renamed from: d */
    public String f29800d;

    /* renamed from: e */
    public Boolean f29801e;

    /* renamed from: f */
    public AccountManager f29802f;

    /* renamed from: g */
    public Boolean f29803g;

    /* renamed from: h */
    public long f29804h;

    public zzak(zzfu zzfuVar) {
        super(zzfuVar);
    }

    /* renamed from: a */
    public final boolean m9301a(Context context) {
        if (this.f29801e == null) {
            this.f29801e = false;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    packageManager.getPackageInfo("com.google.android.gms", 128);
                    this.f29801e = true;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return this.f29801e.booleanValue();
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4
    /* renamed from: o */
    public final boolean mo8676o() {
        Calendar instance = Calendar.getInstance();
        this.f29799c = TimeUnit.MINUTES.convert(instance.get(15) + instance.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.f29800d = sb.toString();
        return false;
    }

    /* renamed from: q */
    public final long m9300q() {
        m24909l();
        return this.f29799c;
    }

    /* renamed from: r */
    public final String m9299r() {
        m24909l();
        return this.f29800d;
    }

    /* renamed from: s */
    public final long m9298s() {
        mo9085c();
        return this.f29804h;
    }

    /* renamed from: t */
    public final void m9297t() {
        mo9085c();
        this.f29803g = null;
        this.f29804h = 0L;
    }

    /* renamed from: u */
    public final boolean m9296u() {
        Account[] result;
        mo9085c();
        long b = mo8779z().mo17091b();
        if (b - this.f29804h > AdvertisingId.ONE_DAY_MS) {
            this.f29803g = null;
        }
        Boolean bool = this.f29803g;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (C0869a.m35690a(mo8846B(), "android.permission.GET_ACCOUNTS") != 0) {
            mo8789p().m9148u().m9143a("Permission error checking for dasher/unicorn accounts");
            this.f29804h = b;
            this.f29803g = false;
            return false;
        }
        if (this.f29802f == null) {
            this.f29802f = AccountManager.get(mo8846B());
        }
        try {
            result = this.f29802f.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
        } catch (AuthenticatorException | OperationCanceledException | IOException e) {
            mo8789p().m9151r().m9142a("Exception checking account types", e);
        }
        if (result == null || result.length <= 0) {
            Account[] result2 = this.f29802f.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
            if (result2 != null && result2.length > 0) {
                this.f29803g = true;
                this.f29804h = b;
                return true;
            }
            this.f29804h = b;
            this.f29803g = false;
            return false;
        }
        this.f29803g = true;
        this.f29804h = b;
        return true;
    }
}
