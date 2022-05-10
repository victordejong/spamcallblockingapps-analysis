package com.inmobi.sdk;

import android.content.Context;
import com.inmobi.commons.core.p512d.C8362a;
import com.inmobi.commons.core.p512d.C8364c;
import com.inmobi.commons.core.utilities.p516b.C8404g;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
/* renamed from: com.inmobi.sdk.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/sdk/a.class */
public final class C8500a {
    /* renamed from: a */
    public static boolean m5462a(Context context) {
        List asList = Arrays.asList("carbpreference", "IMAdMLtvpRuleCache", "inmobiAppAnalyticsSession", "aeskeygenerate", "impref", "IMAdTrackerStatusUpload", "IMAdMMediationCache", "inmobiAppAnalyticsAppId", "inmobiAppAnalyticsSession", "inmobisdkaid", "IMAdTrackerStatusUpload", "testAppPref");
        for (int i = 0; i < asList.size(); i++) {
            File file = new File("/data/data/" + context.getPackageName() + "/shared_prefs/" + ((String) asList.get(i)) + ".xml");
            if (file.exists()) {
                file.delete();
            }
        }
        List asList2 = Arrays.asList(C8364c.m5804a("carb_store"), C8364c.m5804a("config_store"), C8364c.m5804a("aes_key_store"), C8364c.m5804a("mraid_js_store"), C8404g.m5672a());
        for (int i2 = 0; i2 < asList2.size(); i2++) {
            File file2 = new File("/data/data/" + context.getPackageName() + "/shared_prefs/" + ((String) asList2.get(i2)) + ".xml");
            if (file2.exists()) {
                file2.delete();
            }
        }
        List asList3 = Arrays.asList("inmobi.cache", "inmobi.cache.data", "inmobi.cache.data.events.number", "inmobi.cache.data.events.timestamp");
        for (int i3 = 0; i3 < asList3.size(); i3++) {
            if (context.getCacheDir() != null) {
                File file3 = new File(context.getCacheDir(), (String) asList3.get(i3));
                if (file3.exists()) {
                    file3.delete();
                }
            }
        }
        List asList4 = Arrays.asList("eventlog", "imai_click_events");
        for (int i4 = 0; i4 < asList4.size(); i4++) {
            if (context.getDir("data", 0) != null) {
                File file4 = new File(context.getDir("data", 0), (String) asList4.get(i4));
                if (file4.exists()) {
                    file4.delete();
                }
            }
        }
        return m5460b(context).size() != 0;
    }

    /* renamed from: a */
    public static boolean m5461a(Context context, String str) {
        File databasePath = context.getDatabasePath(str);
        return databasePath == null || !databasePath.exists() || context.deleteDatabase(str);
    }

    /* renamed from: b */
    public static List<String> m5460b(Context context) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        hashSet.add("adcache.db");
        hashSet.add("appengage.db");
        hashSet.add("im.db");
        hashSet.add("ltvp.db");
        hashSet.add("analytics.db");
        hashSet.add("com.im.db");
        String[] databaseList = context.databaseList();
        if (databaseList != null && databaseList.length > 0) {
            for (String str : databaseList) {
                if (hashSet.contains(str) && !m5461a(context, str)) {
                    arrayList.add(str);
                } else if (str.matches("com\\.im_([0-9]+\\.){3}db") && !str.equals(C8362a.f32516a) && !m5461a(context, str)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }
}
