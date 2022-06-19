package p193e.p194a.p372b0.p413i.p414e;

import android.content.UriMatcher;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.SparseArray;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.b0.i.e.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/c.class */
public class C8466c {

    /* renamed from: a */
    public final Uri f26203a;

    /* renamed from: b */
    public final SparseArray<C8456a> f26204b;

    /* renamed from: c */
    public final UriMatcher f26205c;

    /* renamed from: d */
    public final AbstractC8468e f26206d;

    public C8466c(Uri uri, SparseArray<C8456a> sparseArray, UriMatcher uriMatcher, AbstractC8468e abstractC8468e) {
        this.f26203a = uri;
        this.f26204b = sparseArray;
        this.f26205c = uriMatcher;
        this.f26206d = abstractC8468e;
    }

    /* renamed from: a */
    public C8456a m28507a(Uri uri) {
        C8456a c8456a = this.f26204b.get(this.f26205c.match(uri), null);
        if (c8456a != null) {
            return c8456a;
        }
        throw new SQLiteException(C22128a.m8571s2("Unsupported uri, uri=", uri));
    }
}
