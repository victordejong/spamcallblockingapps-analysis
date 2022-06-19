package p193e.p194a.p372b0.p413i.p414e;

import android.content.UriMatcher;
import android.net.Uri;
import android.text.TextUtils;
import android.util.SparseArray;
/* renamed from: e.a.b0.i.e.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/d.class */
public class C8467d {

    /* renamed from: a */
    public final SparseArray<C8456a> f26207a = new SparseArray<>();

    /* renamed from: b */
    public final UriMatcher f26208b = new UriMatcher(-1);

    /* renamed from: c */
    public AbstractC8468e f26209c;

    /* renamed from: d */
    public String f26210d;

    /* renamed from: e */
    public Uri f26211e;

    /* renamed from: f */
    public int f26212f;

    /* renamed from: a */
    public C8465b m28506a(String str) {
        if (TextUtils.isEmpty(this.f26210d) || TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        String str2 = this.f26210d;
        int i = this.f26212f + 1;
        this.f26212f = i;
        return new C8465b(this, str2, str, i);
    }
}
