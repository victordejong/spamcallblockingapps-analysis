package p193e.p194a.p372b0.p413i;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import java.io.PrintStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C18122r;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p413i.p414e.C8466c;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
/* renamed from: e.a.b0.i.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/a.class */
public abstract class AbstractC8448a extends AbstractC8451c {

    /* renamed from: g */
    public volatile C8466c f26153g;

    @Override // p193e.p194a.p372b0.p413i.AbstractC8453d
    /* renamed from: d */
    public Bundle mo28521d(String str, String str2, Bundle bundle) {
        Cursor m28495i;
        C8456a.AbstractC8460d abstractC8460d;
        C8466c m28535r = m28535r();
        C8456a c8456a = m28535r.f26204b.get(m28535r.f26205c.match(m28535r.f26203a.buildUpon().appendPath(str).build()), null);
        if (c8456a == null || (abstractC8460d = c8456a.f26180p) == null) {
            if (str.equals("dump")) {
                if (TextUtils.isEmpty(str2)) {
                    SQLiteDatabase m28528m = m28528m();
                    PrintStream printStream = System.out;
                    m28495i = C8472b.m28495i(m28528m, null, null);
                    while (m28495i.moveToNext()) {
                        try {
                            C8472b.m28502b(m28528m, m28495i, printStream);
                        } finally {
                        }
                    }
                } else {
                    SQLiteDatabase m28528m2 = m28528m();
                    PrintStream printStream2 = System.out;
                    m28495i = C8472b.m28495i(m28528m2, "name=?", new String[]{str2});
                    while (m28495i.moveToNext()) {
                        try {
                            C8472b.m28502b(m28528m2, m28495i, printStream2);
                        } finally {
                        }
                    }
                    m28495i.close();
                }
            }
            return super.call(str, str2, bundle);
        }
        return abstractC8460d.m28515a(this, c8456a, str, str2, bundle);
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8453d
    /* renamed from: g */
    public Cursor mo28518g(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        String str3;
        String[] strArr3;
        Cursor cursor;
        Context context;
        C8456a m28507a = m28535r().m28507a(uri);
        C8456a.AbstractC8463g abstractC8463g = m28507a.f26176l;
        if (abstractC8463g != null) {
            return abstractC8463g.mo15459c(this, m28507a, uri, strArr, str, strArr2, str2, cancellationSignal);
        }
        if (!m28507a.f26168d) {
            throw new SQLiteException(C22128a.m8571s2("Cannot read from ", uri));
        }
        if (m28507a.f26170f) {
            String m43307F = MediaSessionCompat.m43307F(str, "_id=?");
            strArr3 = MediaSessionCompat.m43250c(strArr2, new String[]{uri.getLastPathSegment()});
            str3 = m43307F;
        } else {
            strArr3 = strArr2;
            str3 = str;
        }
        if (m28507a.f26171g) {
            cursor = m28528m().rawQuery(C22128a.m8618h(C22128a.m8728C("SELECT COUNT(*) AS _count FROM "), m28507a.f26172h, TextUtils.isEmpty(str3) ? "" : C22128a.m8543z2(" WHERE ", str3)), strArr3);
        } else {
            SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
            sQLiteQueryBuilder.setTables(m28507a.f26172h);
            cursor = sQLiteQueryBuilder.query(m28528m(), strArr, str3, strArr3, null, null, str2, uri.getQueryParameter("limit"), cancellationSignal);
        }
        if (cursor != null && (context = getContext()) != null) {
            cursor.setNotificationUri(context.getContentResolver(), m28507a.f26174j);
        }
        return cursor;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return m28535r().m28507a(uri).f26173i;
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8451c
    /* renamed from: l */
    public int mo28529l(Uri uri, String str, String[] strArr) {
        String str2;
        int mo15465b;
        C8456a m28507a = m28535r().m28507a(uri);
        C8456a.AbstractC8461e abstractC8461e = m28507a.f26179o;
        if (abstractC8461e != null && (mo15465b = abstractC8461e.mo15465b(this, m28507a, uri, str, strArr)) != -1) {
            C8456a.AbstractC8457a abstractC8457a = m28507a.f26183s;
            int i = mo15465b;
            if (abstractC8457a != null) {
                i = abstractC8457a.mo15467a(this, m28507a, uri, str, strArr, mo15465b);
            }
            m28531j(m28507a.f26175k);
            return i;
        } else if (!m28507a.f26169e) {
            throw new SQLiteException(C22128a.m8571s2("Cannot delete from ", uri));
        } else {
            if (m28507a.f26170f) {
                str2 = MediaSessionCompat.m43307F(str, "_id=?");
                strArr = MediaSessionCompat.m43250c(strArr, new String[]{uri.getLastPathSegment()});
            } else {
                str2 = str;
                if (str == null) {
                    strArr = null;
                    str2 = "1";
                }
            }
            int delete = m28528m().delete(m28507a.f26172h, str2, strArr);
            if (delete > 0) {
                if (m28507a.f26168d) {
                    m28532i(m28507a.f26174j);
                }
                m28531j(m28507a.f26175k);
            }
            C8456a.AbstractC8457a abstractC8457a2 = m28507a.f26183s;
            int i2 = delete;
            if (abstractC8457a2 != null) {
                i2 = abstractC8457a2.mo15467a(this, m28507a, uri, str2, strArr, delete);
            }
            return i2;
        }
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8451c
    /* renamed from: n */
    public Uri mo28527n(Uri uri, ContentValues contentValues) {
        Uri mo15464c;
        C8456a m28507a = m28535r().m28507a(uri);
        C8456a.AbstractC8462f abstractC8462f = m28507a.f26177m;
        if (abstractC8462f != null && (mo15464c = abstractC8462f.mo15464c(this, m28507a, uri, contentValues)) != null) {
            C8456a.AbstractC8458b abstractC8458b = m28507a.f26181q;
            Uri uri2 = mo15464c;
            if (abstractC8458b != null) {
                uri2 = abstractC8458b.mo15466a(this, m28507a, uri, contentValues, mo15464c);
            }
            if (m28507a.f26168d) {
                m28532i(uri2);
            }
            m28531j(m28507a.f26175k);
            return uri2;
        } else if (!m28507a.f26169e) {
            throw new SQLiteException(C22128a.m8571s2("Cannot insert into ", uri));
        } else {
            if (m28507a.f26170f || contentValues.getAsLong("_id") != null) {
                throw new SQLiteException("Cannot insert into a row, " + uri + ", values=" + contentValues);
            }
            long insertWithOnConflict = m28528m().insertWithOnConflict(m28507a.f26172h, "_id", contentValues, m28507a.f26166b);
            if (insertWithOnConflict <= 0) {
                throw new SQLiteException(C22128a.m8571s2("Could not insert into ", uri));
            }
            Uri withAppendedId = ContentUris.withAppendedId(m28507a.f26174j, insertWithOnConflict);
            if (m28507a.f26168d) {
                m28532i(m28507a.f26174j);
            }
            m28531j(m28507a.f26175k);
            C8456a.AbstractC8458b abstractC8458b2 = m28507a.f26181q;
            Uri uri3 = withAppendedId;
            if (abstractC8458b2 != null) {
                uri3 = abstractC8458b2.mo15466a(this, m28507a, uri, contentValues, withAppendedId);
                if (uri3 == null) {
                    throw new SQLiteException(C22128a.m8571s2("Could not insert into ", uri));
                }
            }
            return uri3;
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8451c
    /* renamed from: q */
    public int mo28524q(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int mo15463a;
        C8456a m28507a = m28535r().m28507a(uri);
        C8456a.AbstractC8464h abstractC8464h = m28507a.f26178n;
        if (abstractC8464h != null && (mo15463a = abstractC8464h.mo15463a(this, m28507a, uri, contentValues, str, strArr)) != -1) {
            C8456a.AbstractC8459c abstractC8459c = m28507a.f26182r;
            if (abstractC8459c != null) {
                ((C18122r) abstractC8459c).m15479a(this, m28507a, uri, contentValues, str, strArr, mo15463a);
            }
            m28531j(m28507a.f26175k);
            return mo15463a;
        } else if (!m28507a.f26169e) {
            throw new SQLiteException(C22128a.m8571s2("Cannot update ", uri));
        } else {
            String str2 = str;
            String[] strArr2 = strArr;
            if (m28507a.f26170f) {
                str2 = MediaSessionCompat.m43307F(str, "_id=?");
                strArr2 = MediaSessionCompat.m43250c(strArr, new String[]{uri.getLastPathSegment()});
            }
            int updateWithOnConflict = m28528m().updateWithOnConflict(m28507a.f26172h, contentValues, str2, strArr2, m28507a.f26167c);
            if (updateWithOnConflict > 0) {
                if (m28507a.f26168d) {
                    m28532i(m28507a.f26174j);
                }
                m28531j(m28507a.f26175k);
            }
            C8456a.AbstractC8459c abstractC8459c2 = m28507a.f26182r;
            if (abstractC8459c2 != null) {
                ((C18122r) abstractC8459c2).m15479a(this, m28507a, uri, contentValues, str2, strArr2, updateWithOnConflict);
            }
            return updateWithOnConflict;
        }
    }

    /* renamed from: r */
    public C8466c m28535r() {
        C8466c c8466c = this.f26153g;
        C8466c c8466c2 = c8466c;
        if (c8466c == null) {
            synchronized (this) {
                C8466c c8466c3 = this.f26153g;
                c8466c2 = c8466c3;
                if (c8466c3 == null) {
                    c8466c2 = mo28534s(getContext());
                    this.f26153g = c8466c2;
                }
            }
        }
        return c8466c2;
    }

    /* renamed from: s */
    public abstract C8466c mo28534s(Context context);
}
