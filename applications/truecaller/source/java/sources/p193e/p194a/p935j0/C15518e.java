package p193e.p194a.p935j0;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import java.util.ArrayList;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.j0.e */
/* loaded from: classes13-dex2jar.jar:e/a/j0/e.class */
public final class C15518e implements AbstractC15517d {

    /* renamed from: a */
    public final ContentResolver f43962a;

    public C15518e(ContentResolver contentResolver) {
        l.e(contentResolver, "contentResolver");
        this.f43962a = contentResolver;
    }

    @Override // p193e.p194a.p935j0.AbstractC15517d
    /* renamed from: a */
    public Integer mo18720a(long j, long j2) {
        ContentResolver contentResolver = this.f43962a;
        Uri m15699b = C17891a1.C17901j.m15699b();
        l.d(m15699b, "TruecallerContract.HistoryTable.getContentUri()");
        return C19286f.m13700D(contentResolver, m15699b, "COUNT()", "type IS 1 AND timestamp BETWEEN ? AND ?", new String[]{String.valueOf(j), String.valueOf(j2)});
    }

    @Override // p193e.p194a.p935j0.AbstractC15517d
    /* renamed from: b */
    public List<Long> mo18719b(long j, long j2) {
        Cursor query = this.f43962a.query(C17891a1.C17901j.m15699b(), null, "type IS 2 AND timestamp BETWEEN ? AND ?", new String[]{String.valueOf(j), String.valueOf(j2)}, null);
        if (query != null) {
            l.d(query, "contentResolver.query(\n …\n        ) ?: return null");
            try {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    HistoryEvent mo16159n = C18334g0.m15262I0(query, null, false, 3).mo16159n();
                    if (mo16159n != null) {
                        arrayList.add(Long.valueOf(mo16159n.f11541h));
                    }
                }
                th = null;
                return arrayList;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p935j0.AbstractC15517d
    /* renamed from: c */
    public Contact mo18718c(long j, long j2) {
        HistoryEvent mo16159n;
        Contact contact;
        Cursor query = this.f43962a.query(C17891a1.C17901j.m15700a(1), null, "timestamp BETWEEN ? AND ?", new String[]{String.valueOf(j), String.valueOf(j2)}, null);
        if (query != null) {
            try {
                if (query.moveToFirst() && (mo16159n = C18334g0.m15262I0(query, null, false, 3).mo16159n()) != null) {
                    contact = mo16159n.f11539f;
                    C25225a.m4016G(query, null);
                    return contact;
                }
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        contact = null;
        C25225a.m4016G(query, null);
        return contact;
    }

    @Override // p193e.p194a.p935j0.AbstractC15517d
    /* renamed from: d */
    public Integer mo18717d(long j, long j2) {
        ContentResolver contentResolver = this.f43962a;
        Uri m15699b = C17891a1.C17901j.m15699b();
        l.d(m15699b, "TruecallerContract.HistoryTable.getContentUri()");
        return C19286f.m13700D(contentResolver, m15699b, "COUNT()", "type IS 2 AND timestamp BETWEEN ? AND ?", new String[]{String.valueOf(j), String.valueOf(j2)});
    }
}
