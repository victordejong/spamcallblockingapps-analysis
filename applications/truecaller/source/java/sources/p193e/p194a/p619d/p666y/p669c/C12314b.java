package p193e.p194a.p619d.p666y.p669c;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19280e;
import s1.a.l;
import s1.z.c.d0;
/* renamed from: e.a.d.y.c.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/c/b.class */
public final class C12314b implements Cursor {

    /* renamed from: e */
    public static final /* synthetic */ l[] f35960e = {C22128a.m8621g0(C12314b.class, AnalyticsConstants.NAME, "getName()Ljava/lang/String;", 0), C22128a.m8621g0(C12314b.class, "number", "getNumber()Ljava/lang/String;", 0), C22128a.m8621g0(C12314b.class, "timestamp", "getTimestamp()J", 0)};

    /* renamed from: a */
    public final C19280e f35961a = new C19280e("contact_name", d0.a(String.class), null);

    /* renamed from: b */
    public final C19280e f35962b = new C19280e("normalized_number", d0.a(String.class), null);

    /* renamed from: c */
    public final C19280e f35963c = new C19280e("timestamp", d0.a(Long.class), 0L);

    /* renamed from: d */
    public final /* synthetic */ Cursor f35964d;

    public C12314b(Cursor cursor) {
        s1.z.c.l.e(cursor, "cursor");
        this.f35964d = cursor;
    }

    /* renamed from: b */
    public final String m23276b() {
        return (String) this.f35962b.m13705b(this, f35960e[1]);
    }

    @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f35964d.close();
    }

    @Override // android.database.Cursor
    public void copyStringToBuffer(int i, CharArrayBuffer charArrayBuffer) {
        this.f35964d.copyStringToBuffer(i, charArrayBuffer);
    }

    @Override // android.database.Cursor
    public void deactivate() {
        this.f35964d.deactivate();
    }

    @Override // android.database.Cursor
    public byte[] getBlob(int i) {
        return this.f35964d.getBlob(i);
    }

    @Override // android.database.Cursor
    public int getColumnCount() {
        return this.f35964d.getColumnCount();
    }

    @Override // android.database.Cursor
    public int getColumnIndex(String str) {
        return this.f35964d.getColumnIndex(str);
    }

    @Override // android.database.Cursor
    public int getColumnIndexOrThrow(String str) {
        return this.f35964d.getColumnIndexOrThrow(str);
    }

    @Override // android.database.Cursor
    public String getColumnName(int i) {
        return this.f35964d.getColumnName(i);
    }

    @Override // android.database.Cursor
    public String[] getColumnNames() {
        return this.f35964d.getColumnNames();
    }

    @Override // android.database.Cursor
    public int getCount() {
        return this.f35964d.getCount();
    }

    @Override // android.database.Cursor
    public double getDouble(int i) {
        return this.f35964d.getDouble(i);
    }

    @Override // android.database.Cursor
    public Bundle getExtras() {
        return this.f35964d.getExtras();
    }

    @Override // android.database.Cursor
    public float getFloat(int i) {
        return this.f35964d.getFloat(i);
    }

    @Override // android.database.Cursor
    public int getInt(int i) {
        return this.f35964d.getInt(i);
    }

    @Override // android.database.Cursor
    public long getLong(int i) {
        return this.f35964d.getLong(i);
    }

    @Override // android.database.Cursor
    public Uri getNotificationUri() {
        return this.f35964d.getNotificationUri();
    }

    @Override // android.database.Cursor
    public int getPosition() {
        return this.f35964d.getPosition();
    }

    @Override // android.database.Cursor
    public short getShort(int i) {
        return this.f35964d.getShort(i);
    }

    @Override // android.database.Cursor
    public String getString(int i) {
        return this.f35964d.getString(i);
    }

    @Override // android.database.Cursor
    public int getType(int i) {
        return this.f35964d.getType(i);
    }

    @Override // android.database.Cursor
    public boolean getWantsAllOnMoveCalls() {
        return this.f35964d.getWantsAllOnMoveCalls();
    }

    @Override // android.database.Cursor
    public boolean isAfterLast() {
        return this.f35964d.isAfterLast();
    }

    @Override // android.database.Cursor
    public boolean isBeforeFirst() {
        return this.f35964d.isBeforeFirst();
    }

    @Override // android.database.Cursor
    public boolean isClosed() {
        return this.f35964d.isClosed();
    }

    @Override // android.database.Cursor
    public boolean isFirst() {
        return this.f35964d.isFirst();
    }

    @Override // android.database.Cursor
    public boolean isLast() {
        return this.f35964d.isLast();
    }

    @Override // android.database.Cursor
    public boolean isNull(int i) {
        return this.f35964d.isNull(i);
    }

    @Override // android.database.Cursor
    public boolean move(int i) {
        return this.f35964d.move(i);
    }

    @Override // android.database.Cursor
    public boolean moveToFirst() {
        return this.f35964d.moveToFirst();
    }

    @Override // android.database.Cursor
    public boolean moveToLast() {
        return this.f35964d.moveToLast();
    }

    @Override // android.database.Cursor
    public boolean moveToNext() {
        return this.f35964d.moveToNext();
    }

    @Override // android.database.Cursor
    public boolean moveToPosition(int i) {
        return this.f35964d.moveToPosition(i);
    }

    @Override // android.database.Cursor
    public boolean moveToPrevious() {
        return this.f35964d.moveToPrevious();
    }

    @Override // android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        this.f35964d.registerContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.f35964d.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.database.Cursor
    public boolean requery() {
        return this.f35964d.requery();
    }

    @Override // android.database.Cursor
    public Bundle respond(Bundle bundle) {
        return this.f35964d.respond(bundle);
    }

    @Override // android.database.Cursor
    public void setExtras(Bundle bundle) {
        this.f35964d.setExtras(bundle);
    }

    @Override // android.database.Cursor
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
        this.f35964d.setNotificationUri(contentResolver, uri);
    }

    @Override // android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        this.f35964d.unregisterContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.f35964d.unregisterDataSetObserver(dataSetObserver);
    }
}
