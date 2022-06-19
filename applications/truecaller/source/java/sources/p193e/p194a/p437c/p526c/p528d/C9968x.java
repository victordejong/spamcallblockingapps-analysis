package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.insights.insightsui.GrammarCategoryData;
import com.truecaller.insights.insightsui.SenderFilterEntity;
import com.truecaller.insights.insightsui.UpdateCategoryData;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.a.x2.f;
/* renamed from: e.a.c.c.d.x */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/x.class */
public final class C9968x implements AbstractC9967w {

    /* renamed from: a */
    public final AbstractC25677q f29733a;

    /* renamed from: e.a.c.c.d.x$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/x$a.class */
    public class CallableC9969a implements Callable<List<UpdateCategoryData>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29734a;

        public CallableC9969a(C25686y c25686y) {
            C9968x.this = r4;
            this.f29734a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<UpdateCategoryData> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9968x.this.f29733a, this.f29734a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "updateCategory");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "count");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new UpdateCategoryData(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.getInt(m43237g02)));
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29734a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.x$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/x$b.class */
    public class CallableC9970b implements Callable<List<GrammarCategoryData>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29736a;

        public CallableC9970b(C25686y c25686y) {
            C9968x.this = r4;
            this.f29736a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<GrammarCategoryData> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9968x.this.f29733a, this.f29736a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "domain");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "count");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new GrammarCategoryData(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.getInt(m43237g02)));
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29736a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.x$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/x$c.class */
    public class CallableC9971c implements Callable<List<SenderFilterEntity>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29738a;

        public CallableC9971c(C25686y c25686y) {
            C9968x.this = r4;
            this.f29738a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<SenderFilterEntity> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9968x.this.f29733a, this.f29738a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "sender_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "raw_sender_id");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "sender_name");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new SenderFilterEntity(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03)));
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29738a.m3057l();
        }
    }

    public C9968x(AbstractC25677q abstractC25677q) {
        this.f29733a = abstractC25677q;
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9967w
    /* renamed from: a */
    public f<List<UpdateCategoryData>> mo26995a() {
        return C25650g.m3096a(this.f29733a, false, new String[]{"sms_backup_table"}, new CallableC9969a(C25686y.m3059j("\n            SELECT updateCategory, COUNT(*) as count FROM sms_backup_table\n            WHERE updateCategory IS NOT NULL AND deleted = 0 AND spam_category != 4\n            GROUP BY updateCategory\n            ORDER BY count DESC\n        ", 0)));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9967w
    /* renamed from: b */
    public f<List<GrammarCategoryData>> mo26994b() {
        return C25650g.m3096a(this.f29733a, false, new String[]{"parsed_data_object_table"}, new CallableC9970b(C25686y.m3059j("\n            SELECT d as domain, COUNT(*) as count FROM parsed_data_object_table\n            WHERE domain IS NOT NULL and active = 1\n            GROUP BY domain\n            ORDER BY count DESC\n        ", 0)));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9967w
    /* renamed from: c */
    public f<List<SenderFilterEntity>> mo26993c(String str, List<String> list, List<String> list2, List<String> list3) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "            SELECT CASE", StringConstant.NEW_LINE, "                WHEN sbt.updateCategory IS NOT NULL AND sbt.updateCategory != '' THEN sbt.address", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                WHEN pdo.d IS NOT NULL AND pdo.d != '' THEN pdo.address", StringConstant.NEW_LINE, "                ELSE ''", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            END sender_id,", StringConstant.NEW_LINE, "            CASE", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "                WHEN sbt.updateCategory IS NOT NULL AND sbt.updateCategory != '' THEN sbt.address", StringConstant.NEW_LINE, "                ELSE ''", StringConstant.NEW_LINE);
        C22128a.m8666T0(m8688M, "            END raw_sender_id, srt.sender_name as sender_name FROM sms_backup_table sbt", StringConstant.NEW_LINE, "            LEFT JOIN parsed_data_object_table pdo on sbt.messageID = pdo.messageID LEFT JOIN sender_resolution_table srt on srt.sender = pdo.address", StringConstant.NEW_LINE);
        m8688M.append("            WHERE sbt.deleted = 0 AND sbt.spam_category != 4");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("                AND (sbt.updateCategory IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(") OR (sbt.updateCategory IS NULL AND pdo.active = 1 AND pdo.d IN (");
        int size2 = list2.size();
        C25655d.m3086a(m8688M, size2);
        m8688M.append(")))");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("                AND ((sender_id IS NOT NULL AND sender_id != '' AND sender_id LIKE '%' || ");
        C22128a.m8666T0(m8688M, "?", " || '%')", StringConstant.NEW_LINE, "                    OR (raw_sender_id IS NOT NULL AND raw_sender_id != '' AND raw_sender_id LIKE '%' || ");
        C22128a.m8666T0(m8688M, "?", " || '%')", StringConstant.NEW_LINE, "                    OR (srt.sender_name IS NOT NULL AND srt.sender_name != '' AND srt.sender_name LIKE '%' || ");
        C22128a.m8666T0(m8688M, "?", " || '%'))", StringConstant.NEW_LINE, "                OR (pdo.address IN (");
        int size3 = list3.size();
        C25655d.m3086a(m8688M, size3);
        m8688M.append(") OR sbt.address IN (");
        int size4 = list3.size();
        C25655d.m3086a(m8688M, size4);
        m8688M.append("))");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("            GROUP BY sender_id");
        m8688M.append(StringConstant.NEW_LINE);
        String m8610j = C22128a.m8610j(m8688M, "            ORDER BY COUNT(sender_id) DESC", StringConstant.NEW_LINE, "        ");
        int i = size + 3 + size2;
        C25686y m3059j = C25686y.m3059j(m8610j, i + size3 + size4);
        int i2 = 1;
        for (String str2 : list) {
            if (str2 == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, str2);
            }
            i2++;
        }
        int i3 = size + 1;
        int i4 = i3;
        for (String str3 : list2) {
            if (str3 == null) {
                m3059j.mo2648y0(i4);
            } else {
                m3059j.mo2651f0(i4, str3);
            }
            i4++;
        }
        int i5 = i3 + size2;
        if (str == null) {
            m3059j.mo2648y0(i5);
        } else {
            m3059j.mo2651f0(i5, str);
        }
        int i6 = size + 2 + size2;
        if (str == null) {
            m3059j.mo2648y0(i6);
        } else {
            m3059j.mo2651f0(i6, str);
        }
        if (str == null) {
            m3059j.mo2648y0(i);
        } else {
            m3059j.mo2651f0(i, str);
        }
        int i7 = size + 4 + size2;
        int i8 = i7;
        for (String str4 : list3) {
            if (str4 == null) {
                m3059j.mo2648y0(i8);
            } else {
                m3059j.mo2651f0(i8, str4);
            }
            i8++;
        }
        int i9 = i7 + size3;
        for (String str5 : list3) {
            if (str5 == null) {
                m3059j.mo2648y0(i9);
            } else {
                m3059j.mo2651f0(i9, str5);
            }
            i9++;
        }
        return C25650g.m3096a(this.f29733a, false, new String[]{"sms_backup_table", "parsed_data_object_table", "sender_resolution_table"}, new CallableC9971c(m3059j));
    }
}
