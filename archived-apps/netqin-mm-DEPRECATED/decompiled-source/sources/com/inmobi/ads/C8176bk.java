package com.inmobi.ads;

import android.content.ContentValues;
import com.inmobi.commons.core.p512d.C8363b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.inmobi.ads.bk */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bk.class */
public class C8176bk {

    /* renamed from: b */
    public static final String f31901b = "bk";

    /* renamed from: c */
    public static C8176bk f31902c;

    /* renamed from: d */
    public static final Object f31903d = new Object();

    /* renamed from: a */
    public static final String[] f31900a = {"id", "placement_id", "tp_key", "last_accessed_ts", "ad_type", "m10_context"};

    public C8176bk() {
        C8363b a = C8363b.m5815a();
        a.m5811a("placement", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, placement_id INTEGER NOT NULL,tp_key TEXT,last_accessed_ts INTEGER NOT NULL,ad_type TEXT NOT NULL,m10_context TEXT NOT NULL,UNIQUE(placement_id,m10_context,tp_key))");
        a.m5808b();
    }

    /* renamed from: a */
    public static int m6255a(long j, String str) {
        C8363b a = C8363b.m5815a();
        int a2 = a.m5810a("placement", "ad_type=? AND last_accessed_ts<?", new String[]{str, String.valueOf(System.currentTimeMillis() - (j * 1000))});
        StringBuilder sb = new StringBuilder("Deleted ");
        sb.append(a2);
        sb.append(" expired pids from cache");
        a.m5808b();
        return a2;
    }

    /* renamed from: a */
    public static C8176bk m6256a() {
        C8176bk bkVar = f31902c;
        C8176bk bkVar2 = bkVar;
        if (bkVar == null) {
            synchronized (f31903d) {
                C8176bk bkVar3 = f31902c;
                bkVar2 = bkVar3;
                if (bkVar3 == null) {
                    bkVar2 = new C8176bk();
                    f31902c = bkVar2;
                }
            }
        }
        return bkVar2;
    }

    /* renamed from: a */
    public static List<C8175bj> m6254a(String str) {
        ArrayList arrayList = new ArrayList();
        C8363b a = C8363b.m5815a();
        List<ContentValues> a2 = a.m5809a("placement", f31900a, "ad_type=? ", new String[]{str}, null, null, null, null);
        a.m5808b();
        for (ContentValues contentValues : a2) {
            arrayList.add(new C8175bj(contentValues));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final int m6253a(List<C8175bj> list, int i) {
        synchronized (this) {
            if (list.size() == 0) {
                return 0;
            }
            C8363b a = C8363b.m5815a();
            for (int i2 = 0; i2 < list.size(); i2++) {
                C8175bj bjVar = list.get(i2);
                long j = bjVar.f31894a;
                String monetizationContext = bjVar.f31899f.toString();
                String str = bjVar.f31895b;
                ContentValues contentValues = new ContentValues();
                contentValues.put("placement_id", Long.valueOf(bjVar.f31894a));
                contentValues.put("last_accessed_ts", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("tp_key", bjVar.f31895b);
                contentValues.put("ad_type", bjVar.f31898e);
                contentValues.put("m10_context", bjVar.f31899f.toString());
                a.m5812a("placement", contentValues, "placement_id = ? AND m10_context = ? AND tp_key=?", new String[]{String.valueOf(j), monetizationContext, str});
            }
            int a2 = a.m5814a("placement") - i;
            if (a2 > 0) {
                List<ContentValues> a3 = a.m5809a("placement", new String[]{"id"}, null, null, null, null, "last_accessed_ts ASC", String.valueOf(a2));
                String[] strArr = new String[a3.size()];
                for (int i3 = 0; i3 < a3.size(); i3++) {
                    strArr[i3] = String.valueOf(a3.get(i3).getAsInteger("id"));
                }
                String replace = Arrays.toString(strArr).replace("[", "(").replace("]", ")");
                a.m5810a("placement", "id IN " + replace, null);
            }
            a.m5808b();
            return a2;
        }
    }
}
