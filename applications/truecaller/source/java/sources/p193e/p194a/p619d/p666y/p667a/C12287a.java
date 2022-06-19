package p193e.p194a.p619d.p666y.p667a;

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
/* renamed from: e.a.d.y.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/a/a.class */
public final class C12287a implements Cursor {

    /* renamed from: e */
    public static final /* synthetic */ l[] f35912e = {C22128a.m8621g0(C12287a.class, AnalyticsConstants.NAME, "getName()Ljava/lang/String;", 0), C22128a.m8621g0(C12287a.class, "number", "getNumber()Ljava/lang/String;", 0), C22128a.m8621g0(C12287a.class, "timestamp", "getTimestamp()J", 0)};

    /* renamed from: a */
    public final C19280e f35913a = new C19280e("contact_name", d0.a(String.class), null);

    /* renamed from: b */
    public final C19280e f35914b = new C19280e("normalized_number", d0.a(String.class), null);

    /* renamed from: c */
    public final C19280e f35915c = new C19280e("timestamp", d0.a(Long.class), 0L);

    /* renamed from: d */
    public final /* synthetic */ Cursor f35916d;

    public C12287a(Cursor cursor) {
        s1.z.c.l.e(cursor, "cursor");
        this.f35916d = cursor;
    }

    @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f35916d.close();
    }

    @Override // android.database.Cursor
    public void copyStringToBuffer(int i, CharArrayBuffer charArrayBuffer) {
        this.f35916d.copyStringToBuffer(i, charArrayBuffer);
    }

    @Override // android.database.Cursor
    public void deactivate() {
        this.f35916d.deactivate();
    }

    @Override // android.database.Cursor
    public byte[] getBlob(int i) {
        return this.f35916d.getBlob(i);
    }

    @Override // android.database.Cursor
    public int getColumnCount() {
        return this.f35916d.getColumnCount();
    }

    @Override // android.database.Cursor
    public int getColumnIndex(String str) {
        return this.f35916d.getColumnIndex(str);
    }

    @Override // android.database.Cursor
    public int getColumnIndexOrThrow(String str) {
        return this.f35916d.getColumnIndexOrThrow(str);
    }

    @Override // android.database.Cursor
    public String getColumnName(int i) {
        return this.f35916d.getColumnName(i);
    }

    @Override // android.database.Cursor
    public String[] getColumnNames() {
        return this.f35916d.getColumnNames();
    }

    @Override // android.database.Cursor
    public int getCount() {
        return this.f35916d.getCount();
    }

    @Override // android.database.Cursor
    public double getDouble(int i) {
        return this.f35916d.getDouble(i);
    }

    @Override // android.database.Cursor
    public Bundle getExtras() {
        return this.f35916d.getExtras();
    }

    @Override // android.database.Cursor
    public float getFloat(int i) {
        return this.f35916d.getFloat(i);
    }

    @Override // android.database.Cursor
    public int getInt(int i) {
        return this.f35916d.getInt(i);
    }

    @Override // android.database.Cursor
    public long getLong(int i) {
        return this.f35916d.getLong(i);
    }

    @Override // android.database.Cursor
    public Uri getNotificationUri() {
        return this.f35916d.getNotificationUri();
    }

    @Override // android.database.Cursor
    public int getPosition() {
        return this.f35916d.getPosition();
    }

    @Override // android.database.Cursor
    public short getShort(int i) {
        return this.f35916d.getShort(i);
    }

    @Override // android.database.Cursor
    public String getString(int i) {
        return this.f35916d.getString(i);
    }

    @Override // android.database.Cursor
    public int getType(int i) {
        return this.f35916d.getType(i);
    }

    @Override // android.database.Cursor
    public boolean getWantsAllOnMoveCalls() {
        return this.f35916d.getWantsAllOnMoveCalls();
    }

    @Override // android.database.Cursor
    public boolean isAfterLast() {
        return this.f35916d.isAfterLast();
    }

    @Override // android.database.Cursor
    public boolean isBeforeFirst() {
        return this.f35916d.isBeforeFirst();
    }

    @Override // android.database.Cursor
    public boolean isClosed() {
        return this.f35916d.isClosed();
    }

    @Override // android.database.Cursor
    public boolean isFirst() {
        return this.f35916d.isFirst();
    }

    @Override // android.database.Cursor
    public boolean isLast() {
        return this.f35916d.isLast();
    }

    @Override // android.database.Cursor
    public boolean isNull(int i) {
        return this.f35916d.isNull(i);
    }

    @Override // android.database.Cursor
    public boolean move(int i) {
        return this.f35916d.move(i);
    }

    @Override // android.database.Cursor
    public boolean moveToFirst() {
        return this.f35916d.moveToFirst();
    }

    @Override // android.database.Cursor
    public boolean moveToLast() {
        return this.f35916d.moveToLast();
    }

    @Override // android.database.Cursor
    public boolean moveToNext() {
        return this.f35916d.moveToNext();
    }

    @Override // android.database.Cursor
    public boolean moveToPosition(int i) {
        return this.f35916d.moveToPosition(i);
    }

    @Override // android.database.Cursor
    public boolean moveToPrevious() {
        return this.f35916d.moveToPrevious();
    }

    @Override // android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        this.f35916d.registerContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.f35916d.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.database.Cursor
    public boolean requery() {
        return this.f35916d.requery();
    }

    @Override // android.database.Cursor
    public Bundle respond(Bundle bundle) {
        return this.f35916d.respond(bundle);
    }

    @Override // android.database.Cursor
    public void setExtras(Bundle bundle) {
        this.f35916d.setExtras(bundle);
    }

    @Override // android.database.Cursor
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
        this.f35916d.setNotificationUri(contentResolver, uri);
    }

    @Override // android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        this.f35916d.unregisterContentObserver(contentObserver);
    }

    @Override // android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.f35916d.unregisterDataSetObserver(dataSetObserver);
    }
}
