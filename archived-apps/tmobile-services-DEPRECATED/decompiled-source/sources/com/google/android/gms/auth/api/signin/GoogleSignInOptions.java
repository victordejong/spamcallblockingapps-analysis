package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions.class */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {

    /* renamed from: t */
    public static final GoogleSignInOptions f6876t;

    /* renamed from: u */
    public static final GoogleSignInOptions f6877u;
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f6878f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final ArrayList<Scope> f6879g;
    @SafeParcelable.Field

    /* renamed from: h */
    private Account f6880h;
    @SafeParcelable.Field

    /* renamed from: i */
    private boolean f6881i;
    @SafeParcelable.Field

    /* renamed from: j */
    private final boolean f6882j;
    @SafeParcelable.Field

    /* renamed from: k */
    private final boolean f6883k;
    @SafeParcelable.Field

    /* renamed from: l */
    private String f6884l;
    @SafeParcelable.Field

    /* renamed from: m */
    private String f6885m;
    @SafeParcelable.Field

    /* renamed from: n */
    private ArrayList<GoogleSignInOptionsExtensionParcelable> f6886n;
    @SafeParcelable.Field

    /* renamed from: o */
    private String f6887o;
    @VisibleForTesting

    /* renamed from: p */
    public static final Scope f6872p = new Scope("profile");
    @VisibleForTesting

    /* renamed from: q */
    public static final Scope f6873q = new Scope("openid");
    @VisibleForTesting

    /* renamed from: r */
    public static final Scope f6874r = new Scope("https://www.googleapis.com/auth/games_lite");
    @VisibleForTesting

    /* renamed from: s */
    public static final Scope f6875s = new Scope("https://www.googleapis.com/auth/games");
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new zad();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder.class */
    public static final class Builder {

        /* renamed from: b */
        private boolean f6889b;

        /* renamed from: c */
        private boolean f6890c;

        /* renamed from: d */
        private boolean f6891d;

        /* renamed from: e */
        private String f6892e;

        /* renamed from: f */
        private Account f6893f;

        /* renamed from: g */
        private String f6894g;

        /* renamed from: i */
        private String f6896i;

        /* renamed from: a */
        private Set<Scope> f6888a = new HashSet();

        /* renamed from: h */
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> f6895h = new HashMap();

        /* renamed from: a */
        public final GoogleSignInOptions m15148a() {
            if (this.f6888a.contains(GoogleSignInOptions.f6875s) && this.f6888a.contains(GoogleSignInOptions.f6874r)) {
                this.f6888a.remove(GoogleSignInOptions.f6874r);
            }
            if (this.f6891d && (this.f6893f == null || !this.f6888a.isEmpty())) {
                m15147b();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f6888a), this.f6893f, this.f6891d, this.f6889b, this.f6890c, this.f6892e, this.f6894g, this.f6895h, this.f6896i, null);
        }

        /* renamed from: b */
        public final Builder m15147b() {
            this.f6888a.add(GoogleSignInOptions.f6873q);
            return this;
        }

        /* renamed from: c */
        public final Builder m15146c() {
            this.f6888a.add(GoogleSignInOptions.f6872p);
            return this;
        }

        /* renamed from: d */
        public final Builder m15145d(Scope scope, Scope... scopeArr) {
            this.f6888a.add(scope);
            this.f6888a.addAll(Arrays.asList(scopeArr));
            return this;
        }
    }

    static {
        new Scope("email");
        Builder b = new Builder().m15147b();
        b.m15146c();
        f6876t = b.m15148a();
        Builder builder = new Builder();
        builder.m15145d(f6874r, new Scope[0]);
        f6877u = builder.m15148a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GoogleSignInOptions(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ArrayList<Scope> arrayList, @SafeParcelable.Param(id = 3) Account account, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) boolean z3, @SafeParcelable.Param(id = 7) String str, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2, @SafeParcelable.Param(id = 10) String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, m15149v0(arrayList2), str3);
    }

    private GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map, String str3) {
        this.f6878f = i;
        this.f6879g = arrayList;
        this.f6880h = account;
        this.f6881i = z;
        this.f6882j = z2;
        this.f6883k = z3;
        this.f6884l = str;
        this.f6885m = str2;
        this.f6886n = new ArrayList<>(map.values());
        this.f6887o = str3;
    }

    /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3, zac zacVar) {
        this(3, arrayList, account, z, z2, z3, str, str2, map, str3);
    }

    /* renamed from: v0 */
    private static Map<Integer, GoogleSignInOptionsExtensionParcelable> m15149v0(@Nullable List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.m15144B()), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    @KeepForSdk
    /* renamed from: B */
    public ArrayList<GoogleSignInOptionsExtensionParcelable> m15157B() {
        return this.f6886n;
    }

    @Nullable
    @KeepForSdk
    /* renamed from: I */
    public String m15156I() {
        return this.f6887o;
    }

    @KeepForSdk
    /* renamed from: W */
    public ArrayList<Scope> m15155W() {
        return new ArrayList<>(this.f6879g);
    }

    @KeepForSdk
    /* renamed from: Y */
    public String m15154Y() {
        return this.f6884l;
    }

    @KeepForSdk
    /* renamed from: d */
    public Account m15153d() {
        return this.f6880h;
    }

    @KeepForSdk
    /* renamed from: d0 */
    public boolean m15152d0() {
        return this.f6883k;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f6886n.size() <= 0 && googleSignInOptions.f6886n.size() <= 0 && this.f6879g.size() == googleSignInOptions.m15155W().size() && this.f6879g.containsAll(googleSignInOptions.m15155W())) {
                if (this.f6880h == null) {
                    if (googleSignInOptions.m15153d() != null) {
                        return false;
                    }
                } else if (!this.f6880h.equals(googleSignInOptions.m15153d())) {
                    return false;
                }
                if (TextUtils.isEmpty(this.f6884l)) {
                    if (!TextUtils.isEmpty(googleSignInOptions.m15154Y())) {
                        return false;
                    }
                } else if (!this.f6884l.equals(googleSignInOptions.m15154Y())) {
                    return false;
                }
                if (this.f6883k == googleSignInOptions.m15152d0() && this.f6881i == googleSignInOptions.m15151j0() && this.f6882j == googleSignInOptions.m15150u0()) {
                    return TextUtils.equals(this.f6887o, googleSignInOptions.m15156I());
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
        ArrayList<Scope> arrayList2 = this.f6879g;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Scope scope = arrayList2.get(i);
            i++;
            arrayList.add(scope.m15001B());
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.m15143a(arrayList);
        hashAccumulator.m15143a(this.f6880h);
        hashAccumulator.m15143a(this.f6884l);
        hashAccumulator.m15141c(this.f6883k);
        hashAccumulator.m15141c(this.f6881i);
        hashAccumulator.m15141c(this.f6882j);
        hashAccumulator.m15143a(this.f6887o);
        return hashAccumulator.m15142b();
    }

    @KeepForSdk
    /* renamed from: j0 */
    public boolean m15151j0() {
        return this.f6881i;
    }

    @KeepForSdk
    /* renamed from: u0 */
    public boolean m15150u0() {
        return this.f6882j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f6878f);
        SafeParcelWriter.m14443u(parcel, 2, m15155W(), false);
        SafeParcelWriter.m14448p(parcel, 3, m15153d(), i, false);
        SafeParcelWriter.m14461c(parcel, 4, m15151j0());
        SafeParcelWriter.m14461c(parcel, 5, m15150u0());
        SafeParcelWriter.m14461c(parcel, 6, m15152d0());
        SafeParcelWriter.m14447q(parcel, 7, m15154Y(), false);
        SafeParcelWriter.m14447q(parcel, 8, this.f6885m, false);
        SafeParcelWriter.m14443u(parcel, 9, m15157B(), false);
        SafeParcelWriter.m14447q(parcel, 10, m15156I(), false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
