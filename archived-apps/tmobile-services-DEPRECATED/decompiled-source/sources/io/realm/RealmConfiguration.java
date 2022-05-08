package io.realm;

import android.content.Context;
import io.realm.Realm;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.RealmCore;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Util;
import io.realm.internal.modules.CompositeMediator;
import io.realm.internal.modules.FilterableMediator;
import io.realm.p008rx.RealmObservableFactory;
import io.realm.p008rx.RxObservableFactory;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmConfiguration.class */
public class RealmConfiguration {

    /* renamed from: q */
    private static final Object f19899q;

    /* renamed from: r */
    protected static final RealmProxyMediator f19900r;

    /* renamed from: s */
    private static Boolean f19901s;

    /* renamed from: a */
    private final File f19902a;

    /* renamed from: b */
    private final String f19903b;

    /* renamed from: c */
    private final String f19904c;

    /* renamed from: d */
    private final String f19905d;

    /* renamed from: e */
    private final byte[] f19906e;

    /* renamed from: f */
    private final long f19907f;

    /* renamed from: g */
    private final RealmMigration f19908g;

    /* renamed from: h */
    private final boolean f19909h;

    /* renamed from: i */
    private final OsRealmConfig.Durability f19910i;

    /* renamed from: j */
    private final RealmProxyMediator f19911j;

    /* renamed from: k */
    private final RxObservableFactory f19912k;

    /* renamed from: l */
    private final Realm.Transaction f19913l;

    /* renamed from: m */
    private final boolean f19914m;

    /* renamed from: n */
    private final CompactOnLaunchCallback f19915n;

    /* renamed from: o */
    private final long f19916o;

    /* renamed from: p */
    private final boolean f19917p;

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmConfiguration$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private File f19918a;

        /* renamed from: b */
        private String f19919b;

        /* renamed from: c */
        private String f19920c;

        /* renamed from: d */
        private byte[] f19921d;

        /* renamed from: e */
        private long f19922e;

        /* renamed from: f */
        private RealmMigration f19923f;

        /* renamed from: g */
        private boolean f19924g;

        /* renamed from: h */
        private OsRealmConfig.Durability f19925h;

        /* renamed from: i */
        private HashSet<Object> f19926i;

        /* renamed from: j */
        private HashSet<Class<? extends RealmModel>> f19927j;

        /* renamed from: k */
        private RxObservableFactory f19928k;

        /* renamed from: l */
        private Realm.Transaction f19929l;

        /* renamed from: m */
        private boolean f19930m;

        /* renamed from: n */
        private CompactOnLaunchCallback f19931n;

        /* renamed from: o */
        private long f19932o;

        public Builder() {
            this(BaseRealm.f19803m);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder(Context context) {
            this.f19926i = new HashSet<>();
            this.f19927j = new HashSet<>();
            this.f19932o = Long.MAX_VALUE;
            if (context != null) {
                RealmCore.m2688a(context);
                m2969f(context);
                return;
            }
            throw new IllegalStateException("Call `Realm.init(Context)` before creating a RealmConfiguration");
        }

        /* renamed from: f */
        private void m2969f(Context context) {
            this.f19918a = context.getFilesDir();
            this.f19919b = "default.realm";
            this.f19921d = null;
            this.f19922e = 0L;
            this.f19923f = null;
            this.f19924g = false;
            this.f19925h = OsRealmConfig.Durability.FULL;
            this.f19930m = false;
            this.f19931n = null;
            if (RealmConfiguration.f19899q != null) {
                this.f19926i.add(RealmConfiguration.f19899q);
            }
        }

        /* renamed from: a */
        public RealmConfiguration m2974a() {
            if (this.f19930m) {
                if (this.f19929l != null) {
                    throw new IllegalStateException("This Realm is marked as read-only. Read-only Realms cannot use initialData(Realm.Transaction).");
                } else if (this.f19920c == null) {
                    throw new IllegalStateException("Only Realms provided using 'assetFile(path)' can be marked read-only. No such Realm was provided.");
                } else if (this.f19924g) {
                    throw new IllegalStateException("'deleteRealmIfMigrationNeeded()' and read-only Realms cannot be combined");
                } else if (this.f19931n != null) {
                    throw new IllegalStateException("'compactOnLaunch()' and read-only Realms cannot be combined");
                }
            }
            if (this.f19928k == null && RealmConfiguration.m2978u()) {
                this.f19928k = new RealmObservableFactory(true);
            }
            return new RealmConfiguration(this.f19918a, this.f19919b, RealmConfiguration.m2995d(new File(this.f19918a, this.f19919b)), this.f19920c, this.f19921d, this.f19922e, this.f19923f, this.f19924g, this.f19925h, RealmConfiguration.m2997b(this.f19926i, this.f19927j), this.f19928k, this.f19929l, this.f19930m, this.f19931n, false, this.f19932o);
        }

        /* renamed from: b */
        public Builder m2973b() {
            String str = this.f19920c;
            if (str == null || str.length() == 0) {
                this.f19924g = true;
                return this;
            }
            throw new IllegalStateException("Realm cannot clear its schema when previously configured to use an asset file by calling assetFile().");
        }

        /* renamed from: c */
        public Builder m2972c(File file) {
            if (file == null) {
                throw new IllegalArgumentException("Non-null 'dir' required.");
            } else if (file.isFile()) {
                throw new IllegalArgumentException("'dir' is a file, not a directory: " + file.getAbsolutePath() + ".");
            } else if (!file.exists() && !file.mkdirs()) {
                throw new IllegalArgumentException("Could not create the specified directory: " + file.getAbsolutePath() + ".");
            } else if (file.canWrite()) {
                this.f19918a = file;
                return this;
            } else {
                throw new IllegalArgumentException("Realm directory is not writable: " + file.getAbsolutePath() + ".");
            }
        }

        /* renamed from: d */
        public Builder m2971d(byte[] bArr) {
            if (bArr == null) {
                throw new IllegalArgumentException("A non-null key must be provided");
            } else if (bArr.length == 64) {
                this.f19921d = Arrays.copyOf(bArr, bArr.length);
                return this;
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "The provided key must be %s bytes. Yours was: %s", 64, Integer.valueOf(bArr.length)));
            }
        }

        /* renamed from: e */
        public Builder m2970e() {
            if (Util.m2596d(this.f19920c)) {
                this.f19925h = OsRealmConfig.Durability.MEM_ONLY;
                return this;
            }
            throw new RealmException("Realm can not use in-memory configuration if asset file is present.");
        }

        /* renamed from: g */
        public Builder m2968g(RealmMigration realmMigration) {
            if (realmMigration != null) {
                this.f19923f = realmMigration;
                return this;
            }
            throw new IllegalArgumentException("A non-null migration must be provided");
        }

        /* renamed from: h */
        public Builder m2967h(String str) {
            if (str == null || str.isEmpty()) {
                throw new IllegalArgumentException("A non-empty filename must be provided");
            }
            this.f19919b = str;
            return this;
        }

        /* renamed from: i */
        public Builder m2966i(long j) {
            if (j >= 0) {
                this.f19922e = j;
                return this;
            }
            throw new IllegalArgumentException("Realm schema version numbers must be 0 (zero) or higher. Yours was: " + j);
        }
    }

    static {
        Object H0 = Realm.m3063H0();
        f19899q = H0;
        if (H0 != null) {
            RealmProxyMediator k = m2988k(H0.getClass().getCanonicalName());
            if (k.mo2556l()) {
                f19900r = k;
                return;
            }
            throw new ExceptionInInitializerError("RealmTransformer doesn't seem to be applied. Please update the project configuration to use the Realm Gradle plugin. See https://realm.io/news/android-installation-change/");
        }
        f19900r = null;
    }

    protected RealmConfiguration(@Nullable File file, @Nullable String str, String str2, @Nullable String str3, @Nullable byte[] bArr, long j, @Nullable RealmMigration realmMigration, boolean z, OsRealmConfig.Durability durability, RealmProxyMediator realmProxyMediator, @Nullable RxObservableFactory rxObservableFactory, @Nullable Realm.Transaction transaction, boolean z2, @Nullable CompactOnLaunchCallback compactOnLaunchCallback, boolean z3, long j2) {
        this.f19902a = file;
        this.f19903b = str;
        this.f19904c = str2;
        this.f19905d = str3;
        this.f19906e = bArr;
        this.f19907f = j;
        this.f19908g = realmMigration;
        this.f19909h = z;
        this.f19910i = durability;
        this.f19911j = realmProxyMediator;
        this.f19912k = rxObservableFactory;
        this.f19913l = transaction;
        this.f19914m = z2;
        this.f19915n = compactOnLaunchCallback;
        this.f19917p = z3;
        this.f19916o = j2;
    }

    /* renamed from: b */
    protected static RealmProxyMediator m2997b(Set<Object> set, Set<Class<? extends RealmModel>> set2) {
        if (set2.size() > 0) {
            return new FilterableMediator(f19900r, set2);
        }
        if (set.size() == 1) {
            return m2988k(set.iterator().next().getClass().getCanonicalName());
        }
        RealmProxyMediator[] realmProxyMediatorArr = new RealmProxyMediator[set.size()];
        int i = 0;
        for (Object obj : set) {
            realmProxyMediatorArr[i] = m2988k(obj.getClass().getCanonicalName());
            i++;
        }
        return new CompositeMediator(realmProxyMediatorArr);
    }

    /* renamed from: d */
    protected static String m2995d(File file) {
        try {
            return file.getCanonicalPath();
        } catch (IOException e) {
            RealmFileException.Kind kind = RealmFileException.Kind.ACCESS_ERROR;
            throw new RealmFileException(kind, "Could not resolve the canonical path to the Realm file: " + file.getAbsolutePath(), e);
        }
    }

    /* renamed from: k */
    private static RealmProxyMediator m2988k(String str) {
        String[] split = str.split("\\.");
        String format = String.format(Locale.US, "io.realm.%s%s", split[split.length - 1], "Mediator");
        try {
            Constructor<?> constructor = Class.forName(format).getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return (RealmProxyMediator) constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            throw new RealmException("Could not find " + format, e);
        } catch (IllegalAccessException e2) {
            throw new RealmException("Could not create an instance of " + format, e2);
        } catch (InstantiationException e3) {
            throw new RealmException("Could not create an instance of " + format, e3);
        } catch (InvocationTargetException e4) {
            throw new RealmException("Could not create an instance of " + format, e4);
        }
    }

    /* renamed from: u */
    static boolean m2978u() {
        boolean booleanValue;
        synchronized (RealmConfiguration.class) {
            try {
                if (f19901s == null) {
                    try {
                        Class.forName("io.reactivex.Flowable");
                        f19901s = Boolean.TRUE;
                    } catch (ClassNotFoundException e) {
                        f19901s = Boolean.FALSE;
                    }
                }
                booleanValue = f19901s.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public String m2996c() {
        return this.f19905d;
    }

    /* renamed from: e */
    public CompactOnLaunchCallback m2994e() {
        return this.f19915n;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || RealmConfiguration.class != obj.getClass()) {
            return false;
        }
        RealmConfiguration realmConfiguration = (RealmConfiguration) obj;
        if (this.f19907f != realmConfiguration.f19907f || this.f19909h != realmConfiguration.f19909h || this.f19914m != realmConfiguration.f19914m || this.f19917p != realmConfiguration.f19917p) {
            return false;
        }
        File file = this.f19902a;
        if (file != null) {
            if (!file.equals(realmConfiguration.f19902a)) {
                return false;
            }
        } else if (realmConfiguration.f19902a != null) {
            return false;
        }
        String str = this.f19903b;
        if (str != null) {
            if (!str.equals(realmConfiguration.f19903b)) {
                return false;
            }
        } else if (realmConfiguration.f19903b != null) {
            return false;
        }
        if (!this.f19904c.equals(realmConfiguration.f19904c)) {
            return false;
        }
        String str2 = this.f19905d;
        if (str2 != null) {
            if (!str2.equals(realmConfiguration.f19905d)) {
                return false;
            }
        } else if (realmConfiguration.f19905d != null) {
            return false;
        }
        if (!Arrays.equals(this.f19906e, realmConfiguration.f19906e)) {
            return false;
        }
        RealmMigration realmMigration = this.f19908g;
        if (realmMigration != null) {
            if (!realmMigration.equals(realmConfiguration.f19908g)) {
                return false;
            }
        } else if (realmConfiguration.f19908g != null) {
            return false;
        }
        if (this.f19910i != realmConfiguration.f19910i || !this.f19911j.equals(realmConfiguration.f19911j)) {
            return false;
        }
        RxObservableFactory rxObservableFactory = this.f19912k;
        if (rxObservableFactory != null) {
            if (!rxObservableFactory.equals(realmConfiguration.f19912k)) {
                return false;
            }
        } else if (realmConfiguration.f19912k != null) {
            return false;
        }
        Realm.Transaction transaction = this.f19913l;
        if (transaction != null) {
            if (!transaction.equals(realmConfiguration.f19913l)) {
                return false;
            }
        } else if (realmConfiguration.f19913l != null) {
            return false;
        }
        CompactOnLaunchCallback compactOnLaunchCallback = this.f19915n;
        if (compactOnLaunchCallback != null) {
            if (!compactOnLaunchCallback.equals(realmConfiguration.f19915n)) {
                return false;
            }
        } else if (realmConfiguration.f19915n != null) {
            return false;
        }
        if (this.f19916o != realmConfiguration.f19916o) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public OsRealmConfig.Durability m2993f() {
        return this.f19910i;
    }

    /* renamed from: g */
    public byte[] m2992g() {
        byte[] bArr = this.f19906e;
        return bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public Realm.Transaction m2991h() {
        return this.f19913l;
    }

    public int hashCode() {
        File file = this.f19902a;
        int i = 0;
        int hashCode = file != null ? file.hashCode() : 0;
        String str = this.f19903b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int hashCode3 = this.f19904c.hashCode();
        String str2 = this.f19905d;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        int hashCode5 = Arrays.hashCode(this.f19906e);
        long j = this.f19907f;
        int i2 = (int) (j ^ (j >>> 32));
        RealmMigration realmMigration = this.f19908g;
        int hashCode6 = realmMigration != null ? realmMigration.hashCode() : 0;
        boolean z = this.f19909h;
        int hashCode7 = this.f19910i.hashCode();
        int hashCode8 = this.f19911j.hashCode();
        RxObservableFactory rxObservableFactory = this.f19912k;
        int hashCode9 = rxObservableFactory != null ? rxObservableFactory.hashCode() : 0;
        Realm.Transaction transaction = this.f19913l;
        int hashCode10 = transaction != null ? transaction.hashCode() : 0;
        boolean z2 = this.f19914m;
        CompactOnLaunchCallback compactOnLaunchCallback = this.f19915n;
        if (compactOnLaunchCallback != null) {
            i = compactOnLaunchCallback.hashCode();
        }
        boolean z3 = this.f19917p;
        long j2 = this.f19916o;
        return (((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + hashCode6) * 31) + (z ? 1 : 0)) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + (z2 ? 1 : 0)) * 31) + i) * 31) + (z3 ? 1 : 0)) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    /* renamed from: i */
    public long m2990i() {
        return this.f19916o;
    }

    /* renamed from: j */
    public RealmMigration m2989j() {
        return this.f19908g;
    }

    /* renamed from: l */
    public String m2987l() {
        return this.f19904c;
    }

    /* renamed from: m */
    public File m2986m() {
        return this.f19902a;
    }

    /* renamed from: n */
    public String m2985n() {
        return this.f19903b;
    }

    /* renamed from: o */
    public RxObservableFactory m2984o() {
        RxObservableFactory rxObservableFactory = this.f19912k;
        if (rxObservableFactory != null) {
            return rxObservableFactory;
        }
        throw new UnsupportedOperationException("RxJava seems to be missing from the classpath. Remember to add it as a compile dependency. See https://realm.io/docs/java/latest/#rxjava for more details.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public RealmProxyMediator m2983p() {
        return this.f19911j;
    }

    /* renamed from: q */
    public long m2982q() {
        return this.f19907f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public boolean m2981r() {
        return !Util.m2596d(this.f19905d);
    }

    /* renamed from: s */
    public boolean m2980s() {
        return this.f19914m;
    }

    /* renamed from: t */
    public boolean m2979t() {
        return this.f19917p;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("realmDirectory: ");
        File file = this.f19902a;
        sb.append(file != null ? file.toString() : "");
        sb.append("\n");
        sb.append("realmFileName : ");
        sb.append(this.f19903b);
        sb.append("\n");
        sb.append("canonicalPath: ");
        sb.append(this.f19904c);
        sb.append("\n");
        sb.append("key: ");
        sb.append("[length: ");
        sb.append(this.f19906e == null ? 0 : 64);
        sb.append("]");
        sb.append("\n");
        sb.append("schemaVersion: ");
        sb.append(Long.toString(this.f19907f));
        sb.append("\n");
        sb.append("migration: ");
        sb.append(this.f19908g);
        sb.append("\n");
        sb.append("deleteRealmIfMigrationNeeded: ");
        sb.append(this.f19909h);
        sb.append("\n");
        sb.append("durability: ");
        sb.append(this.f19910i);
        sb.append("\n");
        sb.append("schemaMediator: ");
        sb.append(this.f19911j);
        sb.append("\n");
        sb.append("readOnly: ");
        sb.append(this.f19914m);
        sb.append("\n");
        sb.append("compactOnLaunch: ");
        sb.append(this.f19915n);
        sb.append("\n");
        sb.append("maxNumberOfActiveVersions: ");
        sb.append(this.f19916o);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public boolean m2977v() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public boolean m2976w() {
        return new File(this.f19904c).exists();
    }

    /* renamed from: x */
    public boolean m2975x() {
        return this.f19909h;
    }
}
