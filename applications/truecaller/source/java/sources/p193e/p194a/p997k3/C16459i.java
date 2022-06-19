package p193e.p194a.p997k3;

import android.database.Cursor;
import p193e.p194a.p997k3.p1000l.C16494b;
import s1.z.c.l;
/* renamed from: e.a.k3.i */
/* loaded from: classes8-dex2jar.jar:e/a/k3/i.class */
public final class C16459i {

    /* renamed from: a */
    public final int f46211a;

    /* renamed from: b */
    public final int f46212b;

    /* renamed from: c */
    public final int f46213c;

    public C16459i(Cursor cursor, String str) {
        l.e(str, "groupColumn");
        this.f46211a = cursor.getColumnIndex("first_name");
        this.f46212b = cursor.getColumnIndex("last_name");
        this.f46213c = cursor.getColumnIndex(str);
    }

    /* renamed from: a */
    public final C16494b m17375a(Cursor cursor) {
        l.e(cursor, "cursor");
        return new C16494b(cursor.getString(this.f46211a), cursor.getString(this.f46212b), cursor.getString(this.f46213c));
    }
}
