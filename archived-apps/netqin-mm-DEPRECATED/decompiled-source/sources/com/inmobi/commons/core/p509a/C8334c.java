package com.inmobi.commons.core.p509a;

import android.content.ContentValues;
import com.inmobi.commons.core.p510b.AbstractC8338b;
import com.inmobi.commons.core.p512d.C8363b;
import com.inmobi.commons.core.p512d.C8364c;
import com.inmobi.commons.p508a.C8326a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: com.inmobi.commons.core.a.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/a/c.class */
public class C8334c extends AbstractC8338b {

    /* renamed from: a */
    public static final String f32412a = "c";

    public C8334c() {
        C8363b a = C8363b.m5815a();
        a.m5811a("crash", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, componentType TEXT NOT NULL, eventId TEXT NOT NULL, eventType TEXT NOT NULL, payload TEXT NOT NULL, ts TEXT NOT NULL)");
        a.m5808b();
    }

    /* renamed from: a */
    public static List<C8335d> m5867a(int i) {
        C8363b a = C8363b.m5815a();
        List<ContentValues> a2 = a.m5809a("crash", null, null, null, null, null, "ts ASC", String.valueOf(i));
        ArrayList arrayList = new ArrayList();
        a.m5808b();
        for (ContentValues contentValues : a2) {
            arrayList.add(C8335d.m5864a(contentValues));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m5868a() {
        C8363b a = C8363b.m5815a();
        List<ContentValues> a2 = a.m5809a("crash", null, null, null, null, null, "ts ASC", "1");
        if (!a2.isEmpty()) {
            String asString = a2.get(0).getAsString("id");
            a.m5810a("crash", "id IN (" + asString + ")", null);
        }
        a.m5808b();
    }

    /* renamed from: a */
    public static void m5866a(C8335d dVar) {
        C8363b a = C8363b.m5815a();
        ContentValues contentValues = new ContentValues();
        contentValues.put("eventId", dVar.f32415b);
        contentValues.put("componentType", dVar.f32417d);
        contentValues.put("eventType", dVar.f32416c);
        contentValues.put("payload", dVar.m5865a());
        contentValues.put("ts", String.valueOf(dVar.f32418e));
        a.m5813a("crash", contentValues);
        a.m5808b();
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: a */
    public final int mo5762a(String str) {
        C8363b a = C8363b.m5815a();
        int a2 = a.m5814a("crash");
        a.m5808b();
        return a2;
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
            a.m5810a("crash", "id IN (" + ((Object) stringBuffer) + ")", null);
            a.m5808b();
        }
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: a */
    public final boolean mo5765a(long j, long j2, String str) {
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        boolean z = true;
        List<C8335d> a = m5867a(1);
        if (a.size() <= 0 || (seconds + j) - TimeUnit.MILLISECONDS.toSeconds(a.get(0).f32418e) < j2) {
            z = false;
        }
        return z;
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: a */
    public final boolean mo5764a(long j, String str) {
        boolean z = true;
        List<C8335d> a = m5867a(1);
        if (a.size() <= 0 || TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - a.get(0).f32418e) < j) {
            z = false;
        }
        return z;
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: b */
    public final int mo5759b(long j, String str) {
        C8363b a = C8363b.m5815a();
        int a2 = a.m5810a("crash", "ts<?", new String[]{String.valueOf(System.currentTimeMillis() - (j * 1000))});
        StringBuilder sb = new StringBuilder("Deleted ");
        sb.append(a2);
        sb.append(" expired events from crash DB");
        a.m5808b();
        return a2;
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: b */
    public final long mo5758b(String str) {
        long j = -1;
        if (C8326a.m5899a()) {
            j = C8364c.m5799b("batch_processing_info").m5798b("crash_last_batch_process", -1L);
        }
        return j;
    }

    @Override // com.inmobi.commons.core.p510b.AbstractC8338b
    /* renamed from: c */
    public final void mo5757c(long j, String str) {
        if (C8326a.m5899a()) {
            C8364c.m5799b("batch_processing_info").m5802a("crash_last_batch_process", j);
        }
    }
}
