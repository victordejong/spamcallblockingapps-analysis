package com.facebook.login;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.criteo.sync.sdk.customtabs.CustomTabsHelper;
import com.facebook.CustomTabMainActivity;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import com.facebook.login.LoginClient;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6134m;
import p081h.p154f.C6135n;
import p081h.p154f.EnumC6114c;
/* loaded from: classes-dex2jar.jar:com/facebook/login/CustomTabLoginMethodHandler.class */
public class CustomTabLoginMethodHandler extends WebLoginMethodHandler {

    /* renamed from: d */
    public String f3237d;

    /* renamed from: e */
    public String f3238e;

    /* renamed from: f */
    public static final String[] f3236f = {CustomTabsHelper.STABLE_PACKAGE, CustomTabsHelper.BETA_PACKAGE, CustomTabsHelper.DEV_PACKAGE};
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new C2507a();

    /* renamed from: com.facebook.login.CustomTabLoginMethodHandler$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/CustomTabLoginMethodHandler$a.class */
    public static final class C2507a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public CustomTabLoginMethodHandler createFromParcel(Parcel parcel) {
            return new CustomTabLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CustomTabLoginMethodHandler[] newArray(int i) {
            return new CustomTabLoginMethodHandler[i];
        }
    }

    public CustomTabLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.f3238e = parcel.readString();
    }

    public CustomTabLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.f3238e = C2408g0.m34874a(20);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m34526a(java.lang.String r12, com.facebook.login.LoginClient.Request r13) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.CustomTabLoginMethodHandler.m34526a(java.lang.String, com.facebook.login.LoginClient$Request):void");
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public void mo34426a(JSONObject jSONObject) throws JSONException {
        jSONObject.put("7_challenge", this.f3238e);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public boolean mo34423a(int i, int i2, Intent intent) {
        if (i != 1) {
            return super.mo34423a(i, i2, intent);
        }
        LoginClient.Request v = this.f3310b.m34455v();
        if (i2 == -1) {
            m34526a(intent.getStringExtra(CustomTabMainActivity.f2542e), v);
            return true;
        }
        super.m34416a(v, (Bundle) null, new C6134m());
        return false;
    }

    /* renamed from: a */
    public final boolean m34527a(Bundle bundle) {
        try {
            String string = bundle.getString(IapProductRealmObject.STATE);
            if (string == null) {
                return false;
            }
            return new JSONObject(string).getString("7_challenge").equals(this.f3238e);
        } catch (JSONException e) {
            return false;
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public boolean mo34409a(LoginClient.Request request) {
        if (!m34524v()) {
            return false;
        }
        Bundle a = m34417a(m34415b(request), request);
        Intent intent = new Intent(this.f3310b.m34460q(), CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.f2540c, a);
        intent.putExtra(CustomTabMainActivity.f2541d, m34525u());
        this.f3310b.m34458s().startActivityForResult(intent, 1);
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: b */
    public String mo34408b() {
        return "custom_tab";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    /* renamed from: q */
    public String mo34413q() {
        return "chrome_custom_tab";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    /* renamed from: r */
    public EnumC6114c mo34405r() {
        return EnumC6114c.CHROME_CUSTOM_TAB;
    }

    /* renamed from: u */
    public final String m34525u() {
        String str = this.f3237d;
        if (str != null) {
            return str;
        }
        FragmentActivity q = this.f3310b.m34460q();
        List<ResolveInfo> queryIntentServices = q.getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
        if (queryIntentServices == null) {
            return null;
        }
        HashSet hashSet = new HashSet(Arrays.asList(f3236f));
        for (ResolveInfo resolveInfo : queryIntentServices) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
                this.f3237d = serviceInfo.packageName;
                return this.f3237d;
            }
        }
        return null;
    }

    /* renamed from: v */
    public final boolean m34524v() {
        return m34525u() != null && C2416h0.m34787b(C6135n.m23746e());
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f3238e);
    }
}
