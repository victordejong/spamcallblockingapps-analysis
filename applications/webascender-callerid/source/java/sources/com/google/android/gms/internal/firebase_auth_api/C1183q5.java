package com.google.android.gms.internal.firebase_auth_api;

import android.content.Context;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Log;
import com.google.android.gms.internal.firebase-auth-api.c2;
import com.google.android.gms.internal.firebase-auth-api.la;
import com.google.android.gms.internal.firebase-auth-api.m2;
import com.google.android.gms.internal.firebase-auth-api.nb;
import com.google.android.gms.internal.firebase-auth-api.q5;
import com.google.android.gms.internal.firebase-auth-api.r2;
import com.google.android.gms.internal.firebase-auth-api.r5;
import com.google.android.gms.internal.firebase-auth-api.s2;
import com.google.android.gms.internal.firebase-auth-api.v5;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.ProviderException;
import javax.crypto.KeyGenerator;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.q5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/q5.class */
public final class C1183q5 {

    /* renamed from: e */
    private r2 f3790e;

    /* renamed from: f */
    private v5 f3791f = null;

    /* renamed from: a */
    private s2 f3786a = null;

    /* renamed from: b */
    private String f3787b = null;

    /* renamed from: c */
    private c2 f3788c = null;

    /* renamed from: d */
    private m2 f3789d = null;

    /* renamed from: h */
    private final c2 m2511h() throws GeneralSecurityException {
        String str;
        String str2;
        String str3;
        if (Build.VERSION.SDK_INT < 23) {
            str = C1190r5.f3795c;
            Log.w(str, "Android Keystore requires at least Android M");
            return null;
        }
        u5 u5Var = new u5();
        boolean a = u5Var.a(this.f3787b);
        if (!a) {
            try {
                String str4 = this.f3787b;
                if (new u5().a(str4)) {
                    throw new IllegalArgumentException(String.format("cannot generate a new key %s because it already exists; please delete it with deleteKey() and try again", str4));
                }
                String m2774c = C1122kd.m2774c("android-keystore://", str4);
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                keyGenerator.init(new KeyGenParameterSpec.Builder(m2774c, 3).setKeySize(256).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
                keyGenerator.generateKey();
            } catch (GeneralSecurityException | ProviderException e) {
                str3 = C1190r5.f3795c;
                Log.w(str3, "cannot use Android Keystore, it'll be disabled", e);
                return null;
            }
        }
        try {
            return u5Var.h(this.f3787b);
        } catch (GeneralSecurityException | ProviderException e2) {
            if (a) {
                throw new KeyStoreException(String.format("the master key %s exists but is unusable", this.f3787b), e2);
            }
            str2 = C1190r5.f3795c;
            Log.w(str2, "cannot use Android Keystore, it'll be disabled", e2);
            return null;
        }
    }

    /* renamed from: i */
    private final r2 m2510i() throws GeneralSecurityException, IOException {
        String str;
        c2 c2Var = this.f3788c;
        if (c2Var != null) {
            try {
                return C1189r2.m2484a(C1182q2.m2519i(this.f3791f, c2Var));
            } catch (zzaal | GeneralSecurityException e) {
                str = C1190r5.f3795c;
                Log.w(str, "cannot decrypt keyset: ", e);
            }
        }
        return C1189r2.m2484a(C1041e2.m2946b(this.f3791f));
    }

    /* renamed from: a */
    public final q5 m2518a(Context context, String str, String str2) throws IOException {
        if (context != null) {
            this.f3791f = new C1227v5(context, "GenericIdpKeyset", str2);
            this.f3786a = new w5(context, "GenericIdpKeyset", str2);
            return this;
        }
        throw new IllegalArgumentException("need an Android context");
    }

    /* renamed from: b */
    public final q5 m2517b(String str) {
        if (str.startsWith("android-keystore://")) {
            this.f3787b = str;
            return this;
        }
        throw new IllegalArgumentException("key URI must start with android-keystore://");
    }

    @Deprecated
    /* renamed from: c */
    public final q5 m2516c(la laVar) {
        String y = laVar.y();
        byte[] m2719v = laVar.z().m2719v();
        nb A = laVar.A();
        int i = C1190r5.f3796d;
        nb nbVar = nb.zza;
        int ordinal = A.ordinal();
        int i2 = 4;
        if (ordinal == 1) {
            i2 = 1;
        } else if (ordinal == 2) {
            i2 = 2;
        } else if (ordinal == 3) {
            i2 = 3;
        } else if (ordinal != 4) {
            throw new IllegalArgumentException("Unknown output prefix type");
        }
        this.f3789d = C1141m2.m2741b(y, m2719v, i2);
        return this;
    }

    /* renamed from: d */
    public final r5 m2515d() throws GeneralSecurityException, IOException {
        C1189r2 c1189r2;
        C1190r5 c1190r5;
        String str;
        synchronized (this) {
            if (this.f3787b != null) {
                this.f3788c = m2511h();
            }
            try {
                c1189r2 = m2510i();
            } catch (FileNotFoundException e) {
                str = C1190r5.f3795c;
                Log.w(str, "keyset not found, will generate a new one", e);
                if (this.f3789d == null) {
                    throw new GeneralSecurityException("cannot read or generate keyset");
                }
                c1189r2 = C1189r2.m2483b();
                c1189r2.m2481d(this.f3789d);
                c1189r2.m2479f(c1189r2.m2482c().m2525c().y(0).y());
                if (this.f3788c != null) {
                    c1189r2.m2482c().m2524d(this.f3786a, this.f3788c);
                } else {
                    C1041e2.m2947a(c1189r2.m2482c(), this.f3786a);
                }
            }
            this.f3790e = c1189r2;
            c1190r5 = new C1190r5(this, null);
        }
        return c1190r5;
    }
}
