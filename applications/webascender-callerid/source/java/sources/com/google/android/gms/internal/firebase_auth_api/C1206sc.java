package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.sc;
import com.google.android.gms.internal.firebase_auth_api.AbstractC1265yc;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.sc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/sc.class */
public final class C1206sc<T_WRAPPER extends AbstractC1265yc<T_ENGINE>, T_ENGINE> {

    /* renamed from: c */
    private static final Logger f3801c = Logger.getLogger(sc.class.getName());

    /* renamed from: d */
    private static final List<Provider> f3802d;

    /* renamed from: e */
    public static final C1206sc<tc, Cipher> f3803e;

    /* renamed from: f */
    public static final C1206sc<xc, Mac> f3804f;

    /* renamed from: g */
    public static final C1206sc<uc, KeyAgreement> f3805g;

    /* renamed from: h */
    public static final C1206sc<wc, KeyPairGenerator> f3806h;

    /* renamed from: i */
    public static final C1206sc<vc, KeyFactory> f3807i;

    /* renamed from: a */
    private final T_WRAPPER f3808a;

    /* renamed from: b */
    private final List<Provider> f3809b = f3802d;

    static {
        if (C1113jd.m2792a()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                String str = new String[]{"GmsCore_OpenSSL", "AndroidOpenSSL"}[i];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f3801c.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            f3802d = arrayList;
        } else {
            f3802d = new ArrayList();
        }
        f3803e = new C1206sc<>(new tc());
        f3804f = new C1206sc<>(new xc());
        f3805g = new C1206sc<>(new uc());
        f3806h = new C1206sc<>(new wc());
        f3807i = new C1206sc<>(new vc());
    }

    public C1206sc(T_WRAPPER t_wrapper) {
        this.f3808a = t_wrapper;
    }

    /* renamed from: a */
    public final T_ENGINE m2457a(String str) throws GeneralSecurityException {
        for (Provider provider : this.f3809b) {
            try {
                return (T_ENGINE) this.f3808a.m2317a(str, provider);
            } catch (Exception e) {
            }
        }
        return (T_ENGINE) this.f3808a.m2317a(str, null);
    }
}
