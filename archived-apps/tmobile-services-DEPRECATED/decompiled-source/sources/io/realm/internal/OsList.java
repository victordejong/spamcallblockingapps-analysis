package io.realm.internal;

import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmChangeListener;
import io.realm.internal.ObservableCollection;
import java.util.Date;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsList.class */
public class OsList implements NativeObject, ObservableCollection {

    /* renamed from: j */
    private static final long f20119j = nativeGetFinalizerPtr();

    /* renamed from: f */
    private final long f20120f;

    /* renamed from: g */
    private final NativeContext f20121g;

    /* renamed from: h */
    private final Table f20122h;

    /* renamed from: i */
    private final ObserverPairList<ObservableCollection.CollectionObserverPair> f20123i = new ObserverPairList<>();

    private OsList(OsSharedRealm osSharedRealm, long j, @Nullable Table table) {
        this.f20120f = j;
        this.f20122h = table;
        NativeContext nativeContext = osSharedRealm.context;
        this.f20121g = nativeContext;
        nativeContext.m2829a(this);
    }

    public OsList(UncheckedRow uncheckedRow, long j) {
        OsSharedRealm u = uncheckedRow.getTable().m2632u();
        long[] nativeCreate = nativeCreate(u.getNativePtr(), uncheckedRow.getNativePtr(), j);
        this.f20120f = nativeCreate[0];
        NativeContext nativeContext = u.context;
        this.f20121g = nativeContext;
        nativeContext.m2829a(this);
        if (nativeCreate[1] != 0) {
            this.f20122h = new Table(u, nativeCreate[1]);
        } else {
            this.f20122h = null;
        }
    }

    private static native void nativeAddBinary(long j, @Nullable byte[] bArr);

    private static native void nativeAddBoolean(long j, boolean z);

    private static native void nativeAddDate(long j, long j2);

    private static native void nativeAddDouble(long j, double d);

    private static native void nativeAddFloat(long j, float f);

    private static native void nativeAddLong(long j, long j2);

    private static native void nativeAddNull(long j);

    private static native void nativeAddRow(long j, long j2);

    private static native void nativeAddString(long j, @Nullable String str);

    private static native long[] nativeCreate(long j, long j2, long j3);

    private static native long nativeFreeze(long j, long j2);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetQuery(long j);

    private static native long nativeGetRow(long j, long j2);

    private static native Object nativeGetValue(long j, long j2);

    private static native void nativeInsertBinary(long j, long j2, @Nullable byte[] bArr);

    private static native void nativeInsertBoolean(long j, long j2, boolean z);

    private static native void nativeInsertDate(long j, long j2, long j3);

    private static native void nativeInsertDouble(long j, long j2, double d);

    private static native void nativeInsertFloat(long j, long j2, float f);

    private static native void nativeInsertLong(long j, long j2, long j3);

    private static native void nativeInsertNull(long j, long j2);

    private static native void nativeInsertRow(long j, long j2, long j3);

    private static native void nativeInsertString(long j, long j2, @Nullable String str);

    private static native boolean nativeIsValid(long j);

    private static native void nativeRemove(long j, long j2);

    private static native void nativeRemoveAll(long j);

    private static native void nativeSetBinary(long j, long j2, @Nullable byte[] bArr);

    private static native void nativeSetBoolean(long j, long j2, boolean z);

    private static native void nativeSetDate(long j, long j2, long j3);

    private static native void nativeSetDouble(long j, long j2, double d);

    private static native void nativeSetFloat(long j, long j2, float f);

    private static native void nativeSetLong(long j, long j2, long j3);

    private static native void nativeSetNull(long j, long j2);

    private static native void nativeSetRow(long j, long j2, long j3);

    private static native void nativeSetString(long j, long j2, @Nullable String str);

    private static native long nativeSize(long j);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    /* renamed from: A */
    public boolean m2795A() {
        return nativeIsValid(this.f20120f);
    }

    /* renamed from: B */
    public void m2794B(long j) {
        nativeRemove(this.f20120f, j);
    }

    /* renamed from: C */
    public void m2793C() {
        nativeRemoveAll(this.f20120f);
    }

    /* renamed from: D */
    public <T> void m2792D(T t, OrderedRealmCollectionChangeListener<T> orderedRealmCollectionChangeListener) {
        this.f20123i.m2803e(t, orderedRealmCollectionChangeListener);
        if (this.f20123i.m2804d()) {
            nativeStopListening(this.f20120f);
        }
    }

    /* renamed from: E */
    public <T> void m2791E(T t, RealmChangeListener<T> realmChangeListener) {
        m2792D(t, new ObservableCollection.RealmChangeListenerWrapper(realmChangeListener));
    }

    /* renamed from: F */
    public void m2790F(long j, @Nullable byte[] bArr) {
        nativeSetBinary(this.f20120f, j, bArr);
    }

    /* renamed from: G */
    public void m2789G(long j, boolean z) {
        nativeSetBoolean(this.f20120f, j, z);
    }

    /* renamed from: H */
    public void m2788H(long j, @Nullable Date date) {
        if (date == null) {
            nativeSetNull(this.f20120f, j);
        } else {
            nativeSetDate(this.f20120f, j, date.getTime());
        }
    }

    /* renamed from: I */
    public void m2787I(long j, double d) {
        nativeSetDouble(this.f20120f, j, d);
    }

    /* renamed from: J */
    public void m2786J(long j, float f) {
        nativeSetFloat(this.f20120f, j, f);
    }

    /* renamed from: K */
    public void m2785K(long j, long j2) {
        nativeSetLong(this.f20120f, j, j2);
    }

    /* renamed from: L */
    public void m2784L(long j) {
        nativeSetNull(this.f20120f, j);
    }

    /* renamed from: M */
    public void m2783M(long j, long j2) {
        nativeSetRow(this.f20120f, j, j2);
    }

    /* renamed from: N */
    public void m2782N(long j, @Nullable String str) {
        nativeSetString(this.f20120f, j, str);
    }

    /* renamed from: O */
    public long m2781O() {
        return nativeSize(this.f20120f);
    }

    /* renamed from: a */
    public void m2780a(@Nullable byte[] bArr) {
        nativeAddBinary(this.f20120f, bArr);
    }

    /* renamed from: b */
    public void m2779b(boolean z) {
        nativeAddBoolean(this.f20120f, z);
    }

    /* renamed from: c */
    public void m2778c(@Nullable Date date) {
        if (date == null) {
            nativeAddNull(this.f20120f);
        } else {
            nativeAddDate(this.f20120f, date.getTime());
        }
    }

    /* renamed from: d */
    public void m2777d(double d) {
        nativeAddDouble(this.f20120f, d);
    }

    /* renamed from: e */
    public void m2776e(float f) {
        nativeAddFloat(this.f20120f, f);
    }

    /* renamed from: f */
    public <T> void m2775f(T t, OrderedRealmCollectionChangeListener<T> orderedRealmCollectionChangeListener) {
        if (this.f20123i.m2804d()) {
            nativeStartListening(this.f20120f);
        }
        this.f20123i.m2807a(new ObservableCollection.CollectionObserverPair(t, orderedRealmCollectionChangeListener));
    }

    /* renamed from: g */
    public <T> void m2774g(T t, RealmChangeListener<T> realmChangeListener) {
        m2775f(t, new ObservableCollection.RealmChangeListenerWrapper(realmChangeListener));
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20119j;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20120f;
    }

    /* renamed from: h */
    public void m2773h(long j) {
        nativeAddLong(this.f20120f, j);
    }

    /* renamed from: i */
    public void m2772i() {
        nativeAddNull(this.f20120f);
    }

    /* renamed from: j */
    public void m2771j(long j) {
        nativeAddRow(this.f20120f, j);
    }

    /* renamed from: k */
    public void m2770k(@Nullable String str) {
        nativeAddString(this.f20120f, str);
    }

    /* renamed from: l */
    public OsList m2769l(OsSharedRealm osSharedRealm) {
        long nativeFreeze = nativeFreeze(this.f20120f, osSharedRealm.getNativePtr());
        Table table = this.f20122h;
        return new OsList(osSharedRealm, nativeFreeze, table != null ? table.m2643j(osSharedRealm) : null);
    }

    /* renamed from: m */
    public TableQuery m2768m() {
        return new TableQuery(this.f20121g, this.f20122h, nativeGetQuery(this.f20120f));
    }

    /* renamed from: n */
    public Table m2767n() {
        return this.f20122h;
    }

    @Override // io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long j) {
        OsCollectionChangeSet osCollectionChangeSet = new OsCollectionChangeSet(j, false);
        if (!osCollectionChangeSet.mo2799e()) {
            this.f20123i.m2805c(new ObservableCollection.Callback(osCollectionChangeSet));
        }
    }

    /* renamed from: o */
    public UncheckedRow m2766o(long j) {
        return this.f20122h.m2629x(nativeGetRow(this.f20120f, j));
    }

    @Nullable
    /* renamed from: p */
    public Object m2765p(long j) {
        return nativeGetValue(this.f20120f, j);
    }

    /* renamed from: q */
    public void m2764q(long j, @Nullable byte[] bArr) {
        nativeInsertBinary(this.f20120f, j, bArr);
    }

    /* renamed from: r */
    public void m2763r(long j, boolean z) {
        nativeInsertBoolean(this.f20120f, j, z);
    }

    /* renamed from: s */
    public void m2762s(long j, @Nullable Date date) {
        if (date == null) {
            nativeInsertNull(this.f20120f, j);
        } else {
            nativeInsertDate(this.f20120f, j, date.getTime());
        }
    }

    /* renamed from: t */
    public void m2761t(long j, double d) {
        nativeInsertDouble(this.f20120f, j, d);
    }

    /* renamed from: u */
    public void m2760u(long j, float f) {
        nativeInsertFloat(this.f20120f, j, f);
    }

    /* renamed from: v */
    public void m2759v(long j, long j2) {
        nativeInsertLong(this.f20120f, j, j2);
    }

    /* renamed from: w */
    public void m2758w(long j) {
        nativeInsertNull(this.f20120f, j);
    }

    /* renamed from: x */
    public void m2757x(long j, long j2) {
        nativeInsertRow(this.f20120f, j, j2);
    }

    /* renamed from: y */
    public void m2756y(long j, @Nullable String str) {
        nativeInsertString(this.f20120f, j, str);
    }

    /* renamed from: z */
    public boolean m2755z() {
        return nativeSize(this.f20120f) <= 0;
    }
}
