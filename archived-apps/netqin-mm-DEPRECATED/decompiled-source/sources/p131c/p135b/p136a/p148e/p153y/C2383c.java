package p131c.p135b.p136a.p148e.p153y;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.e.y.c */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/c.class */
public class C2383c {

    /* renamed from: c */
    public static C2383c f9253c;

    /* renamed from: d */
    public static final Object f9254d = new Object();

    /* renamed from: a */
    public final Bundle f9255a;

    /* renamed from: b */
    public final int f9256b;

    public C2383c(Context context) {
        Throwable th;
        int next;
        Bundle bundle = null;
        try {
            try {
                bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (Throwable th2) {
                this.f9255a = null;
                throw th2;
            }
        } catch (PackageManager.NameNotFoundException e) {
            C2374t.m30041c("AndroidManifest", "Failed to get meta data.", e);
        }
        this.f9255a = bundle;
        int i = 0;
        try {
            XmlResourceParser openXmlResourceParser = context.getAssets().openXmlResourceParser("AndroidManifest.xml");
            int eventType = openXmlResourceParser.getEventType();
            int i2 = 0;
            do {
                int i3 = i2;
                if (2 == eventType) {
                    i3 = i2;
                    i = i2;
                    try {
                        if (openXmlResourceParser.getName().equals("application")) {
                            int i4 = 0;
                            while (true) {
                                i3 = i2;
                                if (i4 >= openXmlResourceParser.getAttributeCount()) {
                                    break;
                                }
                                String attributeName = openXmlResourceParser.getAttributeName(i4);
                                String attributeValue = openXmlResourceParser.getAttributeValue(i4);
                                if (attributeName.equals("networkSecurityConfig")) {
                                    i3 = Integer.valueOf(attributeValue.substring(1)).intValue();
                                    break;
                                }
                                i4++;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            C2374t.m30041c("AndroidManifest", "Failed to parse AndroidManifest.xml.", th);
                            return;
                        } finally {
                            this.f9256b = i;
                        }
                    }
                }
                next = openXmlResourceParser.next();
                eventType = next;
                i2 = i;
            } while (next != 1);
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* renamed from: a */
    public static C2383c m29991a(Context context) {
        C2383c cVar;
        synchronized (f9254d) {
            if (f9253c == null) {
                f9253c = new C2383c(context);
            }
            cVar = f9253c;
        }
        return cVar;
    }

    /* renamed from: a */
    public String m29989a(String str, String str2) {
        return this.f9255a.getString(str, str2);
    }

    /* renamed from: a */
    public boolean m29992a() {
        return this.f9256b != 0;
    }

    /* renamed from: a */
    public boolean m29990a(String str) {
        return this.f9255a.containsKey(str);
    }

    /* renamed from: a */
    public boolean m29988a(String str, boolean z) {
        return this.f9255a.getBoolean(str, z);
    }
}
