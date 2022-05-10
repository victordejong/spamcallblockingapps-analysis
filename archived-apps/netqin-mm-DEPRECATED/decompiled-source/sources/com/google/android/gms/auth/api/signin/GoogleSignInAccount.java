package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInAccount.class */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zab();
    @VisibleForTesting

    /* renamed from: n */
    public static Clock f22917n = DefaultClock.m17089d();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f22918a;
    @SafeParcelable.Field

    /* renamed from: b */
    public String f22919b;
    @SafeParcelable.Field

    /* renamed from: c */
    public String f22920c;
    @SafeParcelable.Field

    /* renamed from: d */
    public String f22921d;
    @SafeParcelable.Field

    /* renamed from: e */
    public String f22922e;
    @SafeParcelable.Field

    /* renamed from: f */
    public Uri f22923f;
    @SafeParcelable.Field

    /* renamed from: g */
    public String f22924g;
    @SafeParcelable.Field

    /* renamed from: h */
    public long f22925h;
    @SafeParcelable.Field

    /* renamed from: i */
    public String f22926i;
    @SafeParcelable.Field

    /* renamed from: j */
    public List<Scope> f22927j;
    @SafeParcelable.Field

    /* renamed from: k */
    public String f22928k;
    @SafeParcelable.Field

    /* renamed from: l */
    public String f22929l;

    /* renamed from: m */
    public Set<Scope> f22930m = new HashSet();

    @SafeParcelable.Constructor
    public GoogleSignInAccount(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) Uri uri, @SafeParcelable.Param(id = 7) String str5, @SafeParcelable.Param(id = 8) long j, @SafeParcelable.Param(id = 9) String str6, @SafeParcelable.Param(id = 10) List<Scope> list, @SafeParcelable.Param(id = 11) String str7, @SafeParcelable.Param(id = 12) String str8) {
        this.f22918a = i;
        this.f22919b = str;
        this.f22920c = str2;
        this.f22921d = str3;
        this.f22922e = str4;
        this.f22923f = uri;
        this.f22924g = str5;
        this.f22925h = j;
        this.f22926i = str6;
        this.f22927j = list;
        this.f22928k = str7;
        this.f22929l = str8;
    }

    /* renamed from: a */
    public static GoogleSignInAccount m17883a(String str) throws JSONException {
        boolean isEmpty = TextUtils.isEmpty(str);
        String str2 = null;
        if (isEmpty) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        GoogleSignInAccount a = m17882a(jSONObject.optString("id"), jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null, jSONObject.has("email") ? jSONObject.optString("email") : null, jSONObject.has("displayName") ? jSONObject.optString("displayName") : null, jSONObject.has("givenName") ? jSONObject.optString("givenName") : null, jSONObject.has("familyName") ? jSONObject.optString("familyName") : null, parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        if (jSONObject.has("serverAuthCode")) {
            str2 = jSONObject.optString("serverAuthCode");
        }
        a.f22924g = str2;
        return a;
    }

    /* renamed from: a */
    public static GoogleSignInAccount m17882a(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, String str7, Set<Scope> set) {
        if (l == null) {
            l = Long.valueOf(f22917n.mo17091b() / 1000);
        }
        long longValue = l.longValue();
        Preconditions.m17281b(str7);
        Preconditions.m17288a(set);
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, longValue, str7, new ArrayList(set), str5, str6);
    }

    /* renamed from: B */
    public Uri m17886B() {
        return this.f22923f;
    }

    @KeepForSdk
    /* renamed from: D */
    public Set<Scope> m17885D() {
        HashSet hashSet = new HashSet(this.f22927j);
        hashSet.addAll(this.f22930m);
        return hashSet;
    }

    /* renamed from: F */
    public String m17884F() {
        return this.f22924g;
    }

    /* renamed from: b */
    public Account m17881b() {
        if (this.f22921d == null) {
            return null;
        }
        return new Account(this.f22921d, "com.google");
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f22926i.equals(this.f22926i) && googleSignInAccount.m17885D().equals(m17885D());
    }

    /* renamed from: f */
    public String m17880f() {
        return this.f22922e;
    }

    public String getId() {
        return this.f22919b;
    }

    public int hashCode() {
        return ((this.f22926i.hashCode() + 527) * 31) + m17885D().hashCode();
    }

    /* renamed from: i */
    public String m17879i() {
        return this.f22921d;
    }

    /* renamed from: u */
    public String m17878u() {
        return this.f22929l;
    }

    /* renamed from: v */
    public String m17877v() {
        return this.f22928k;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f22918a);
        SafeParcelWriter.m17221a(parcel, 2, getId(), false);
        SafeParcelWriter.m17221a(parcel, 3, m17876y(), false);
        SafeParcelWriter.m17221a(parcel, 4, m17879i(), false);
        SafeParcelWriter.m17221a(parcel, 5, m17880f(), false);
        SafeParcelWriter.m17226a(parcel, 6, (Parcelable) m17886B(), i, false);
        SafeParcelWriter.m17221a(parcel, 7, m17884F(), false);
        SafeParcelWriter.m17230a(parcel, 8, this.f22925h);
        SafeParcelWriter.m17221a(parcel, 9, this.f22926i, false);
        SafeParcelWriter.m17207c(parcel, 10, this.f22927j, false);
        SafeParcelWriter.m17221a(parcel, 11, m17877v(), false);
        SafeParcelWriter.m17221a(parcel, 12, m17878u(), false);
        SafeParcelWriter.m17234a(parcel, a);
    }

    /* renamed from: y */
    public String m17876y() {
        return this.f22920c;
    }
}
