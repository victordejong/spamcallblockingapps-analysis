package com.facebook.login;

import android.app.Activity;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.appcompat.widget.ActivityChooserModel;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.Profile;
import com.facebook.internal.C2398d;
import com.facebook.internal.C2416h0;
import com.facebook.internal.C2486r;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p081h.p154f.AbstractC6123e;
import p081h.p154f.AbstractC6128h;
import p081h.p154f.C6125f;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.login.g */
/* loaded from: classes-dex2jar.jar:com/facebook/login/g.class */
public class C2539g {

    /* renamed from: e */
    public static final Set<String> f3351e = m34345c();

    /* renamed from: f */
    public static volatile C2539g f3352f;

    /* renamed from: a */
    public EnumC2534d f3353a = EnumC2534d.NATIVE_WITH_FALLBACK;

    /* renamed from: b */
    public EnumC2531a f3354b = EnumC2531a.FRIENDS;

    /* renamed from: d */
    public String f3356d = "rerequest";

    /* renamed from: c */
    public final SharedPreferences f3355c = C6135n.m23746e().getSharedPreferences("com.facebook.loginManager", 0);

    /* renamed from: com.facebook.login.g$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/g$a.class */
    public class C2540a implements C2398d.AbstractC2399a {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6128h f3357a;

        public C2540a(AbstractC6128h hVar) {
            this.f3357a = hVar;
        }

        @Override // com.facebook.internal.C2398d.AbstractC2399a
        /* renamed from: a */
        public boolean mo34031a(int i, Intent intent) {
            return C2539g.this.m34368a(i, intent, this.f3357a);
        }
    }

    /* renamed from: com.facebook.login.g$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/g$b.class */
    public static final class C2541b extends HashSet<String> {
        public C2541b() {
            add("ads_management");
            add("create_event");
            add("rsvp_event");
        }
    }

    /* renamed from: com.facebook.login.g$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/g$c.class */
    public class C2542c implements C2398d.AbstractC2399a {
        public C2542c() {
        }

        @Override // com.facebook.internal.C2398d.AbstractC2399a
        /* renamed from: a */
        public boolean mo34031a(int i, Intent intent) {
            return C2539g.this.m34369a(i, intent);
        }
    }

    /* renamed from: com.facebook.login.g$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/g$d.class */
    public static class C2543d implements AbstractC2547i {

        /* renamed from: a */
        public final Activity f3360a;

        public C2543d(Activity activity) {
            C2416h0.m34791a(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            this.f3360a = activity;
        }

        @Override // com.facebook.login.AbstractC2547i
        /* renamed from: e */
        public Activity mo34339e() {
            return this.f3360a;
        }

        @Override // com.facebook.login.AbstractC2547i
        public void startActivityForResult(Intent intent, int i) {
            this.f3360a.startActivityForResult(intent, i);
        }
    }

    /* renamed from: com.facebook.login.g$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/g$e.class */
    public static class C2544e implements AbstractC2547i {

        /* renamed from: a */
        public final C2486r f3361a;

        public C2544e(C2486r rVar) {
            C2416h0.m34791a(rVar, "fragment");
            this.f3361a = rVar;
        }

        @Override // com.facebook.login.AbstractC2547i
        /* renamed from: e */
        public Activity mo34339e() {
            return this.f3361a.m34605a();
        }

        @Override // com.facebook.login.AbstractC2547i
        public void startActivityForResult(Intent intent, int i) {
            this.f3361a.m34604a(intent, i);
        }
    }

    /* renamed from: com.facebook.login.g$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/g$f.class */
    public static class C2545f {

        /* renamed from: a */
        public static C2538f f3362a;

        /* renamed from: b */
        public static C2538f m34341b(Context context) {
            synchronized (C2545f.class) {
                if (context == null) {
                    try {
                        context = C6135n.m23746e();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (context == null) {
                    return null;
                }
                if (f3362a == null) {
                    f3362a = new C2538f(context, C6135n.m23745f());
                }
                return f3362a;
            }
        }
    }

    public C2539g() {
        C2416h0.m34784c();
    }

    /* renamed from: a */
    public static C2546h m34358a(LoginClient.Request request, AccessToken accessToken) {
        Set<String> u = request.m34439u();
        HashSet hashSet = new HashSet(accessToken.m35493t());
        if (request.m34437w()) {
            hashSet.retainAll(u);
        }
        HashSet hashSet2 = new HashSet(u);
        hashSet2.removeAll(hashSet);
        return new C2546h(accessToken, hashSet, hashSet2);
    }

    /* renamed from: b */
    public static C2539g m34350b() {
        if (f3352f == null) {
            synchronized (C2539g.class) {
                try {
                    if (f3352f == null) {
                        f3352f = new C2539g();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3352f;
    }

    /* renamed from: b */
    public static boolean m34347b(String str) {
        return str != null && (str.startsWith("publish") || str.startsWith("manage") || f3351e.contains(str));
    }

    /* renamed from: c */
    public static Set<String> m34345c() {
        return Collections.unmodifiableSet(new C2541b());
    }

    /* renamed from: a */
    public Intent m34359a(LoginClient.Request request) {
        Intent intent = new Intent();
        intent.setClass(C6135n.m23746e(), FacebookActivity.class);
        intent.setAction(request.m34440t().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable("request", request);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle);
        return intent;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.facebook.login.d, java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.facebook.login.LoginClient.Request mo34352a(java.util.Collection<java.lang.String> r10) {
        /*
            r9 = this;
            r0 = r9
            com.facebook.login.d r0 = r0.f3353a
            r11 = r0
            java.util.HashSet r0 = new java.util.HashSet
            r12 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0015
            r0 = r12
            r1 = r10
            r0.<init>(r1)
            goto L_0x0019
        L_0x0015:
            r0 = r12
            r0.<init>()
        L_0x0019:
            com.facebook.login.LoginClient$Request r0 = new com.facebook.login.LoginClient$Request
            r1 = r0
            r2 = r11
            r3 = r12
            java.util.Set r3 = java.util.Collections.unmodifiableSet(r3)
            r4 = r9
            com.facebook.login.a r4 = r4.f3354b
            r5 = r9
            java.lang.String r5 = r5.f3356d
            java.lang.String r6 = p081h.p154f.C6135n.m23745f()
            java.util.UUID r7 = java.util.UUID.randomUUID()
            java.lang.String r7 = r7.toString()
            r1.<init>(r2, r3, r4, r5, r6, r7)
            r10 = r0
            r0 = r10
            boolean r1 = com.facebook.AccessToken.m35506C()
            r0.m34447a(r1)
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.C2539g.mo34352a(java.util.Collection):com.facebook.login.LoginClient$Request");
    }

    /* renamed from: a */
    public C2539g m34357a(EnumC2531a aVar) {
        this.f3354b = aVar;
        return this;
    }

    /* renamed from: a */
    public C2539g m34356a(EnumC2534d dVar) {
        this.f3353a = dVar;
        return this;
    }

    /* renamed from: a */
    public C2539g m34353a(String str) {
        this.f3356d = str;
        return this;
    }

    /* renamed from: a */
    public void m34370a() {
        AccessToken.m35498b(null);
        Profile.m35388a(null);
        m34351a(false);
    }

    /* renamed from: a */
    public void m34367a(Activity activity, Collection<String> collection) {
        m34355a(new C2543d(activity), mo34352a(collection));
    }

    /* renamed from: a */
    public void m34366a(Fragment fragment, Collection<String> collection) {
        m34360a(new C2486r(fragment), collection);
    }

    /* renamed from: a */
    public final void m34365a(Context context, LoginClient.Request request) {
        C2538f b = C2545f.m34341b(context);
        if (b != null && request != null) {
            b.m34378a(request);
        }
    }

    /* renamed from: a */
    public final void m34364a(Context context, LoginClient.Result.EnumC2524b bVar, Map<String, String> map, Exception exc, boolean z, LoginClient.Request request) {
        C2538f b = C2545f.m34341b(context);
        if (b != null) {
            if (request == null) {
                b.m34371c("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("try_login_activity", z ? "1" : "0");
            b.m34373a(request.m34446b(), hashMap, bVar, map, exc);
        }
    }

    /* renamed from: a */
    public void m34362a(androidx.fragment.app.Fragment fragment, Collection<String> collection) {
        m34360a(new C2486r(fragment), collection);
    }

    /* renamed from: a */
    public final void m34361a(AccessToken accessToken, LoginClient.Request request, C6131k kVar, boolean z, AbstractC6128h<C2546h> hVar) {
        if (accessToken != null) {
            AccessToken.m35498b(accessToken);
            Profile.m35385q();
        }
        if (hVar != null) {
            C2546h a = accessToken != null ? m34358a(request, accessToken) : null;
            if (z || (a != null && a.m34340a().size() == 0)) {
                hVar.onCancel();
            } else if (kVar != null) {
                hVar.mo2982a(kVar);
            } else if (accessToken != null) {
                m34351a(true);
                hVar.mo2981a((AbstractC6128h<C2546h>) a);
            }
        }
    }

    /* renamed from: a */
    public void m34360a(C2486r rVar, Collection<String> collection) {
        m34355a(new C2544e(rVar), mo34352a(collection));
    }

    /* renamed from: a */
    public final void m34355a(AbstractC2547i iVar, LoginClient.Request request) throws C6131k {
        m34365a(iVar.mo34339e(), request);
        C2398d.m34901b(C2398d.EnumC2400b.Login.m34900a(), new C2542c());
        if (!m34348b(iVar, request)) {
            C6131k kVar = new C6131k("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            m34364a(iVar.mo34339e(), LoginClient.Result.EnumC2524b.ERROR, null, kVar, false, request);
            throw kVar;
        }
    }

    /* renamed from: a */
    public void m34354a(AbstractC6123e eVar, AbstractC6128h<C2546h> hVar) {
        if (eVar instanceof C2398d) {
            ((C2398d) eVar).m34904a(C2398d.EnumC2400b.Login.m34900a(), new C2540a(hVar));
            return;
        }
        throw new C6131k("Unexpected CallbackManager, please use the provided Factory.");
    }

    /* renamed from: a */
    public final void m34351a(boolean z) {
        SharedPreferences.Editor edit = this.f3355c.edit();
        edit.putBoolean("express_login_allowed", z);
        edit.apply();
    }

    /* renamed from: a */
    public boolean m34369a(int i, Intent intent) {
        return m34368a(i, intent, null);
    }

    /* renamed from: a */
    public boolean m34368a(int i, Intent intent, AbstractC6128h<C2546h> hVar) {
        Map<String, String> map;
        AccessToken accessToken;
        LoginClient.Request request;
        LoginClient.Result.EnumC2524b bVar = LoginClient.Result.EnumC2524b.ERROR;
        r15 = null;
        C6131k kVar = null;
        kVar = null;
        r17 = false;
        boolean z = false;
        if (intent != null) {
            LoginClient.Result result = (LoginClient.Result) intent.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (result != null) {
                request = result.f3301e;
                bVar = result.f3297a;
                if (i == -1) {
                    if (bVar == LoginClient.Result.EnumC2524b.SUCCESS) {
                        accessToken = result.f3298b;
                    } else {
                        kVar = new C6125f(result.f3299c);
                        accessToken = null;
                    }
                } else if (i == 0) {
                    accessToken = null;
                    z = true;
                } else {
                    accessToken = null;
                }
                map = result.f3302f;
            } else {
                accessToken = null;
                map = null;
                request = null;
            }
        } else if (i == 0) {
            bVar = LoginClient.Result.EnumC2524b.CANCEL;
            request = null;
            accessToken = null;
            map = null;
            z = true;
        } else {
            request = null;
            accessToken = null;
            map = null;
            z = false;
        }
        C6131k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = kVar;
            if (accessToken == null) {
                kVar2 = kVar;
                if (!z) {
                    kVar2 = new C6131k("Unexpected call to LoginManager.onActivityResult");
                }
            }
        }
        m34364a(null, bVar, map, kVar2, true, request);
        m34361a(accessToken, request, kVar2, z, hVar);
        return true;
    }

    /* renamed from: a */
    public final boolean m34363a(Intent intent) {
        boolean z = false;
        if (C6135n.m23746e().getPackageManager().resolveActivity(intent, 0) != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public void m34349b(Activity activity, Collection<String> collection) {
        m34346b(collection);
        m34367a(activity, collection);
    }

    /* renamed from: b */
    public final void m34346b(Collection<String> collection) {
        if (collection != null) {
            for (String str : collection) {
                if (!m34347b(str)) {
                    throw new C6131k(String.format("Cannot pass a read permission (%s) to a request for publish authorization", str));
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m34348b(AbstractC2547i iVar, LoginClient.Request request) {
        Intent a = m34359a(request);
        if (!m34363a(a)) {
            return false;
        }
        try {
            iVar.startActivityForResult(a, LoginClient.m34479B());
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    /* renamed from: c */
    public void m34344c(Activity activity, Collection<String> collection) {
        m34343c(collection);
        m34367a(activity, collection);
    }

    /* renamed from: c */
    public final void m34343c(Collection<String> collection) {
        if (collection != null) {
            for (String str : collection) {
                if (m34347b(str)) {
                    throw new C6131k(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", str));
                }
            }
        }
    }
}
