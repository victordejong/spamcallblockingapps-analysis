package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInAccount.class */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zab();

    /* renamed from: a */
    private static Clock f6094a = DefaultClock.getInstance();

    /* renamed from: b */
    private final int f6095b;

    /* renamed from: c */
    private String f6096c;

    /* renamed from: d */
    private String f6097d;

    /* renamed from: e */
    private String f6098e;

    /* renamed from: f */
    private String f6099f;

    /* renamed from: g */
    private Uri f6100g;

    /* renamed from: h */
    private String f6101h;

    /* renamed from: i */
    private long f6102i;

    /* renamed from: j */
    private String f6103j;

    /* renamed from: k */
    private List<Scope> f6104k;

    /* renamed from: l */
    private String f6105l;

    /* renamed from: m */
    private String f6106m;

    /* renamed from: n */
    private Set<Scope> f6107n = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.f6095b = i;
        this.f6096c = str;
        this.f6097d = str2;
        this.f6098e = str3;
        this.f6099f = str4;
        this.f6100g = uri;
        this.f6101h = str5;
        this.f6102i = j;
        this.f6103j = str6;
        this.f6104k = list;
        this.f6105l = str7;
        this.f6106m = str8;
    }

    /* renamed from: a */
    private static GoogleSignInAccount m6018a(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, String str7, Set<Scope> set) {
        if (l == null) {
            l = Long.valueOf(f6094a.currentTimeMillis() / 1000);
        }
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), Preconditions.checkNotEmpty(str7), new ArrayList((Collection) Preconditions.checkNotNull(set)), str5, str6);
    }

    /* renamed from: a */
    private final JSONObject m6020a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (getId() != null) {
                jSONObject.put("id", getId());
            }
            if (getIdToken() != null) {
                jSONObject.put("tokenId", getIdToken());
            }
            if (getEmail() != null) {
                jSONObject.put(Scopes.EMAIL, getEmail());
            }
            if (getDisplayName() != null) {
                jSONObject.put("displayName", getDisplayName());
            }
            if (getGivenName() != null) {
                jSONObject.put("givenName", getGivenName());
            }
            if (getFamilyName() != null) {
                jSONObject.put("familyName", getFamilyName());
            }
            if (getPhotoUrl() != null) {
                jSONObject.put("photoUrl", getPhotoUrl().toString());
            }
            if (getServerAuthCode() != null) {
                jSONObject.put("serverAuthCode", getServerAuthCode());
            }
            jSONObject.put("expirationTime", this.f6102i);
            jSONObject.put("obfuscatedIdentifier", this.f6103j);
            JSONArray jSONArray = new JSONArray();
            Scope[] scopeArr = (Scope[]) this.f6104k.toArray(new Scope[this.f6104k.size()]);
            Arrays.sort(scopeArr, C1561a.f6129a);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.getScopeUri());
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    public static GoogleSignInAccount createDefault() {
        Account account = new Account("<<default account>>", AccountType.GOOGLE);
        return m6018a(null, null, account.name, null, null, null, null, 0L, account.name, new HashSet());
    }

    public static GoogleSignInAccount zaa(String str) {
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
        GoogleSignInAccount a = m6018a(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString(Scopes.EMAIL, null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        a.f6101h = jSONObject.optString("serverAuthCode", null);
        return a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f6103j.equals(this.f6103j) && googleSignInAccount.getRequestedScopes().equals(getRequestedScopes());
    }

    public Account getAccount() {
        String str = this.f6098e;
        if (str == null) {
            return null;
        }
        return new Account(str, AccountType.GOOGLE);
    }

    public String getDisplayName() {
        return this.f6099f;
    }

    public String getEmail() {
        return this.f6098e;
    }

    public String getFamilyName() {
        return this.f6106m;
    }

    public String getGivenName() {
        return this.f6105l;
    }

    public Set<Scope> getGrantedScopes() {
        return new HashSet(this.f6104k);
    }

    public String getId() {
        return this.f6096c;
    }

    public String getIdToken() {
        return this.f6097d;
    }

    public Uri getPhotoUrl() {
        return this.f6100g;
    }

    public Set<Scope> getRequestedScopes() {
        HashSet hashSet = new HashSet(this.f6104k);
        hashSet.addAll(this.f6107n);
        return hashSet;
    }

    public String getServerAuthCode() {
        return this.f6101h;
    }

    public int hashCode() {
        return ((this.f6103j.hashCode() + 527) * 31) + getRequestedScopes().hashCode();
    }

    public boolean isExpired() {
        return f6094a.currentTimeMillis() / 1000 >= this.f6102i - 300;
    }

    public GoogleSignInAccount requestExtraScopes(Scope... scopeArr) {
        if (scopeArr != null) {
            Collections.addAll(this.f6107n, scopeArr);
        }
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6095b);
        SafeParcelWriter.writeString(parcel, 2, getId(), false);
        SafeParcelWriter.writeString(parcel, 3, getIdToken(), false);
        SafeParcelWriter.writeString(parcel, 4, getEmail(), false);
        SafeParcelWriter.writeString(parcel, 5, getDisplayName(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, getPhotoUrl(), i, false);
        SafeParcelWriter.writeString(parcel, 7, getServerAuthCode(), false);
        SafeParcelWriter.writeLong(parcel, 8, this.f6102i);
        SafeParcelWriter.writeString(parcel, 9, this.f6103j, false);
        SafeParcelWriter.writeTypedList(parcel, 10, this.f6104k, false);
        SafeParcelWriter.writeString(parcel, 11, getGivenName(), false);
        SafeParcelWriter.writeString(parcel, 12, getFamilyName(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final String zab() {
        return this.f6103j;
    }

    public final String zac() {
        JSONObject a = m6020a();
        a.remove("serverAuthCode");
        return a.toString();
    }
}
