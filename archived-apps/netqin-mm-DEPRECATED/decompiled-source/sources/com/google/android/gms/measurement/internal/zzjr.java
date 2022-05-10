package com.google.android.gms.measurement.internal;

import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.measurement.zzml;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjr.class */
public final class zzjr extends AbstractC4750l7 {

    /* renamed from: d */
    public String f30099d;

    /* renamed from: e */
    public boolean f30100e;

    /* renamed from: f */
    public long f30101f;

    public zzjr(zzkl zzklVar) {
        super(zzklVar);
    }

    /* renamed from: a */
    public final Pair<String, Boolean> m8866a(String str, zzac zzacVar) {
        return (!zzml.m9520a() || !m24897h().m9354a(zzas.f29835J0) || zzacVar.m9309c()) ? m8865b(str) : new Pair<>("", false);
    }

    @Deprecated
    /* renamed from: a */
    public final String m8867a(String str) {
        mo9085c();
        String str2 = (String) m8865b(str).first;
        MessageDigest u = zzkv.m8671u();
        if (u == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, u.digest(str2.getBytes())));
    }

    @Deprecated
    /* renamed from: b */
    public final Pair<String, Boolean> m8865b(String str) {
        mo9085c();
        long a = mo8779z().mo17092a();
        if (this.f30099d != null && a < this.f30101f) {
            return new Pair<>(this.f30099d, Boolean.valueOf(this.f30100e));
        }
        this.f30101f = a + m24897h().m9343e(str);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(mo8846B());
            if (advertisingIdInfo != null) {
                this.f30099d = advertisingIdInfo.getId();
                this.f30100e = advertisingIdInfo.isLimitAdTrackingEnabled();
            }
            if (this.f30099d == null) {
                this.f30099d = "";
            }
        } catch (Exception e) {
            mo8789p().m9145x().m9142a("Unable to get advertising id", e);
            this.f30099d = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.f30099d, Boolean.valueOf(this.f30100e));
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7
    /* renamed from: q */
    public final boolean mo8746q() {
        return false;
    }
}
