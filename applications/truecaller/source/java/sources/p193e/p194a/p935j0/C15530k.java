package p193e.p194a.p935j0;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.truecaller.messaging.data.types.InboxTab;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6249x;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.j0.k */
/* loaded from: classes13-dex2jar.jar:e/a/j0/k.class */
public final class C15530k implements AbstractC15529j {

    /* renamed from: a */
    public final ContentResolver f43988a;

    /* renamed from: b */
    public final long f43989b;

    /* renamed from: c */
    public final long f43990c;

    /* renamed from: d */
    public final AbstractC6249x f43991d;

    /* renamed from: e */
    public final AbstractC6392i0 f43992e;

    public C15530k(ContentResolver contentResolver, long j, long j2, AbstractC6249x abstractC6249x, AbstractC6392i0 abstractC6392i0) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6249x, "selectionProvider");
        l.e(abstractC6392i0, "settings");
        this.f43988a = contentResolver;
        this.f43989b = j;
        this.f43990c = j2;
        this.f43991d = abstractC6249x;
        this.f43992e = abstractC6392i0;
    }

    @Override // p193e.p194a.p935j0.AbstractC15529j
    /* renamed from: a */
    public Object mo18715a(d<? super Integer> dVar) {
        ContentResolver contentResolver = this.f43988a;
        Uri build = C17891a1.f50888a.buildUpon().appendEncodedPath("messages_moved_to_spam_query").appendQueryParameter("start_date", String.valueOf(this.f43989b)).appendQueryParameter("end_date", String.valueOf(this.f43990c)).build();
        l.d(build, "MessagesMovedToSpamQuery…i(startTimeMs, endTimeMs)");
        Integer num = null;
        Integer m13700D = C19286f.m13700D(contentResolver, build, "count", this.f43991d.mo31549a(InboxTab.SPAM), null);
        if (m13700D != null) {
            num = new Integer(this.f43992e.mo31215E2() + m13700D.intValue());
        }
        return num;
    }

    @Override // p193e.p194a.p935j0.AbstractC15529j
    /* renamed from: b */
    public Object mo18714b(d<? super C15528i> dVar) {
        int i;
        int m18713c = m18713c("transport IN (2, 0, 4, 1, 7)");
        int m18713c2 = m18713c("transport IN (2, 0, 4, 1, 7) AND (status & 1)!=0 AND (status & 2)=0");
        int m18713c3 = m18713c("transport IN (2, 0, 4, 1, 7) AND (status & 1)=0");
        int m18713c4 = m18713c("transport = 2");
        int m18713c5 = m18713c("transport IN (0, 4, 1, 7)");
        Cursor query = this.f43988a.query(C17891a1.f50888a.buildUpon().appendEncodedPath("gif_stats").build(), null, "message_date BETWEEN ? AND ?", new String[]{String.valueOf(this.f43989b), String.valueOf(this.f43990c)}, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    l.d(query, "it");
                    i = C19291g.m13520q0(query, "count");
                } else {
                    i = 0;
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        } else {
            i = 0;
        }
        return new C15528i(m18713c, m18713c2, m18713c3, m18713c4, m18713c5, i, this.f43992e.mo31215E2() + this.f43992e.mo31185K2() + this.f43992e.mo31094c1());
    }

    /* renamed from: c */
    public final int m18713c(String str) {
        ContentResolver contentResolver = this.f43988a;
        Uri m28295y = C8582g0.m28295y();
        l.d(m28295y, "MessagesTable.getContentUri()");
        int i = 0;
        Integer m13700D = C19286f.m13700D(contentResolver, m28295y, "COUNT()", str + " AND date BETWEEN ? AND ?", new String[]{String.valueOf(this.f43989b), String.valueOf(this.f43990c)});
        if (m13700D != null) {
            i = m13700D.intValue();
        }
        return i;
    }
}
