package com.inmobi.commons.core.p514f;

import android.content.ContentValues;
import com.inmobi.commons.core.p510b.AbstractC8338b;
import com.inmobi.commons.core.p512d.C8363b;
import com.inmobi.commons.core.p512d.C8364c;
import com.inmobi.commons.p508a.C8326a;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: com.inmobi.commons.core.f.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/f/a.class */
public class C8377a extends AbstractC8338b {

    /* renamed from: a */
    public static final String f32570a = "a";

    public C8377a() {
        C8363b a = C8363b.m5815a();
        a.m5811a("trc", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, eventId TEXT NOT NULL, adMarkup TEXT NOT NULL, eventName TEXT NOT NULL, imPlid INTEGER NOT NULL, impressionId TEXT NOT NULL, eventType TEXT NOT NULL, dNettypeRaw TEXT NOT NULL, ts TEXT NOT NULL, adtype TEXT NOT NULL, timestamp TEXT NOT NULL)");
        a.m5808b();
    }

    /* renamed from: a */
    public static List<C8378b> m5766a(int i, String str) {
        C8363b a = C8363b.m5815a();
        List<ContentValues> a2 = a.m5809a("trc", null, "adtype=?", new String[]{str}, null, null, "ts ASC", String.valueOf(i));
        a.m5808b();
        ArrayList arrayList = new ArrayList();
        for (ContentValues contentValues : a2) {
            arrayList.add(C8378b.m5753a(contentValues));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m5763a(C8378b bVar) {
        C8363b a = C8363b.m5815a();
        ContentValues contentValues = new ContentValues();
        contentValues.put("eventId", bVar.f32572b);
        contentValues.put("adMarkup", bVar.f32573c);
        contentValues.put("eventName", bVar.f32574d);
        contentValues.put("imPlid", Long.valueOf(bVar.f32575e));
        contentValues.put("impressionId", bVar.f32576f);
        contentValues.put("eventType", bVar.f32577g);
        contentValues.put("dNettypeRaw", bVar.f32578h);
        contentValues.put("ts", String.valueOf(bVar.f32579i));
        contentValues.put("adtype", bVar.f32580j);
        contentValues.put(AvidJSONUtil.KEY_TIMESTAMP, String.valueOf(bVar.f32581k));
        a.m5813a("trc", contentValues);
        a.m5808b();
    }

    /* renamed from: c */
    public static boolean m5756c(String str) {
        C8363b a = C8363b.m5815a();
        int b = a.m5806b("trc", "adtype=?", new String[]{str});
        a.m5808b();
        return b > 0;
    }

    /* renamed from: d */
    public static void m5755d(String str) {
        C8363b a = C8363b.m5815a();
        List<ContentValues> a2 = a.m5809a("trc", null, "adtype=?", new String[]{str}, null, null, "timestamp ASC", "1");
        if (!a2.isEmpty()) {
            String asString = a2.get(0).getAsString("id");
            a.m5810a("trc", "id IN (" + asString + ")", null);
        }
        a.m5808b();
    }

    /* renamed from: e */
    public static String m5754e(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -1396342996) {
            if (str.equals("banner")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != -1052618729) {
            if (hashCode == 104431 && str.equals("int")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("native")) {
                c = 2;
            }
            c = 65535;
        }
        return c != 0 ? c != 1 ? "trc_last_native_batch_process" : "trc_last_int_batch_process" : "trc_last_banner_batch_process";
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: a */
    public final int mo5762a(String str) {
        C8363b a = C8363b.m5815a();
        int b = a.m5806b("trc", "adtype=?", new String[]{str});
        a.m5808b();
        return b;
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: a */
    public final void mo5761a(List<Integer> list) {
        if (!list.isEmpty()) {
            C8363b a = C8363b.m5815a();
            StringBuffer stringBuffer = new StringBuffer("");
            for (int i = 0; i < list.size() - 1; i++) {
                stringBuffer.append(list.get(i));
                stringBuffer.append(",");
            }
            stringBuffer.append(String.valueOf(list.get(list.size() - 1)));
            a.m5810a("trc", "id IN (" + ((Object) stringBuffer) + ")", null);
            a.m5808b();
        }
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: a */
    public final boolean mo5765a(long j, long j2, String str) {
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        boolean z = true;
        List<C8378b> a = m5766a(1, str);
        if (a.size() <= 0 || (seconds + j) - TimeUnit.MILLISECONDS.toSeconds(a.get(0).f32579i) <= j2) {
            z = false;
        }
        return z;
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: a */
    public final boolean mo5764a(long j, String str) {
        boolean z = true;
        List<C8378b> a = m5766a(1, str);
        if (a.size() <= 0 || TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - a.get(0).f32579i) < j) {
            z = false;
        }
        return z;
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: b */
    public final int mo5759b(long j, String str) {
        C8363b a = C8363b.m5815a();
        int a2 = a.m5810a("trc", "ts<? and adtype=?", new String[]{String.valueOf(System.currentTimeMillis() - (j * 1000)), str});
        StringBuilder sb = new StringBuilder("Deleted ");
        sb.append(a2);
        sb.append(" expired events from trc DB");
        a.m5808b();
        return a2;
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: b */
    public final long mo5758b(String str) {
        String e = m5754e(str);
        if (C8326a.m5899a()) {
            return C8364c.m5799b("batch_processing_info").m5798b(e, -1L);
        }
        return -1L;
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: b */
    public final String mo5760b(int i) {
        C8363b a = C8363b.m5815a();
        List<ContentValues> a2 = a.m5809a("trc", null, "id=?", new String[]{String.valueOf(i)}, null, null, "timestamp ASC", "1");
        a.m5808b();
        if (!a2.isEmpty()) {
            return C8378b.m5753a(a2.get(0)).f32580j;
        }
        return null;
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: c */
    public final void mo5757c(long j, String str) {
        String e = m5754e(str);
        if (C8326a.m5899a()) {
            C8364c.m5799b("batch_processing_info").m5802a(e, j);
        }
    }
}
