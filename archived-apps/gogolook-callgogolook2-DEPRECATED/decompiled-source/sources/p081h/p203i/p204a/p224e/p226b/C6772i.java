package p081h.p203i.p204a.p224e.p226b;

import android.accounts.Account;
import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.auth.TokenData;
import java.io.IOException;
import p081h.p203i.p204a.p224e.p235d.C6795e;
import p081h.p203i.p204a.p224e.p235d.C6797f;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.ServiceConnectionC6786a;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6996j;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p243o.C7051a;
/* renamed from: h.i.a.e.b.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/i.class */
public class C6772i {

    /* renamed from: a */
    public static final String[] f16643a = {"com.google", "com.google.work", "cn.google"};
    @SuppressLint({"InlinedApi"})

    /* renamed from: b */
    public static final String f16644b = "callerUid";
    @SuppressLint({"InlinedApi"})

    /* renamed from: c */
    public static final String f16645c = "androidPackageName";

    /* renamed from: d */
    public static final ComponentName f16646d = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");

    /* renamed from: e */
    public static final C7051a f16647e = new C7051a("Auth", "GoogleAuthUtil");

    /* renamed from: a */
    public static <T> T m21938a(Context context, ComponentName componentName, AbstractC6775l<T> lVar) throws IOException, C6710a {
        ServiceConnectionC6786a aVar = new ServiceConnectionC6786a();
        AbstractC6996j a = AbstractC6996j.m21349a(context);
        try {
            if (a.m21350a(componentName, aVar, "GoogleAuthUtil")) {
                try {
                    T a2 = lVar.mo21933a(aVar.m21913a());
                    a.m21347b(componentName, aVar, "GoogleAuthUtil");
                    return a2;
                } catch (RemoteException | InterruptedException e) {
                    f16647e.m21188d("GoogleAuthUtil", "Error on service connection.", e);
                    throw new IOException("Error on service connection.", e);
                }
            } else {
                throw new IOException("Could not bind to service.");
            }
        } catch (Throwable th) {
            a.m21347b(componentName, aVar, "GoogleAuthUtil");
            throw th;
        }
    }

    /* renamed from: a */
    public static <T> T m21936a(T t) throws IOException {
        if (t != null) {
            return t;
        }
        f16647e.m21187e("GoogleAuthUtil", "Binder call returned null.");
        throw new IOException("Service unavailable.");
    }

    /* renamed from: a */
    public static String m21940a(Context context, Account account, String str) throws IOException, C6713d, C6710a {
        return m21939a(context, account, str, new Bundle());
    }

    /* renamed from: a */
    public static String m21939a(Context context, Account account, String str, Bundle bundle) throws IOException, C6713d, C6710a {
        m21942a(account);
        return m21935b(context, account, str, bundle).m32085c();
    }

    /* renamed from: a */
    public static void m21942a(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("Account cannot be null");
        } else if (!TextUtils.isEmpty(account.name)) {
            for (String str : f16643a) {
                if (str.equals(account.type)) {
                    return;
                }
            }
            throw new IllegalArgumentException("Account type not supported");
        } else {
            throw new IllegalArgumentException("Account name cannot be empty!");
        }
    }

    /* renamed from: a */
    public static void m21941a(Context context, int i) throws C6710a {
        try {
            C6799g.ensurePlayServicesAvailable(context.getApplicationContext(), i);
        } catch (C6795e e) {
            throw new C6710a(e.getMessage());
        } catch (C6797f e2) {
            throw new C6712c(e2.m21876b(), e2.getMessage(), e2.m21867a());
        }
    }

    /* renamed from: a */
    public static void m21937a(Context context, String str) throws C6712c, C6710a, IOException {
        C7021t.m21279c("Calling this from your main thread can lead to deadlock");
        m21941a(context, 8400000);
        Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        if (!bundle.containsKey(f16645c)) {
            bundle.putString(f16645c, str2);
        }
        m21938a(context, f16646d, new C6774k(str, bundle));
    }

    /* renamed from: b */
    public static TokenData m21935b(Context context, Account account, String str, Bundle bundle) throws IOException, C6713d, C6710a {
        C7021t.m21279c("Calling this from your main thread can lead to deadlock");
        C7021t.m21287a(str, (Object) "Scope cannot be empty or null.");
        m21942a(account);
        m21941a(context, 8400000);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str2);
        if (TextUtils.isEmpty(bundle2.getString(f16645c))) {
            bundle2.putString(f16645c, str2);
        }
        bundle2.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        return (TokenData) m21938a(context, f16646d, new C6773j(account, str, bundle2));
    }
}
