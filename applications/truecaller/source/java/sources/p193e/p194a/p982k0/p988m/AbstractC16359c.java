package p193e.p194a.p982k0.p988m;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import java.util.ArrayList;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p982k0.p983a.AbstractC16301q;
import s1.s;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.e0.e;
import w3.b.a.i0.a;
import w3.b.a.i0.b;
/* renamed from: e.a.k0.m.c */
/* loaded from: classes7-dex2jar.jar:e/a/k0/m/c.class */
public abstract class AbstractC16359c implements AbstractC16353a {

    /* renamed from: a */
    public final b f46020a;

    /* renamed from: b */
    public final AbstractC16301q f46021b;

    /* renamed from: c */
    public final ContentResolver f46022c;

    public AbstractC16359c(AbstractC16301q abstractC16301q, ContentResolver contentResolver) {
        l.e(abstractC16301q, "fileWrapper");
        l.e(contentResolver, "contentResolver");
        this.f46021b = abstractC16301q;
        this.f46022c = contentResolver;
        b a = a.a("yyyyMMdd-HHmmss");
        l.d(a, "DateTimeFormat.forPattern(\"yyyyMMdd-HHmmss\")");
        this.f46020a = a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0098, code lost:
        if (r13 != false) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0093  */
    @Override // p193e.p194a.p982k0.p988m.AbstractC16353a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo17514a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p982k0.p988m.AbstractC16359c.mo17514a(java.lang.String):boolean");
    }

    @Override // p193e.p194a.p982k0.p988m.AbstractC16353a
    /* renamed from: c */
    public int mo17513c(String str) {
        int i;
        l.e(str, "path");
        try {
            if (C17891a1.C17902k.m15692B0(str)) {
                Uri parse = Uri.parse(str);
                l.d(parse, "Uri.parse(path)");
                i = m17509h(parse);
            } else {
                i = mo17505i(str);
            }
        } catch (Exception e) {
            String str2 = "Failed to get the file size " + e;
            i = 0;
        }
        return i;
    }

    @Override // p193e.p194a.p982k0.p988m.AbstractC16353a
    /* renamed from: d */
    public String mo17512d() {
        return "Music/TCCallRecordings";
    }

    /* renamed from: f */
    public final Uri m17511f(String str, s1.z.b.l<? super ContentValues, s> lVar) {
        l.e(str, "recordingName");
        l.e(lVar, "block");
        ContentValues contentValues = new ContentValues();
        try {
            lVar.d(contentValues);
            contentValues.put("_display_name", str);
            contentValues.put("title", str);
            w3.b.a.b bVar = new w3.b.a.b();
            l.d(bVar, "DateTime.now()");
            contentValues.put("date_added", Long.valueOf(((e) bVar).a / 1000));
            contentValues.put("mime_type", "audio/mpeg");
            return this.f46022c.insert(MediaStore.Audio.Media.getContentUri(Build.VERSION.SDK_INT >= 29 ? "external_primary" : "external"), contentValues);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: g */
    public final String m17510g(String str, boolean z) {
        String m13695I = str != null ? C19286f.m13695I(str) : null;
        String p = new w3.b.a.b().p(this.f46020a);
        StringBuilder sb = new StringBuilder();
        sb.append("TC-");
        sb.append(p);
        sb.append('-');
        if (m13695I == null) {
            m13695I = "unknown";
        }
        sb.append(m13695I);
        sb.append('.');
        sb.append(z ? "m4a" : "3gp");
        return sb.toString();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* renamed from: h */
    public final int m17509h(Uri uri) {
        Cursor query = this.f46022c.query(uri, new String[]{"_size"}, null, null, null);
        try {
            ArrayList arrayList = new ArrayList();
            if (query != null) {
                while (query.moveToNext()) {
                    arrayList.add(Long.valueOf(query.getLong(0)));
                }
            }
            C25225a.m4016G(query, null);
            Long l = (Long) i.D(arrayList);
            return (int) (((l != null ? l.longValue() : false) == true ? 1L : 0L) / 1024);
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: i */
    public abstract int mo17505i(String str);
}
