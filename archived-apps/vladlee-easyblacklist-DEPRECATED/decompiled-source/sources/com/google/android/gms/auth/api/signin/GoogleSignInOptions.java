package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions.class */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {

    /* renamed from: a */
    private final int f6109a;

    /* renamed from: b */
    private final ArrayList<Scope> f6110b;

    /* renamed from: c */
    private Account f6111c;

    /* renamed from: d */
    private boolean f6112d;

    /* renamed from: e */
    private final boolean f6113e;

    /* renamed from: f */
    private final boolean f6114f;

    /* renamed from: g */
    private String f6115g;

    /* renamed from: h */
    private String f6116h;

    /* renamed from: i */
    private ArrayList<GoogleSignInOptionsExtensionParcelable> f6117i;

    /* renamed from: j */
    private String f6118j;

    /* renamed from: k */
    private Map<Integer, GoogleSignInOptionsExtensionParcelable> f6119k;
    public static final Scope zar = new Scope(Scopes.PROFILE);
    public static final Scope zas = new Scope(Scopes.EMAIL);
    public static final Scope zat = new Scope(Scopes.OPEN_ID);
    public static final Scope zau = new Scope(Scopes.GAMES_LITE);
    public static final Scope zav = new Scope(Scopes.GAMES);
    public static final GoogleSignInOptions DEFAULT_SIGN_IN = new Builder().requestId().requestProfile().build();
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN = new Builder().requestScopes(zau, new Scope[0]).build();
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new zad();

    /* renamed from: l */
    private static Comparator<Scope> f6108l = new C1562b();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private Set<Scope> f6120a;

        /* renamed from: b */
        private boolean f6121b;

        /* renamed from: c */
        private boolean f6122c;

        /* renamed from: d */
        private boolean f6123d;

        /* renamed from: e */
        private String f6124e;

        /* renamed from: f */
        private Account f6125f;

        /* renamed from: g */
        private String f6126g;

        /* renamed from: h */
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> f6127h;

        /* renamed from: i */
        private String f6128i;

        public Builder() {
            this.f6120a = new HashSet();
            this.f6127h = new HashMap();
        }

        public Builder(GoogleSignInOptions googleSignInOptions) {
            this.f6120a = new HashSet();
            this.f6127h = new HashMap();
            Preconditions.checkNotNull(googleSignInOptions);
            this.f6120a = new HashSet(googleSignInOptions.f6110b);
            this.f6121b = googleSignInOptions.f6113e;
            this.f6122c = googleSignInOptions.f6114f;
            this.f6123d = googleSignInOptions.f6112d;
            this.f6124e = googleSignInOptions.f6115g;
            this.f6125f = googleSignInOptions.f6111c;
            this.f6126g = googleSignInOptions.f6116h;
            this.f6127h = GoogleSignInOptions.m6013b(googleSignInOptions.f6117i);
            this.f6128i = googleSignInOptions.f6118j;
        }

        /* renamed from: a */
        private final String m6005a(String str) {
            Preconditions.checkNotEmpty(str);
            String str2 = this.f6124e;
            Preconditions.checkArgument(str2 == null || str2.equals(str), "two different server client ids provided");
            return str;
        }

        public final Builder addExtension(GoogleSignInOptionsExtension googleSignInOptionsExtension) {
            if (!this.f6127h.containsKey(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()))) {
                if (googleSignInOptionsExtension.getImpliedScopes() != null) {
                    this.f6120a.addAll(googleSignInOptionsExtension.getImpliedScopes());
                }
                this.f6127h.put(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()), new GoogleSignInOptionsExtensionParcelable(googleSignInOptionsExtension));
                return this;
            }
            throw new IllegalStateException("Only one extension per type may be added");
        }

        public final GoogleSignInOptions build() {
            if (this.f6120a.contains(GoogleSignInOptions.zav) && this.f6120a.contains(GoogleSignInOptions.zau)) {
                this.f6120a.remove(GoogleSignInOptions.zau);
            }
            if (this.f6123d && (this.f6125f == null || !this.f6120a.isEmpty())) {
                requestId();
            }
            return new GoogleSignInOptions(new ArrayList(this.f6120a), this.f6125f, this.f6123d, this.f6121b, this.f6122c, this.f6124e, this.f6126g, this.f6127h, this.f6128i);
        }

        public final Builder requestEmail() {
            this.f6120a.add(GoogleSignInOptions.zas);
            return this;
        }

        public final Builder requestId() {
            this.f6120a.add(GoogleSignInOptions.zat);
            return this;
        }

        public final Builder requestIdToken(String str) {
            this.f6123d = true;
            this.f6124e = m6005a(str);
            return this;
        }

        public final Builder requestProfile() {
            this.f6120a.add(GoogleSignInOptions.zar);
            return this;
        }

        public final Builder requestScopes(Scope scope, Scope... scopeArr) {
            this.f6120a.add(scope);
            this.f6120a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public final Builder requestServerAuthCode(String str) {
            return requestServerAuthCode(str, false);
        }

        public final Builder requestServerAuthCode(String str, boolean z) {
            this.f6121b = true;
            this.f6124e = m6005a(str);
            this.f6122c = z;
            return this;
        }

        public final Builder setAccountName(String str) {
            this.f6125f = new Account(Preconditions.checkNotEmpty(str), AccountType.GOOGLE);
            return this;
        }

        public final Builder setHostedDomain(String str) {
            this.f6126g = Preconditions.checkNotEmpty(str);
            return this;
        }

        public final Builder setLogSessionId(String str) {
            this.f6128i = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2, String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, m6013b(arrayList2), str3);
    }

    private GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map, String str3) {
        this.f6109a = i;
        this.f6110b = arrayList;
        this.f6111c = account;
        this.f6112d = z;
        this.f6113e = z2;
        this.f6114f = z3;
        this.f6115g = str;
        this.f6116h = str2;
        this.f6117i = new ArrayList<>(map.values());
        this.f6119k = map;
        this.f6118j = str3;
    }

    /* synthetic */ GoogleSignInOptions(ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3) {
        this(3, arrayList, account, z, z2, z3, str, str2, map, str3);
    }

    /* renamed from: a */
    private final JSONObject m6017a() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f6110b, f6108l);
            ArrayList<Scope> arrayList = this.f6110b;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Scope scope = arrayList.get(i);
                i++;
                jSONArray.put(scope.getScopeUri());
            }
            jSONObject.put("scopes", jSONArray);
            if (this.f6111c != null) {
                jSONObject.put("accountName", this.f6111c.name);
            }
            jSONObject.put("idTokenRequested", this.f6112d);
            jSONObject.put("forceCodeForRefreshToken", this.f6114f);
            jSONObject.put("serverAuthRequested", this.f6113e);
            if (!TextUtils.isEmpty(this.f6115g)) {
                jSONObject.put("serverClientId", this.f6115g);
            }
            if (!TextUtils.isEmpty(this.f6116h)) {
                jSONObject.put("hostedDomain", this.f6116h);
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> m6013b(List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.getType()), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    public static GoogleSignInOptions zab(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String optString = jSONObject.optString("accountName", null);
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, AccountType.GOOGLE) : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null), new HashMap(), (String) null);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f6117i.size() <= 0 && googleSignInOptions.f6117i.size() <= 0 && this.f6110b.size() == googleSignInOptions.getScopes().size() && this.f6110b.containsAll(googleSignInOptions.getScopes())) {
                if (this.f6111c == null) {
                    if (googleSignInOptions.getAccount() != null) {
                        return false;
                    }
                } else if (!this.f6111c.equals(googleSignInOptions.getAccount())) {
                    return false;
                }
                if (TextUtils.isEmpty(this.f6115g)) {
                    if (!TextUtils.isEmpty(googleSignInOptions.getServerClientId())) {
                        return false;
                    }
                } else if (!this.f6115g.equals(googleSignInOptions.getServerClientId())) {
                    return false;
                }
                if (this.f6114f == googleSignInOptions.isForceCodeForRefreshToken() && this.f6112d == googleSignInOptions.isIdTokenRequested() && this.f6113e == googleSignInOptions.isServerAuthCodeRequested()) {
                    return TextUtils.equals(this.f6118j, googleSignInOptions.getLogSessionId());
                }
                return false;
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public Account getAccount() {
        return this.f6111c;
    }

    public ArrayList<GoogleSignInOptionsExtensionParcelable> getExtensions() {
        return this.f6117i;
    }

    public String getLogSessionId() {
        return this.f6118j;
    }

    public Scope[] getScopeArray() {
        ArrayList<Scope> arrayList = this.f6110b;
        return (Scope[]) arrayList.toArray(new Scope[arrayList.size()]);
    }

    public ArrayList<Scope> getScopes() {
        return new ArrayList<>(this.f6110b);
    }

    public String getServerClientId() {
        return this.f6115g;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.f6110b;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Scope scope = arrayList2.get(i);
            i++;
            arrayList.add(scope.getScopeUri());
        }
        Collections.sort(arrayList);
        return new HashAccumulator().addObject(arrayList).addObject(this.f6111c).addObject(this.f6115g).zaa(this.f6114f).zaa(this.f6112d).zaa(this.f6113e).addObject(this.f6118j).hash();
    }

    public boolean isForceCodeForRefreshToken() {
        return this.f6114f;
    }

    public boolean isIdTokenRequested() {
        return this.f6112d;
    }

    public boolean isServerAuthCodeRequested() {
        return this.f6113e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6109a);
        SafeParcelWriter.writeTypedList(parcel, 2, getScopes(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, getAccount(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 4, isIdTokenRequested());
        SafeParcelWriter.writeBoolean(parcel, 5, isServerAuthCodeRequested());
        SafeParcelWriter.writeBoolean(parcel, 6, isForceCodeForRefreshToken());
        SafeParcelWriter.writeString(parcel, 7, getServerClientId(), false);
        SafeParcelWriter.writeString(parcel, 8, this.f6116h, false);
        SafeParcelWriter.writeTypedList(parcel, 9, getExtensions(), false);
        SafeParcelWriter.writeString(parcel, 10, getLogSessionId(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final String zae() {
        return m6017a().toString();
    }
}
