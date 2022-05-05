package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdpb;
import com.google.android.gms.security.ProviderInstaller;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoy.class */
public final class zzdoy<T_WRAPPER extends zzdpb<T_ENGINE>, T_ENGINE> {

    /* renamed from: a */
    private static final Logger f14431a = Logger.getLogger(zzdoy.class.getName());

    /* renamed from: b */
    private static final List<Provider> f14432b;

    /* renamed from: c */
    private static final zzdoy<zzdpg, Signature> f14433c;

    /* renamed from: d */
    private static final zzdoy<zzdph, MessageDigest> f14434d;
    public static final zzdoy<zzdpa, Cipher> zzhgg;
    public static final zzdoy<zzdpe, Mac> zzhgh;
    public static final zzdoy<zzdpd, KeyAgreement> zzhgk;
    public static final zzdoy<zzdpf, KeyPairGenerator> zzhgl;
    public static final zzdoy<zzdpc, KeyFactory> zzhgm;

    /* renamed from: e */
    private T_WRAPPER f14435e;

    /* renamed from: f */
    private List<Provider> f14436f = f14432b;

    /* renamed from: g */
    private boolean f14437g = true;

    static {
        if (zzdpp.zzaxh()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                String str = new String[]{ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL"}[i];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f14431a.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            f14432b = arrayList;
        } else {
            f14432b = new ArrayList();
        }
        zzhgg = new zzdoy<>(new zzdpa());
        zzhgh = new zzdoy<>(new zzdpe());
        f14433c = new zzdoy<>(new zzdpg());
        f14434d = new zzdoy<>(new zzdph());
        zzhgk = new zzdoy<>(new zzdpd());
        zzhgl = new zzdoy<>(new zzdpf());
        zzhgm = new zzdoy<>(new zzdpc());
    }

    private zzdoy(T_WRAPPER t_wrapper) {
        this.f14435e = t_wrapper;
    }

    public final T_ENGINE zzhd(String str) {
        Exception e = null;
        for (Provider provider : this.f14436f) {
            try {
                return (T_ENGINE) this.f14435e.zza(str, provider);
            } catch (Exception e2) {
                e = e2;
                if (e == null) {
                }
            }
        }
        if (this.f14437g) {
            return (T_ENGINE) this.f14435e.zza(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", e);
    }
}
