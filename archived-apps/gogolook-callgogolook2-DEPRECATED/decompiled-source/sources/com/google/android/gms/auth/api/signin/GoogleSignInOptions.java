package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
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
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.C6763e;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.C6764f;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6739a;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions.class */
public class GoogleSignInOptions extends AbstractSafeParcelable implements C6805a.AbstractC6809d.AbstractC6814e, ReflectedParcelable {

    /* renamed from: n */
    public static final GoogleSignInOptions f6447n;

    /* renamed from: a */
    public final int f6449a;

    /* renamed from: b */
    public final ArrayList<Scope> f6450b;

    /* renamed from: c */
    public Account f6451c;

    /* renamed from: d */
    public boolean f6452d;

    /* renamed from: e */
    public final boolean f6453e;

    /* renamed from: f */
    public final boolean f6454f;

    /* renamed from: g */
    public String f6455g;

    /* renamed from: h */
    public String f6456h;

    /* renamed from: i */
    public ArrayList<GoogleSignInOptionsExtensionParcelable> f6457i;

    /* renamed from: j */
    public static final Scope f6443j = new Scope("profile");

    /* renamed from: k */
    public static final Scope f6444k = new Scope("openid");

    /* renamed from: l */
    public static final Scope f6445l = new Scope("https://www.googleapis.com/auth/games_lite");

    /* renamed from: m */
    public static final Scope f6446m = new Scope("https://www.googleapis.com/auth/games");
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new C6764f();

    /* renamed from: o */
    public static Comparator<Scope> f6448o = new C6763e();

    /* renamed from: com.google.android.gms.auth.api.signin.GoogleSignInOptions$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$a.class */
    public static final class C3558a {

        /* renamed from: a */
        public Set<Scope> f6458a;

        /* renamed from: b */
        public boolean f6459b;

        /* renamed from: c */
        public boolean f6460c;

        /* renamed from: d */
        public boolean f6461d;

        /* renamed from: e */
        public String f6462e;

        /* renamed from: f */
        public Account f6463f;

        /* renamed from: g */
        public String f6464g;

        /* renamed from: h */
        public Map<Integer, GoogleSignInOptionsExtensionParcelable> f6465h;

        public C3558a() {
            this.f6458a = new HashSet();
            this.f6465h = new HashMap();
        }

        public C3558a(@NonNull GoogleSignInOptions googleSignInOptions) {
            this.f6458a = new HashSet();
            this.f6465h = new HashMap();
            C7021t.m21290a(googleSignInOptions);
            this.f6458a = new HashSet(googleSignInOptions.f6450b);
            this.f6459b = googleSignInOptions.f6453e;
            this.f6460c = googleSignInOptions.f6454f;
            this.f6461d = googleSignInOptions.f6452d;
            this.f6462e = googleSignInOptions.f6455g;
            this.f6463f = googleSignInOptions.f6451c;
            this.f6464g = googleSignInOptions.f6456h;
            this.f6465h = GoogleSignInOptions.m32026a(googleSignInOptions.f6457i);
        }

        /* renamed from: a */
        public final C3558a m32014a(Scope scope, Scope... scopeArr) {
            this.f6458a.add(scope);
            this.f6458a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        /* renamed from: a */
        public final GoogleSignInOptions m32015a() {
            if (this.f6458a.contains(GoogleSignInOptions.f6446m) && this.f6458a.contains(GoogleSignInOptions.f6445l)) {
                this.f6458a.remove(GoogleSignInOptions.f6445l);
            }
            if (this.f6461d && (this.f6463f == null || !this.f6458a.isEmpty())) {
                m32013b();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f6458a), this.f6463f, this.f6461d, this.f6459b, this.f6460c, this.f6462e, this.f6464g, this.f6465h, null);
        }

        /* renamed from: b */
        public final C3558a m32013b() {
            this.f6458a.add(GoogleSignInOptions.f6444k);
            return this;
        }

        /* renamed from: c */
        public final C3558a m32012c() {
            this.f6458a.add(GoogleSignInOptions.f6443j);
            return this;
        }
    }

    static {
        new Scope("email");
        C3558a aVar = new C3558a();
        aVar.m32013b();
        aVar.m32012c();
        f6447n = aVar.m32015a();
        C3558a aVar2 = new C3558a();
        aVar2.m32014a(f6445l, new Scope[0]);
        aVar2.m32015a();
    }

    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2) {
        this(i, arrayList, account, z, z2, z3, str, str2, m32026a(arrayList2));
    }

    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map) {
        this.f6449a = i;
        this.f6450b = arrayList;
        this.f6451c = account;
        this.f6452d = z;
        this.f6453e = z2;
        this.f6454f = z3;
        this.f6455g = str;
        this.f6456h = str2;
        this.f6457i = new ArrayList<>(map.values());
    }

    public /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, C6763e eVar) {
        this(3, arrayList, account, z, z2, z3, str, str2, map);
    }

    @Nullable
    /* renamed from: a */
    public static GoogleSignInOptions m32027a(@Nullable String str) throws JSONException {
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
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null), new HashMap());
    }

    /* renamed from: a */
    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> m32026a(@Nullable List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.m32010c()), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    /* renamed from: H */
    public ArrayList<GoogleSignInOptionsExtensionParcelable> m32035H() {
        return this.f6457i;
    }

    /* renamed from: I */
    public ArrayList<Scope> m32034I() {
        return new ArrayList<>(this.f6450b);
    }

    /* renamed from: J */
    public String m32033J() {
        return this.f6455g;
    }

    /* renamed from: K */
    public boolean m32032K() {
        return this.f6454f;
    }

    /* renamed from: L */
    public boolean m32031L() {
        return this.f6452d;
    }

    /* renamed from: M */
    public boolean m32030M() {
        return this.f6453e;
    }

    /* renamed from: N */
    public final JSONObject m32029N() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f6450b, f6448o);
            ArrayList<Scope> arrayList = this.f6450b;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Scope scope = arrayList.get(i);
                i++;
                jSONArray.put(scope.m31994c());
            }
            jSONObject.put("scopes", jSONArray);
            if (this.f6451c != null) {
                jSONObject.put("accountName", this.f6451c.name);
            }
            jSONObject.put("idTokenRequested", this.f6452d);
            jSONObject.put("forceCodeForRefreshToken", this.f6454f);
            jSONObject.put("serverAuthRequested", this.f6453e);
            if (!TextUtils.isEmpty(this.f6455g)) {
                jSONObject.put("serverClientId", this.f6455g);
            }
            if (!TextUtils.isEmpty(this.f6456h)) {
                jSONObject.put("hostedDomain", this.f6456h);
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: c */
    public Account m32023c() {
        return this.f6451c;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f6457i.size() <= 0 && googleSignInOptions.f6457i.size() <= 0 && this.f6450b.size() == googleSignInOptions.m32034I().size() && this.f6450b.containsAll(googleSignInOptions.m32034I())) {
                if (this.f6451c == null) {
                    if (googleSignInOptions.m32023c() != null) {
                        return false;
                    }
                } else if (!this.f6451c.equals(googleSignInOptions.m32023c())) {
                    return false;
                }
                if (TextUtils.isEmpty(this.f6455g)) {
                    if (!TextUtils.isEmpty(googleSignInOptions.m32033J())) {
                        return false;
                    }
                } else if (!this.f6455g.equals(googleSignInOptions.m32033J())) {
                    return false;
                }
                if (this.f6454f == googleSignInOptions.m32032K() && this.f6452d == googleSignInOptions.m32031L()) {
                    return this.f6453e == googleSignInOptions.m32030M();
                }
                return false;
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.f6450b;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Scope scope = arrayList2.get(i);
            i++;
            arrayList.add(scope.m31994c());
        }
        Collections.sort(arrayList);
        C6739a aVar = new C6739a();
        aVar.m21976a(arrayList);
        aVar.m21976a(this.f6451c);
        aVar.m21976a(this.f6455g);
        aVar.m21975a(this.f6454f);
        aVar.m21975a(this.f6452d);
        aVar.m21975a(this.f6453e);
        return aVar.m21977a();
    }

    /* renamed from: j0 */
    public final String m32016j0() {
        return m32029N().toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6449a);
        C7031b.m21201c(parcel, 2, m32034I(), false);
        C7031b.m21220a(parcel, 3, (Parcelable) m32023c(), i, false);
        C7031b.m21212a(parcel, 4, m32031L());
        C7031b.m21212a(parcel, 5, m32030M());
        C7031b.m21212a(parcel, 6, m32032K());
        C7031b.m21215a(parcel, 7, m32033J(), false);
        C7031b.m21215a(parcel, 8, this.f6456h, false);
        C7031b.m21201c(parcel, 9, m32035H(), false);
        C7031b.m21229a(parcel, a);
    }
}
