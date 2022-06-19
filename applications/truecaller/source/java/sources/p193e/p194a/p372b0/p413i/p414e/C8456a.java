package p193e.p194a.p372b0.p413i.p414e;

import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import java.util.Set;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
/* renamed from: e.a.b0.i.e.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/a.class */
public class C8456a {

    /* renamed from: a */
    public final int f26165a;

    /* renamed from: b */
    public final int f26166b;

    /* renamed from: c */
    public final int f26167c;

    /* renamed from: d */
    public final boolean f26168d;

    /* renamed from: e */
    public final boolean f26169e;

    /* renamed from: f */
    public final boolean f26170f;

    /* renamed from: g */
    public final boolean f26171g;

    /* renamed from: h */
    public final String f26172h;

    /* renamed from: i */
    public final String f26173i;

    /* renamed from: j */
    public final Uri f26174j;

    /* renamed from: k */
    public final Set<Uri> f26175k;

    /* renamed from: l */
    public final AbstractC8463g f26176l;

    /* renamed from: m */
    public final AbstractC8462f f26177m;

    /* renamed from: n */
    public final AbstractC8464h f26178n;

    /* renamed from: o */
    public final AbstractC8461e f26179o;

    /* renamed from: p */
    public final AbstractC8460d f26180p = null;

    /* renamed from: q */
    public final AbstractC8458b f26181q;

    /* renamed from: r */
    public final AbstractC8459c f26182r;

    /* renamed from: s */
    public final AbstractC8457a f26183s;

    /* renamed from: e.a.b0.i.e.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/a$a.class */
    public interface AbstractC8457a {
        /* renamed from: a */
        int mo15467a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String str, String[] strArr, int i);
    }

    /* renamed from: e.a.b0.i.e.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/a$b.class */
    public interface AbstractC8458b {
        /* renamed from: a */
        Uri mo15466a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, Uri uri2);
    }

    /* renamed from: e.a.b0.i.e.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/a$c.class */
    public interface AbstractC8459c {
    }

    /* renamed from: e.a.b0.i.e.a$d */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/a$d.class */
    public interface AbstractC8460d {
        /* renamed from: a */
        Bundle m28515a(AbstractC8448a abstractC8448a, C8456a c8456a, String str, String str2, Bundle bundle);
    }

    /* renamed from: e.a.b0.i.e.a$e */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/a$e.class */
    public interface AbstractC8461e {
        /* renamed from: b */
        int mo15465b(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String str, String[] strArr);
    }

    /* renamed from: e.a.b0.i.e.a$f */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/a$f.class */
    public interface AbstractC8462f {
        /* renamed from: c */
        Uri mo15464c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues);
    }

    /* renamed from: e.a.b0.i.e.a$g */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/a$g.class */
    public interface AbstractC8463g {
        /* renamed from: c */
        Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);
    }

    /* renamed from: e.a.b0.i.e.a$h */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/e/a$h.class */
    public interface AbstractC8464h {
        /* renamed from: a */
        int mo15463a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, String str, String[] strArr);
    }

    public C8456a(int i, String str, int i2, int i3, boolean z, boolean z2, boolean z3, boolean z4, String str2, Uri uri, Set<Uri> set, AbstractC8463g abstractC8463g, AbstractC8462f abstractC8462f, AbstractC8464h abstractC8464h, AbstractC8461e abstractC8461e, AbstractC8460d abstractC8460d, AbstractC8458b abstractC8458b, AbstractC8459c abstractC8459c, AbstractC8457a abstractC8457a) {
        this.f26165a = i;
        this.f26172h = str;
        this.f26166b = i2;
        this.f26167c = i3;
        this.f26168d = z;
        this.f26169e = z2;
        this.f26170f = z3;
        this.f26171g = z4;
        this.f26173i = str2;
        this.f26174j = uri;
        this.f26175k = set;
        this.f26176l = abstractC8463g;
        this.f26177m = abstractC8462f;
        this.f26178n = abstractC8464h;
        this.f26179o = abstractC8461e;
        this.f26181q = abstractC8458b;
        this.f26182r = abstractC8459c;
        this.f26183s = abstractC8457a;
    }

    /* renamed from: a */
    public Uri m28516a(long j) {
        return ContentUris.withAppendedId(this.f26174j, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        if (android.text.TextUtils.equals(r3.f26172h, r0.f26172h) != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof p193e.p194a.p372b0.p413i.p414e.C8456a
            if (r0 == 0) goto L3f
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L10
            r0 = 1
            return r0
        L10:
            r0 = r4
            e.a.b0.i.e.a r0 = (p193e.p194a.p372b0.p413i.p414e.C8456a) r0
            r4 = r0
            r0 = r3
            int r0 = r0.f26165a
            r1 = r4
            int r1 = r1.f26165a
            if (r0 != r1) goto L3f
            r0 = r3
            java.lang.String r0 = r0.f26173i
            r1 = r4
            java.lang.String r1 = r1.f26173i
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L3f
            r0 = r3
            java.lang.String r0 = r0.f26172h
            r1 = r4
            java.lang.String r1 = r1.f26172h
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L3f
            goto L41
        L3f:
            r0 = 0
            r5 = r0
        L41:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p413i.p414e.C8456a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return (this.f26172h.hashCode() * 27) + (this.f26173i.hashCode() * 13) + this.f26165a;
    }

    public String toString() {
        return String.format("{match=0x%08X, table=%s, type=%s, alsoNotify=%s, r=%b, w=%b, c=%b}", Integer.valueOf(this.f26165a), this.f26172h, this.f26173i, this.f26175k, Boolean.valueOf(this.f26168d), Boolean.valueOf(this.f26169e), Boolean.valueOf(this.f26171g));
    }
}
