package io.realm.internal;

import io.realm.FrozenPendingRow;
import io.realm.RealmChangeListener;
import io.realm.RealmFieldType;
import java.lang.ref.WeakReference;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/PendingRow.class */
public class PendingRow implements Row {

    /* renamed from: f */
    private OsSharedRealm f20161f;

    /* renamed from: g */
    private OsResults f20162g;

    /* renamed from: h */
    private RealmChangeListener<PendingRow> f20163h;

    /* renamed from: i */
    private WeakReference<FrontEnd> f20164i;

    /* renamed from: j */
    private boolean f20165j;

    /* renamed from: io.realm.internal.PendingRow$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/PendingRow$1.class */
    class C21841 implements RealmChangeListener<PendingRow> {

        /* renamed from: a */
        final /* synthetic */ PendingRow f20166a;

        /* renamed from: b */
        public void mo2506a(PendingRow pendingRow) {
            this.f20166a.m2696d();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/PendingRow$FrontEnd.class */
    public interface FrontEnd {
        /* renamed from: a */
        void mo2694a(Row row);
    }

    /* renamed from: b */
    private void m2698b() {
        this.f20162g.m2711u(this, this.f20163h);
        this.f20162g = null;
        this.f20163h = null;
        this.f20161f.removePendingRow(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m2696d() {
        WeakReference<FrontEnd> weakReference = this.f20164i;
        if (weakReference != null) {
            FrontEnd frontEnd = weakReference.get();
            if (frontEnd == null) {
                m2698b();
            } else if (this.f20162g.m2716p()) {
                UncheckedRow j = this.f20162g.m2722j();
                m2698b();
                if (j != null) {
                    UncheckedRow uncheckedRow = j;
                    if (this.f20165j) {
                        uncheckedRow = CheckedRow.m2837e(j);
                    }
                    frontEnd.mo2694a(uncheckedRow);
                    return;
                }
                frontEnd.mo2694a(InvalidRow.INSTANCE);
            } else {
                m2698b();
            }
        } else {
            throw new IllegalStateException("The 'frontEnd' has not been set.");
        }
    }

    /* renamed from: c */
    public void m2697c() {
        if (this.f20162g != null) {
            m2696d();
            return;
        }
        throw new IllegalStateException("The query has been executed. This 'PendingRow' is not valid anymore.");
    }

    @Override // io.realm.internal.Row
    public void checkIfAttached() {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public Row freeze(OsSharedRealm osSharedRealm) {
        return FrozenPendingRow.INSTANCE;
    }

    @Override // io.realm.internal.Row
    public byte[] getBinaryByteArray(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public boolean getBoolean(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public long getColumnKey(String str) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public String[] getColumnNames() {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public RealmFieldType getColumnType(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public Date getDate(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public double getDouble(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public float getFloat(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public long getLink(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public long getLong(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public OsList getModelList(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public long getObjectKey() {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public String getString(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public Table getTable() {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public OsList getValueList(long j, RealmFieldType realmFieldType) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public boolean hasColumn(String str) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public boolean isLoaded() {
        return false;
    }

    @Override // io.realm.internal.Row
    public boolean isNull(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public boolean isNullLink(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public boolean isValid() {
        return false;
    }

    @Override // io.realm.internal.Row
    public void nullifyLink(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public void setBinaryByteArray(long j, byte[] bArr) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public void setBoolean(long j, boolean z) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public void setDate(long j, Date date) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public void setDouble(long j, double d) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public void setFloat(long j, float f) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public void setLink(long j, long j2) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public void setLong(long j, long j2) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public void setNull(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    @Override // io.realm.internal.Row
    public void setString(long j, String str) {
        throw new IllegalStateException("The pending query has not been executed.");
    }
}
