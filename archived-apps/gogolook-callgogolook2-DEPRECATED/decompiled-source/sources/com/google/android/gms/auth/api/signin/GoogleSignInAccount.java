package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.C6761c;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.C6762d;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f;
import p081h.p203i.p204a.p224e.p235d.p249s.C7077i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInAccount.class */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new C6762d();

    /* renamed from: n */
    public static AbstractC7074f f6429n = C7077i.m21148a();

    /* renamed from: a */
    public final int f6430a;

    /* renamed from: b */
    public String f6431b;

    /* renamed from: c */
    public String f6432c;

    /* renamed from: d */
    public String f6433d;

    /* renamed from: e */
    public String f6434e;

    /* renamed from: f */
    public Uri f6435f;

    /* renamed from: g */
    public String f6436g;

    /* renamed from: h */
    public long f6437h;

    /* renamed from: i */
    public String f6438i;

    /* renamed from: j */
    public List<Scope> f6439j;

    /* renamed from: k */
    public String f6440k;

    /* renamed from: l */
    public String f6441l;

    /* renamed from: m */
    public Set<Scope> f6442m = new HashSet();

    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.f6430a = i;
        this.f6431b = str;
        this.f6432c = str2;
        this.f6433d = str3;
        this.f6434e = str4;
        this.f6435f = uri;
        this.f6436g = str5;
        this.f6437h = j;
        this.f6438i = str6;
        this.f6439j = list;
        this.f6440k = str7;
        this.f6441l = str8;
    }

    @Nullable
    /* renamed from: a */
    public static GoogleSignInAccount m32043a(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        GoogleSignInAccount a = m32042a(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString(LogsGroupRealmObject.DISPLAY_NAME, null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        a.f6436g = jSONObject.optString("serverAuthCode", null);
        return a;
    }

    /* renamed from: a */
    public static GoogleSignInAccount m32042a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Uri uri, @Nullable Long l, @NonNull String str7, @NonNull Set<Scope> set) {
        if (l == null) {
            l = Long.valueOf(f6429n.currentTimeMillis() / 1000);
        }
        long longValue = l.longValue();
        C7021t.m21283b(str7);
        C7021t.m21290a(set);
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, longValue, str7, new ArrayList(set), str5, str6);
    }

    @Nullable
    /* renamed from: H */
    public String m32051H() {
        return this.f6434e;
    }

    @Nullable
    /* renamed from: I */
    public String m32050I() {
        return this.f6433d;
    }

    @Nullable
    /* renamed from: J */
    public String m32049J() {
        return this.f6441l;
    }

    @Nullable
    /* renamed from: K */
    public String m32048K() {
        return this.f6440k;
    }

    @Nullable
    /* renamed from: L */
    public String m32047L() {
        return this.f6431b;
    }

    @Nullable
    /* renamed from: M */
    public String m32046M() {
        return this.f6432c;
    }

    @Nullable
    /* renamed from: N */
    public Uri m32045N() {
        return this.f6435f;
    }

    @Nullable
    /* renamed from: c */
    public Account m32041c() {
        String str = this.f6433d;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f6438i.equals(this.f6438i) && googleSignInAccount.m32040j0().equals(m32040j0());
    }

    public int hashCode() {
        return ((this.f6438i.hashCode() + 527) * 31) + m32040j0().hashCode();
    }

    @NonNull
    /* renamed from: j0 */
    public Set<Scope> m32040j0() {
        HashSet hashSet = new HashSet(this.f6439j);
        hashSet.addAll(this.f6442m);
        return hashSet;
    }

    @Nullable
    /* renamed from: k0 */
    public String m32039k0() {
        return this.f6436g;
    }

    @NonNull
    /* renamed from: l0 */
    public final String m32038l0() {
        return this.f6438i;
    }

    /* renamed from: m0 */
    public final String m32037m0() {
        JSONObject n0 = m32036n0();
        n0.remove("serverAuthCode");
        return n0.toString();
    }

    /* renamed from: n0 */
    public final JSONObject m32036n0() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (m32047L() != null) {
                jSONObject.put("id", m32047L());
            }
            if (m32046M() != null) {
                jSONObject.put("tokenId", m32046M());
            }
            if (m32050I() != null) {
                jSONObject.put("email", m32050I());
            }
            if (m32051H() != null) {
                jSONObject.put(LogsGroupRealmObject.DISPLAY_NAME, m32051H());
            }
            if (m32048K() != null) {
                jSONObject.put("givenName", m32048K());
            }
            if (m32049J() != null) {
                jSONObject.put("familyName", m32049J());
            }
            if (m32045N() != null) {
                jSONObject.put("photoUrl", m32045N().toString());
            }
            if (m32039k0() != null) {
                jSONObject.put("serverAuthCode", m32039k0());
            }
            jSONObject.put("expirationTime", this.f6437h);
            jSONObject.put("obfuscatedIdentifier", this.f6438i);
            JSONArray jSONArray = new JSONArray();
            Scope[] scopeArr = (Scope[]) this.f6439j.toArray(new Scope[this.f6439j.size()]);
            Arrays.sort(scopeArr, C6761c.f16642a);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.m31994c());
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6430a);
        C7031b.m21215a(parcel, 2, m32047L(), false);
        C7031b.m21215a(parcel, 3, m32046M(), false);
        C7031b.m21215a(parcel, 4, m32050I(), false);
        C7031b.m21215a(parcel, 5, m32051H(), false);
        C7031b.m21220a(parcel, 6, (Parcelable) m32045N(), i, false);
        C7031b.m21215a(parcel, 7, m32039k0(), false);
        C7031b.m21224a(parcel, 8, this.f6437h);
        C7031b.m21215a(parcel, 9, this.f6438i, false);
        C7031b.m21201c(parcel, 10, this.f6439j, false);
        C7031b.m21215a(parcel, 11, m32048K(), false);
        C7031b.m21215a(parcel, 12, m32049J(), false);
        C7031b.m21229a(parcel, a);
    }
}
