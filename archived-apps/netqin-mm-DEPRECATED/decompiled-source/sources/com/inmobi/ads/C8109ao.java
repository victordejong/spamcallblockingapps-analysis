package com.inmobi.ads;

import android.graphics.Point;
import android.webkit.URLUtil;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.C8144ba;
import com.inmobi.ads.C8188bu;
import com.inmobi.ads.NativeTracker;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.p516b.C8399c;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.volley.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.ao */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ao.class */
public class C8109ao {

    /* renamed from: l */
    public static final String f31718l = "ao";

    /* renamed from: a */
    public int f31719a;

    /* renamed from: b */
    public boolean f31720b;

    /* renamed from: c */
    public boolean f31721c;

    /* renamed from: d */
    public C8105am f31722d;

    /* renamed from: e */
    public JSONArray f31723e;

    /* renamed from: f */
    public final C8109ao f31724f;

    /* renamed from: g */
    public Map<String, String> f31725g;

    /* renamed from: h */
    public Map<String, List<C8103ak>> f31726h;

    /* renamed from: i */
    public C8110a f31727i;

    /* renamed from: j */
    public boolean f31728j;

    /* renamed from: k */
    public C8171bg f31729k;

    /* renamed from: m */
    public JSONObject f31730m;

    /* renamed from: n */
    public JSONObject f31731n;

    /* renamed from: o */
    public Map<String, C8103ak> f31732o;

    /* renamed from: p */
    public Map<String, String> f31733p;

    /* renamed from: q */
    public C8195by f31734q;

    /* renamed from: r */
    public C8197c f31735r;

    /* renamed from: s */
    public AdContainer.RenderingProperties.PlacementType f31736s;

    /* renamed from: t */
    public boolean f31737t;

    /* renamed from: com.inmobi.ads.ao$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ao$a.class */
    public final class C8110a {

        /* renamed from: a */
        public JSONObject f31738a;

        /* renamed from: b */
        public C8111a f31739b = new C8111a();

        /* renamed from: c */
        public C8103ak f31740c;

        /* renamed from: com.inmobi.ads.ao$a$a */
        /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ao$a$a.class */
        public final class C8111a {

            /* renamed from: a */
            public String f31742a;

            /* renamed from: b */
            public String f31743b;

            /* renamed from: c */
            public String f31744c;

            /* renamed from: d */
            public String f31745d;

            /* renamed from: e */
            public float f31746e;

            /* renamed from: f */
            public String f31747f;

            /* renamed from: g */
            public boolean f31748g;

            public C8111a() {
            }
        }

        public C8110a() {
        }
    }

    public C8109ao() {
        this.f31724f = null;
    }

    public C8109ao(AdContainer.RenderingProperties.PlacementType placementType, JSONObject jSONObject, C8109ao aoVar, boolean z, C8197c cVar, C8195by byVar) {
        this(placementType, jSONObject, aoVar, z, cVar, byVar, (byte) 0);
    }

    public C8109ao(AdContainer.RenderingProperties.PlacementType placementType, JSONObject jSONObject, C8109ao aoVar, boolean z, C8197c cVar, C8195by byVar, byte b) {
        this.f31736s = placementType;
        this.f31724f = aoVar;
        this.f31735r = cVar == null ? new C8197c() : cVar;
        this.f31730m = jSONObject;
        this.f31719a = 0;
        this.f31720b = false;
        this.f31734q = byVar;
        this.f31732o = new HashMap();
        this.f31733p = new HashMap();
        this.f31726h = new HashMap();
        this.f31727i = new C8110a();
        this.f31737t = z;
        m6402f();
    }

    public C8109ao(AdContainer.RenderingProperties.PlacementType placementType, JSONObject jSONObject, C8197c cVar, C8195by byVar) {
        this(placementType, jSONObject, null, false, cVar, byVar);
    }

    /* renamed from: a */
    public static int m6426a(String str) {
        char c;
        String trim = str.toLowerCase(Locale.US).trim();
        int hashCode = trim.hashCode();
        if (hashCode == -1412832500) {
            if (trim.equals("companion")) {
                c = 3;
            }
            c = 65535;
        } else if (hashCode != 0) {
            if (hashCode == 112202875 && trim.equals("video")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (trim.equals("")) {
                c = 1;
            }
            c = 65535;
        }
        if (c == 1 || c == 2) {
            return 1;
        }
        return c != 3 ? 0 : 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [double] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [double] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m6418a(org.json.JSONObject r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8109ao.m6418a(org.json.JSONObject, boolean):int");
    }

    /* renamed from: a */
    private Point m6422a(JSONObject jSONObject, Point point) {
        Point point2;
        JSONObject i;
        try {
            i = m6395i(jSONObject);
        } catch (JSONException e) {
            point2 = point;
        }
        if (i.isNull("finalGeometry")) {
            return point;
        }
        point2 = new Point();
        JSONArray jSONArray = i.getJSONArray("finalGeometry");
        point2.x = C8399c.m5686a(jSONArray.getInt(0));
        point2.y = C8399c.m5686a(jSONArray.getInt(1));
        return point2;
    }

    /* renamed from: a */
    public static NativeTracker m6435a(int i, NativeTracker.TrackerEventType trackerEventType, JSONObject jSONObject) throws JSONException {
        String trim = jSONObject.isNull("url") ? "" : jSONObject.getString("url").trim();
        HashMap hashMap = new HashMap();
        if (NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_VIDEO_RENDER == trackerEventType) {
            JSONArray optJSONArray = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_EVENTS_KEY);
            if ((trim.length() == 0 || ((trim.startsWith("http") && !URLUtil.isValidUrl(trim)) || !trim.startsWith("http"))) && optJSONArray == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            if (optJSONArray != null) {
                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                    NativeTracker.TrackerEventType a = NativeTracker.m6667a(optJSONArray.getString(i2));
                    if (a == NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CREATIVE_VIEW || a == NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_PLAY || a == NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_RENDER) {
                        arrayList.add(a);
                    }
                }
            }
            hashMap.put("referencedEvents", arrayList);
        } else if (trim.length() == 0 || !URLUtil.isValidUrl(trim)) {
            return null;
        }
        HashMap hashMap2 = new HashMap();
        try {
            if (!jSONObject.isNull("params")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("params");
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap2.put(next, jSONObject2.getString(next));
                }
            }
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
        }
        NativeTracker nativeTracker = new NativeTracker(trim, i, trackerEventType, hashMap2);
        nativeTracker.f31409d = new HashMap(hashMap);
        return nativeTracker;
    }

    /* renamed from: a */
    public static C8103ak m6429a(C8109ao aoVar, C8103ak akVar) {
        while (true) {
            String str = (String) akVar.f31680e;
            if (str == null || str.length() == 0) {
                return null;
            }
            String[] split = str.split("\\|");
            C8103ak b = aoVar.m6415b(split[0]);
            if (b == null) {
                aoVar = aoVar.f31724f;
            } else if (b.equals(akVar)) {
                return null;
            } else {
                if (1 == split.length) {
                    b.f31688m = 1;
                    return b;
                }
                b.f31688m = m6426a(split[1]);
                StringBuilder sb = new StringBuilder("Referenced asset (");
                sb.append(b.f31679d);
                sb.append(")");
                return b;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Can't wrap try/catch for region: R(20:8|(17:12|17|(1:19)(1:20)|21|(1:48)(6:428|25|26|437|27|(1:29)(3:30|(3:32|33|(4:35|435|36|(1:38)))(1:41)|42))|424|49|50|449|51|93|434|94|406|(6:408|(1:412)|413|(1:417)|418|(1:420)(1:421))|422|423)|16|17|(0)(0)|21|(1:23)|48|424|49|50|449|51|93|434|94|406|(0)|422|423) */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0733, code lost:
        r17 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0a07, code lost:
        r17 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0a08, code lost:
        r18 = r0;
        r15 = r14;
        r17 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0e01, code lost:
        r17 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0235, code lost:
        r17 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x037c A[Catch: JSONException -> 0x038f, TRY_ENTER, TryCatch #20 {JSONException -> 0x038f, blocks: (B:109:0x033d, B:110:0x0356, B:112:0x036d, B:114:0x037c), top: B:460:0x032d }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x069b  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0737  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0851 A[Catch: JSONException -> 0x0882, TRY_ENTER, TRY_LEAVE, TryCatch #1 {JSONException -> 0x0882, blocks: (B:216:0x07c3, B:217:0x07c6, B:218:0x07dc, B:220:0x07fb, B:222:0x0805, B:224:0x0823, B:227:0x0840, B:229:0x0851), top: B:426:0x079f }] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x086d  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0898  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0992  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0998  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x09a9 A[Catch: JSONException -> 0x0a07, TRY_ENTER, TRY_LEAVE, TryCatch #5 {JSONException -> 0x0a07, blocks: (B:236:0x089b, B:238:0x08b6, B:240:0x08c9, B:242:0x08d4, B:244:0x08e9, B:246:0x0922, B:248:0x093a, B:253:0x0967, B:257:0x0978, B:266:0x099b, B:268:0x09a2, B:269:0x09a9, B:271:0x09d9), top: B:434:0x0284 }] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x09d9 A[Catch: JSONException -> 0x0a07, TRY_ENTER, TryCatch #5 {JSONException -> 0x0a07, blocks: (B:236:0x089b, B:238:0x08b6, B:240:0x08c9, B:242:0x08d4, B:244:0x08e9, B:246:0x0922, B:248:0x093a, B:253:0x0967, B:257:0x0978, B:266:0x099b, B:268:0x09a2, B:269:0x09a9, B:271:0x09d9), top: B:434:0x0284 }] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0a11  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0aff  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0b0d A[Catch: JSONException -> 0x0df3, TRY_ENTER, TryCatch #9 {JSONException -> 0x0df3, blocks: (B:277:0x0a19, B:279:0x0a2e, B:281:0x0a38, B:283:0x0a52, B:285:0x0a58, B:287:0x0a69, B:289:0x0a82, B:292:0x0a9f, B:294:0x0aaa, B:299:0x0ad1, B:303:0x0ae2, B:314:0x0b0d), top: B:441:0x0a19 }] */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0b59 A[Catch: JSONException -> 0x0de5, TRY_ENTER, TryCatch #4 {JSONException -> 0x0de5, blocks: (B:317:0x0b1a, B:318:0x0b33, B:321:0x0b4d, B:323:0x0b59, B:325:0x0b62, B:327:0x0b72, B:329:0x0b7c, B:330:0x0bc4, B:332:0x0c23, B:336:0x0c34, B:340:0x0c43, B:344:0x0c54, B:348:0x0c64, B:352:0x0c74, B:356:0x0c84, B:360:0x0c95, B:364:0x0ca6, B:368:0x0cb6, B:385:0x0d46, B:387:0x0d56, B:388:0x0d6b, B:390:0x0d81, B:392:0x0d8f, B:394:0x0db6), top: B:432:0x0b0a }] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0b7c A[Catch: JSONException -> 0x0de5, TryCatch #4 {JSONException -> 0x0de5, blocks: (B:317:0x0b1a, B:318:0x0b33, B:321:0x0b4d, B:323:0x0b59, B:325:0x0b62, B:327:0x0b72, B:329:0x0b7c, B:330:0x0bc4, B:332:0x0c23, B:336:0x0c34, B:340:0x0c43, B:344:0x0c54, B:348:0x0c64, B:352:0x0c74, B:356:0x0c84, B:360:0x0c95, B:364:0x0ca6, B:368:0x0cb6, B:385:0x0d46, B:387:0x0d56, B:388:0x0d6b, B:390:0x0d81, B:392:0x0d8f, B:394:0x0db6), top: B:432:0x0b0a }] */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0e25  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x02cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0dd7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01d3 A[Catch: JSONException -> 0x0235, TRY_ENTER, TryCatch #14 {JSONException -> 0x0235, blocks: (B:52:0x01d3, B:56:0x01e4, B:60:0x01f5, B:64:0x0205, B:68:0x0215, B:72:0x0225, B:77:0x0239, B:81:0x0249, B:85:0x025a, B:89:0x026b), top: B:449:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01e4 A[Catch: JSONException -> 0x0235, TRY_ENTER, TryCatch #14 {JSONException -> 0x0235, blocks: (B:52:0x01d3, B:56:0x01e4, B:60:0x01f5, B:64:0x0205, B:68:0x0215, B:72:0x0225, B:77:0x0239, B:81:0x0249, B:85:0x025a, B:89:0x026b), top: B:449:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f5 A[Catch: JSONException -> 0x0235, TRY_ENTER, TryCatch #14 {JSONException -> 0x0235, blocks: (B:52:0x01d3, B:56:0x01e4, B:60:0x01f5, B:64:0x0205, B:68:0x0215, B:72:0x0225, B:77:0x0239, B:81:0x0249, B:85:0x025a, B:89:0x026b), top: B:449:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0205 A[Catch: JSONException -> 0x0235, TRY_ENTER, TryCatch #14 {JSONException -> 0x0235, blocks: (B:52:0x01d3, B:56:0x01e4, B:60:0x01f5, B:64:0x0205, B:68:0x0215, B:72:0x0225, B:77:0x0239, B:81:0x0249, B:85:0x025a, B:89:0x026b), top: B:449:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0215 A[Catch: JSONException -> 0x0235, TRY_ENTER, TryCatch #14 {JSONException -> 0x0235, blocks: (B:52:0x01d3, B:56:0x01e4, B:60:0x01f5, B:64:0x0205, B:68:0x0215, B:72:0x0225, B:77:0x0239, B:81:0x0249, B:85:0x025a, B:89:0x026b), top: B:449:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0225 A[Catch: JSONException -> 0x0235, TRY_ENTER, TryCatch #14 {JSONException -> 0x0235, blocks: (B:52:0x01d3, B:56:0x01e4, B:60:0x01f5, B:64:0x0205, B:68:0x0215, B:72:0x0225, B:77:0x0239, B:81:0x0249, B:85:0x025a, B:89:0x026b), top: B:449:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0239 A[Catch: JSONException -> 0x0235, TRY_ENTER, TryCatch #14 {JSONException -> 0x0235, blocks: (B:52:0x01d3, B:56:0x01e4, B:60:0x01f5, B:64:0x0205, B:68:0x0215, B:72:0x0225, B:77:0x0239, B:81:0x0249, B:85:0x025a, B:89:0x026b), top: B:449:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0249 A[Catch: JSONException -> 0x0235, TRY_ENTER, TryCatch #14 {JSONException -> 0x0235, blocks: (B:52:0x01d3, B:56:0x01e4, B:60:0x01f5, B:64:0x0205, B:68:0x0215, B:72:0x0225, B:77:0x0239, B:81:0x0249, B:85:0x025a, B:89:0x026b), top: B:449:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x025a A[Catch: JSONException -> 0x0235, TRY_ENTER, TryCatch #14 {JSONException -> 0x0235, blocks: (B:52:0x01d3, B:56:0x01e4, B:60:0x01f5, B:64:0x0205, B:68:0x0215, B:72:0x0225, B:77:0x0239, B:81:0x0249, B:85:0x025a, B:89:0x026b), top: B:449:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x026b A[Catch: JSONException -> 0x0235, TRY_ENTER, TRY_LEAVE, TryCatch #14 {JSONException -> 0x0235, blocks: (B:52:0x01d3, B:56:0x01e4, B:60:0x01f5, B:64:0x0205, B:68:0x0215, B:72:0x0225, B:77:0x0239, B:81:0x0249, B:85:0x025a, B:89:0x026b), top: B:449:0x0175 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02bc  */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v469, types: [com.inmobi.ads.ak, com.inmobi.ads.be] */
    /* JADX WARN: Type inference failed for: r15v10, types: [org.json.JSONException] */
    /* JADX WARN: Type inference failed for: r17v39 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.inmobi.ads.C8103ak m6419a(org.json.JSONObject r15, java.lang.String r16, java.lang.String r17, com.inmobi.ads.C8104al r18) {
        /*
            Method dump skipped, instructions count: 3779
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8109ao.m6419a(org.json.JSONObject, java.lang.String, java.lang.String, com.inmobi.ads.al):com.inmobi.ads.ak");
    }

    /* renamed from: a */
    private C8104al m6434a(Point point, Point point2, Point point3, Point point4, JSONObject jSONObject) throws JSONException {
        String str;
        String str2 = "none";
        String str3 = "#ff000000";
        String str4 = "straight";
        if (jSONObject.isNull("border")) {
            str = str4;
        } else {
            JSONObject jSONObject2 = jSONObject.getJSONObject("border");
            if (jSONObject2.isNull("style")) {
                str = str4;
            } else {
                str2 = m6401f(jSONObject2.getString("style"));
                if (!jSONObject2.isNull("corner")) {
                    str4 = m6398g(jSONObject2.getString("corner"));
                }
                if (jSONObject2.isNull("color")) {
                    str = str4;
                } else {
                    str3 = jSONObject2.getString("color").trim();
                    str = str4;
                }
            }
        }
        String trim = jSONObject.isNull("backgroundColor") ? "#00000000" : jSONObject.getString("backgroundColor").trim();
        String str5 = "fill";
        if (!jSONObject.isNull("contentMode")) {
            String trim2 = jSONObject.getString("contentMode").trim();
            char c = 65535;
            switch (trim2.hashCode()) {
                case -1626174665:
                    if (trim2.equals(BuildConfig.VERSION_NAME)) {
                        c = 1;
                        break;
                    }
                    break;
                case -1362001767:
                    if (trim2.equals("aspectFit")) {
                        c = 4;
                        break;
                    }
                    break;
                case 3143043:
                    if (trim2.equals("fill")) {
                        c = 2;
                        break;
                    }
                    break;
                case 727618043:
                    if (trim2.equals("aspectFill")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            str5 = "fill";
            if (c != 2) {
                str5 = c != 3 ? c != 4 ? BuildConfig.VERSION_NAME : "aspectFit" : "aspectFill";
            }
        }
        return new C8104al(point.x, point.y, point2.x, point2.y, point3.x, point3.y, point4.x, point4.y, str5, str2, str, str3, trim, m6385s(jSONObject));
    }

    /* renamed from: a */
    public static C8105am m6433a(C8103ak akVar) {
        if (akVar instanceof C8105am) {
            C8105am amVar = (C8105am) akVar;
            if (m6430a(amVar)) {
                return amVar;
            }
        }
        C8103ak akVar2 = akVar.f31695t;
        while (true) {
            C8105am amVar2 = (C8105am) akVar2;
            if (amVar2 == null) {
                return null;
            }
            if (m6430a(amVar2)) {
                return amVar2;
            }
            akVar2 = amVar2.f31695t;
        }
    }

    /* renamed from: a */
    private AbstractC8196bz m6420a(JSONObject jSONObject, String str, C8103ak akVar) {
        if (!m6400f(jSONObject).equalsIgnoreCase("VIDEO")) {
            return null;
        }
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
            if (!(jSONArray == null || jSONArray.length() == 0)) {
                return (akVar == null || !(akVar instanceof C8152be)) ? new C8190bv(this.f31735r.f31994m).m6230a(str) : (AbstractC8196bz) akVar.f31680e;
            }
            return null;
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    /* renamed from: a */
    public static String m6427a(C8188bu buVar, C8171bg bgVar) {
        if ("REF_HTML".equals(bgVar.f31888z)) {
            List<C8188bu.C8189a> a = buVar.m6239a(2);
            if (a.size() > 0) {
                return a.get(0).f31940b;
            }
            List<C8188bu.C8189a> a2 = buVar.m6239a(3);
            if (a2.size() <= 0) {
                return null;
            }
            String str = a2.get(0).f31940b;
            if (URLUtil.isValidUrl(str)) {
                bgVar.f31888z = "REF_IFRAME";
                return str;
            }
            m6425a("MalformedURL", "Rich", "REF_HTML", (String) null, (String) null);
            return null;
        } else if (!"REF_IFRAME".equals(bgVar.f31888z)) {
            return null;
        } else {
            List<C8188bu.C8189a> a3 = buVar.m6239a(3);
            if (a3.size() > 0) {
                String str2 = a3.get(0).f31940b;
                if (URLUtil.isValidUrl(str2)) {
                    bgVar.f31888z = "REF_IFRAME";
                    return str2;
                }
                m6425a("MalformedURL", "Rich", "REF_IFRAME", (String) null, (String) null);
                return null;
            }
            List<C8188bu.C8189a> a4 = buVar.m6239a(2);
            if (a4.size() <= 0) {
                return null;
            }
            bgVar.f31888z = "REF_HTML";
            return a4.get(0).f31940b;
        }
    }

    /* renamed from: a */
    public static List<NativeTracker> m6423a(JSONObject jSONObject) {
        LinkedList linkedList = new LinkedList();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("passThroughJson");
            HashMap hashMap = new HashMap();
            if (!jSONObject2.isNull("macros")) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject("macros");
                Iterator<String> keys = jSONObject3.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject3.getString(next));
                }
            }
            if (!jSONObject2.isNull(Constants.VIDEO_TRACKING_URLS_KEY)) {
                JSONArray jSONArray = jSONObject2.getJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    linkedList.add(new NativeTracker(jSONArray.getString(i), 0, NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_IAS, hashMap));
                }
            }
            if (linkedList.isEmpty()) {
                linkedList.add(new NativeTracker("", 0, NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_IAS, hashMap));
            }
        } catch (Exception e) {
            new StringBuilder("Failed to parse IAS tracker : ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
        }
        return linkedList;
    }

    /* renamed from: a */
    public static void m6432a(C8103ak akVar, JSONObject jSONObject) throws JSONException {
        String str;
        String str2;
        boolean p = m6388p(jSONObject);
        boolean z = true;
        String str3 = "";
        if (p) {
            if (jSONObject.getJSONObject("assetOnclick").isNull("itemUrl")) {
                new StringBuilder("Missing itemUrl on asset ").append(jSONObject.toString());
                str2 = "";
                z = false;
            } else {
                str2 = jSONObject.getJSONObject("assetOnclick").getString("itemUrl");
                z = true;
            }
            if (!jSONObject.getJSONObject("assetOnclick").isNull("action")) {
                str = jSONObject.getJSONObject("assetOnclick").getString("action");
                str3 = str2;
            } else {
                str = "";
                str3 = str2;
            }
        } else {
            str = "";
            z = false;
        }
        akVar.m6451a(str3);
        akVar.f31685j = str;
        akVar.f31683h = z;
    }

    /* renamed from: a */
    public static void m6428a(C8152be beVar) {
        beVar.f31699x = 8;
        HashMap hashMap = new HashMap();
        hashMap.put("[ERRORCODE]", "601");
        beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_ERROR, hashMap);
    }

    /* renamed from: a */
    public static void m6425a(String str, String str2, String str3, String str4, String str5) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("errorCode", str);
            hashMap.put("type", str2);
            hashMap.put("dataType", str3);
            hashMap.put("clientRequestId", null);
            hashMap.put("impId", null);
            C8366b.m5794a();
            C8366b.m5789a("ads", "EndCardCompanionFailure", hashMap);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error in sendTelemetryEventForCompanionFailure : (");
            sb.append(e.getMessage());
            sb.append(")");
        }
    }

    /* renamed from: a */
    public static boolean m6431a(C8104al alVar, C8104al alVar2) {
        Point point = alVar.f31701a;
        int i = point.x;
        Point point2 = alVar.f31703c;
        int i2 = point2.x;
        Point point3 = alVar2.f31701a;
        int i3 = point3.x;
        Point point4 = alVar2.f31703c;
        return i + i2 >= i3 + point4.x && point.y + point2.y >= point3.y + point4.y;
    }

    /* renamed from: a */
    public static boolean m6430a(C8105am amVar) {
        return "card_scrollable".equalsIgnoreCase(amVar.f31679d);
    }

    /* renamed from: a */
    public static boolean m6424a(JSONArray jSONArray) {
        try {
            return jSONArray.getInt(2) > 0 && jSONArray.getInt(3) > 0;
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m6421a(JSONObject jSONObject, String str) {
        if (jSONObject.isNull("geometry")) {
            return false;
        }
        try {
            if (!m6424a(jSONObject.getJSONArray("geometry"))) {
                return false;
            }
            char c = 65535;
            switch (str.hashCode()) {
                case -1919329183:
                    if (str.equals("CONTAINER")) {
                        c = 1;
                        break;
                    }
                    break;
                case 67056:
                    if (str.equals("CTA")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 70564:
                    if (str.equals("GIF")) {
                        c = 7;
                        break;
                    }
                    break;
                case 2241657:
                    if (str.equals("ICON")) {
                        c = 2;
                        break;
                    }
                    break;
                case 2571565:
                    if (str.equals("TEXT")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 69775675:
                    if (str.equals("IMAGE")) {
                        c = 3;
                        break;
                    }
                    break;
                case 79826725:
                    if (str.equals("TIMER")) {
                        c = 5;
                        break;
                    }
                    break;
                case 81665115:
                    if (str.equals("VIDEO")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1942407129:
                    if (str.equals("WEBVIEW")) {
                        c = 6;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    return true;
                case '\b':
                case '\t':
                    if (jSONObject.isNull("text")) {
                        return false;
                    }
                    try {
                        return ((int) Double.parseDouble(jSONObject.getJSONObject("text").getString("size"))) > 0;
                    } catch (NumberFormatException e) {
                        C8328a.m5878a().m5875a(new C8365a(e));
                        return false;
                    }
                default:
                    return false;
            }
        } catch (JSONException e2) {
            C8328a.m5878a().m5875a(new C8365a(e2));
            return false;
        }
    }

    /* renamed from: b */
    private Point m6413b(JSONObject jSONObject, Point point) {
        Point point2;
        JSONObject i;
        try {
            i = m6395i(jSONObject);
        } catch (JSONException e) {
            point2 = point;
        }
        if (i.isNull("finalGeometry")) {
            return point;
        }
        point2 = new Point();
        JSONArray jSONArray = i.getJSONArray("finalGeometry");
        point2.x = C8399c.m5686a(jSONArray.getInt(2));
        point2.y = C8399c.m5686a(jSONArray.getInt(3));
        return point2;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0218  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.inmobi.ads.C8139az.C8140a m6416b(android.graphics.Point r22, android.graphics.Point r23, android.graphics.Point r24, android.graphics.Point r25, org.json.JSONObject r26) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8109ao.m6416b(android.graphics.Point, android.graphics.Point, android.graphics.Point, android.graphics.Point, org.json.JSONObject):com.inmobi.ads.az$a");
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x0356 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e5 A[Catch: JSONException -> 0x035e, TryCatch #0 {JSONException -> 0x035e, blocks: (B:6:0x0014, B:13:0x0030, B:15:0x0043, B:22:0x0079, B:26:0x0089, B:30:0x0099, B:44:0x00db, B:46:0x00e5, B:48:0x00fb, B:49:0x0115, B:51:0x0163, B:55:0x0174, B:59:0x0186, B:63:0x0197, B:67:0x01a8, B:71:0x01b9, B:75:0x01cb, B:79:0x01dd, B:86:0x0220, B:87:0x0228, B:88:0x022f, B:89:0x0236, B:90:0x023d, B:91:0x0244, B:92:0x024b, B:93:0x0252, B:94:0x0259, B:95:0x0260, B:96:0x026e, B:100:0x02a3, B:105:0x02b7, B:110:0x02cb, B:115:0x02df, B:127:0x0304, B:128:0x030b, B:129:0x0312, B:130:0x0319, B:131:0x0320, B:132:0x0324, B:132:0x0324, B:135:0x032b, B:137:0x0332, B:139:0x033f, B:140:0x034a, B:141:0x0356), top: B:147:0x0014 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.inmobi.ads.NativeTracker> m6414b(org.json.JSONObject r5) {
        /*
            Method dump skipped, instructions count: 879
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8109ao.m6414b(org.json.JSONObject):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010c  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.inmobi.ads.C8139az.C8140a m6411c(android.graphics.Point r20, android.graphics.Point r21, android.graphics.Point r22, android.graphics.Point r23, org.json.JSONObject r24) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8109ao.m6411c(android.graphics.Point, android.graphics.Point, android.graphics.Point, android.graphics.Point, org.json.JSONObject):com.inmobi.ads.az$a");
    }

    /* renamed from: c */
    public static String m6409c(JSONObject jSONObject) {
        try {
            return ((m6400f(jSONObject).equalsIgnoreCase("ICON") || m6400f(jSONObject).equalsIgnoreCase("IMAGE") || m6400f(jSONObject).equalsIgnoreCase("GIF")) && jSONObject.getJSONArray("assetValue").getString(0).length() != 0) ? jSONObject.getJSONArray("assetValue").getString(0) : "";
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return "";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: d */
    public static int m6407d(String str) {
        char c;
        String trim = str.toUpperCase(Locale.US).trim();
        switch (trim.hashCode()) {
            case -2084521848:
                if (trim.equals("DOWNLOAD")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1038134325:
                if (trim.equals("EXTERNAL")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 69805756:
                if (trim.equals("INAPP")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1411860198:
                if (trim.equals("DEEPLINK")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 2) {
            return 1;
        }
        if (c != 3) {
            return c != 4 ? 2 : 4;
        }
        return 3;
    }

    /* renamed from: d */
    public static String m6406d(JSONObject jSONObject) {
        try {
            return jSONObject.getString("assetId");
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return Integer.toString(jSONObject.hashCode());
        }
    }

    /* renamed from: d */
    private void m6408d() {
        int i;
        C8188bu.C8189a aVar;
        for (C8103ak akVar : m6410c("IMAGE")) {
            if (!URLUtil.isValidUrl((String) akVar.f31680e)) {
                C8103ak a = m6429a(this, akVar);
                if (a == null) {
                    StringBuilder sb = new StringBuilder("Could not find referenced asset for asset (");
                    sb.append(akVar.f31679d);
                    sb.append(")");
                } else if (a.f31677b.equals(akVar.f31677b)) {
                    akVar.f31680e = a.f31680e;
                } else if ("VIDEO".equals(a.f31677b) && 1 != (i = a.f31688m) && 2 == i) {
                    C8152be beVar = (C8152be) a;
                    AbstractC8196bz b = beVar.m6311b();
                    C8188bu a2 = C8187bt.m6241a(beVar, akVar);
                    List<C8188bu.C8189a> a3 = a2 == null ? null : a2.m6239a(1);
                    if (a3 != null) {
                        Iterator<C8188bu.C8189a> it = a3.iterator();
                        while (it.hasNext()) {
                            aVar = it.next();
                            if (URLUtil.isValidUrl(aVar.f31940b)) {
                                break;
                            }
                        }
                    }
                    aVar = null;
                    if (a2 != null && aVar != null) {
                        b.mo6205a(a2);
                        new StringBuilder("Setting image asset value: ").append(aVar.f31940b);
                        akVar.f31680e = aVar.f31940b;
                        akVar.m6449a(a2.m6238a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CREATIVE_VIEW));
                        akVar.m6448a(beVar.f31696u, NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_ERROR);
                    } else if (b.mo6201e().size() > 0) {
                        m6428a(beVar);
                        m6425a(a2 == null ? "NoBestFitCompanion" : "NoValidResource", "Static", MoPubBrowser.DESTINATION_URL_KEY, (String) null, (String) null);
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: e */
    public static String m6404e(String str) {
        char c;
        String trim = str.toLowerCase(Locale.US).trim();
        switch (trim.hashCode()) {
            case -1178781136:
                if (trim.equals("italic")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1026963764:
                if (trim.equals("underline")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -891985998:
                if (trim.equals("strike")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 3029637:
                if (trim.equals("bold")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 3387192:
                if (trim.equals("none")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        return c != 2 ? c != 3 ? c != 4 ? c != 5 ? "none" : "underline" : "strike" : "italic" : "bold";
    }

    /* renamed from: e */
    public static String m6403e(JSONObject jSONObject) {
        try {
            return jSONObject.getString("assetName");
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return "";
        }
    }

    /* renamed from: e */
    private void m6405e() {
        for (C8103ak akVar : m6410c("WEBVIEW")) {
            C8171bg bgVar = (C8171bg) akVar;
            if (!MoPubBrowser.DESTINATION_URL_KEY.equals(bgVar.f31888z) && !"HTML".equals(bgVar.f31888z)) {
                C8103ak a = m6429a(this, akVar);
                if (a == null) {
                    StringBuilder sb = new StringBuilder("Could not find referenced asset for asset (");
                    sb.append(akVar.f31679d);
                    sb.append(")");
                } else if (a.f31677b.equals(akVar.f31677b)) {
                    akVar.f31680e = a.f31680e;
                } else if ("VIDEO".equals(a.f31677b) && 2 == a.f31688m) {
                    C8152be beVar = (C8152be) a;
                    AbstractC8196bz b = beVar.m6311b();
                    C8188bu a2 = C8187bt.m6241a(beVar, akVar);
                    String a3 = a2 == null ? null : m6427a(a2, bgVar);
                    boolean equals = "REF_IFRAME".equals(bgVar.f31888z);
                    boolean equals2 = "REF_HTML".equals(bgVar.f31888z);
                    if (a2 == null || ((equals && !URLUtil.isValidUrl(a3)) || (equals2 && a3 == null))) {
                        if (b.mo6201e().size() > 0) {
                            m6428a(beVar);
                            m6425a(a2 == null ? "NoBestFitCompanion" : "NoValidResource", "Rich", bgVar.f31888z, (String) null, (String) null);
                        }
                        bgVar.f31888z = "UNKNOWN";
                    } else {
                        b.mo6205a(a2);
                        akVar.f31680e = a3;
                        akVar.m6449a(a2.m6238a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CREATIVE_VIEW));
                    }
                }
            }
        }
    }

    /* renamed from: f */
    public static String m6401f(String str) {
        char c;
        String trim = str.toLowerCase(Locale.US).trim();
        int hashCode = trim.hashCode();
        if (hashCode != 3321844) {
            if (hashCode == 3387192 && trim.equals("none")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (trim.equals("line")) {
                c = 2;
            }
            c = 65535;
        }
        return c != 2 ? "none" : "line";
    }

    /* renamed from: f */
    public static String m6400f(JSONObject jSONObject) {
        try {
            return jSONObject.getString("assetType");
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return "";
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(32:(2:133|2)|(6:6|7|(2:9|(32:11|(31:15|16|26|(2:28|(1:30))(1:31)|32|33|129|34|(1:36)|37|38|(1:42)|43|44|(12:46|47|131|48|49|(2:51|52)(1:53)|54|(2:56|57)|58|59|60|(1:62))|63|64|(1:66)|67|68|71|72|(1:74)|75|76|(3:80|(3:84|81|82)|138)|85|(5:89|(3:140|91|(14:141|93|94|136|95|96|134|97|98|103|(1:105)(3:106|107|(2:109|(2:111|(1:113)(1:114))(1:115))(1:116))|117|118|145)(1:144))(1:143)|142|86|87)|139|119|(2:121|122)(2:123|124))|25|26|(0)(0)|32|33|129|34|(0)|37|38|(2:40|42)|43|44|(0)|63|64|(0)|67|68|71|72|(0)|75|76|(4:78|80|(2:81|82)|138)|85|(2:86|87)|139|119|(0)(0))(32:17|(31:19|20|26|(0)(0)|32|33|129|34|(0)|37|38|(0)|43|44|(0)|63|64|(0)|67|68|71|72|(0)|75|76|(0)|85|(2:86|87)|139|119|(0)(0))|25|26|(0)(0)|32|33|129|34|(0)|37|38|(0)|43|44|(0)|63|64|(0)|67|68|71|72|(0)|75|76|(0)|85|(2:86|87)|139|119|(0)(0)))(32:21|(31:23|24|26|(0)(0)|32|33|129|34|(0)|37|38|(0)|43|44|(0)|63|64|(0)|67|68|71|72|(0)|75|76|(0)|85|(2:86|87)|139|119|(0)(0))|25|26|(0)(0)|32|33|129|34|(0)|37|38|(0)|43|44|(0)|63|64|(0)|67|68|71|72|(0)|75|76|(0)|85|(2:86|87)|139|119|(0)(0))|125|126|127)|4|5|32|33|129|34|(0)|37|38|(0)|43|44|(0)|63|64|(0)|67|68|71|72|(0)|75|76|(0)|85|(2:86|87)|139|119|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0261, code lost:
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0263, code lost:
        com.inmobi.commons.core.p509a.C8328a.m5878a().m5875a(new com.inmobi.commons.core.p513e.C8365a(r11));
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03a7 A[Catch: JSONException -> 0x0437, TRY_ENTER, TRY_LEAVE, TryCatch #2 {JSONException -> 0x0437, blocks: (B:2:0x0000, B:6:0x0020, B:13:0x0051, B:17:0x0060, B:21:0x006f, B:32:0x0094, B:70:0x0263, B:72:0x0277, B:74:0x0288, B:76:0x0296, B:78:0x02a2, B:80:0x02b3, B:82:0x02bc, B:84:0x02c4, B:85:0x02e5, B:87:0x02fd, B:89:0x0305, B:91:0x0339, B:93:0x0356, B:95:0x036c, B:97:0x0373, B:101:0x038a, B:105:0x03a7, B:106:0x03b2, B:113:0x03ce, B:114:0x03d9, B:115:0x03e2, B:116:0x03ef, B:118:0x03f9, B:119:0x040d, B:121:0x041a, B:123:0x0428, B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:133:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x03b2 A[Catch: JSONException -> 0x0437, TRY_ENTER, TRY_LEAVE, TryCatch #2 {JSONException -> 0x0437, blocks: (B:2:0x0000, B:6:0x0020, B:13:0x0051, B:17:0x0060, B:21:0x006f, B:32:0x0094, B:70:0x0263, B:72:0x0277, B:74:0x0288, B:76:0x0296, B:78:0x02a2, B:80:0x02b3, B:82:0x02bc, B:84:0x02c4, B:85:0x02e5, B:87:0x02fd, B:89:0x0305, B:91:0x0339, B:93:0x0356, B:95:0x036c, B:97:0x0373, B:101:0x038a, B:105:0x03a7, B:106:0x03b2, B:113:0x03ce, B:114:0x03d9, B:115:0x03e2, B:116:0x03ef, B:118:0x03f9, B:119:0x040d, B:121:0x041a, B:123:0x0428, B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:133:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x041a A[Catch: JSONException -> 0x0437, TryCatch #2 {JSONException -> 0x0437, blocks: (B:2:0x0000, B:6:0x0020, B:13:0x0051, B:17:0x0060, B:21:0x006f, B:32:0x0094, B:70:0x0263, B:72:0x0277, B:74:0x0288, B:76:0x0296, B:78:0x02a2, B:80:0x02b3, B:82:0x02bc, B:84:0x02c4, B:85:0x02e5, B:87:0x02fd, B:89:0x0305, B:91:0x0339, B:93:0x0356, B:95:0x036c, B:97:0x0373, B:101:0x038a, B:105:0x03a7, B:106:0x03b2, B:113:0x03ce, B:114:0x03d9, B:115:0x03e2, B:116:0x03ef, B:118:0x03f9, B:119:0x040d, B:121:0x041a, B:123:0x0428, B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:133:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0428 A[Catch: JSONException -> 0x0437, TRY_ENTER, TryCatch #2 {JSONException -> 0x0437, blocks: (B:2:0x0000, B:6:0x0020, B:13:0x0051, B:17:0x0060, B:21:0x006f, B:32:0x0094, B:70:0x0263, B:72:0x0277, B:74:0x0288, B:76:0x0296, B:78:0x02a2, B:80:0x02b3, B:82:0x02bc, B:84:0x02c4, B:85:0x02e5, B:87:0x02fd, B:89:0x0305, B:91:0x0339, B:93:0x0356, B:95:0x036c, B:97:0x0373, B:101:0x038a, B:105:0x03a7, B:106:0x03b2, B:113:0x03ce, B:114:0x03d9, B:115:0x03e2, B:116:0x03ef, B:118:0x03f9, B:119:0x040d, B:121:0x041a, B:123:0x0428, B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:133:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e0 A[Catch: JSONException -> 0x0261, TryCatch #0 {JSONException -> 0x0261, blocks: (B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:129:0x00d4, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fe A[Catch: JSONException -> 0x0261, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0261, blocks: (B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:129:0x00d4, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x019d A[Catch: JSONException -> 0x0261, TryCatch #0 {JSONException -> 0x0261, blocks: (B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:129:0x00d4, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0249 A[Catch: JSONException -> 0x0261, TryCatch #0 {JSONException -> 0x0261, blocks: (B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:129:0x00d4, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0288 A[Catch: JSONException -> 0x0437, TryCatch #2 {JSONException -> 0x0437, blocks: (B:2:0x0000, B:6:0x0020, B:13:0x0051, B:17:0x0060, B:21:0x006f, B:32:0x0094, B:70:0x0263, B:72:0x0277, B:74:0x0288, B:76:0x0296, B:78:0x02a2, B:80:0x02b3, B:82:0x02bc, B:84:0x02c4, B:85:0x02e5, B:87:0x02fd, B:89:0x0305, B:91:0x0339, B:93:0x0356, B:95:0x036c, B:97:0x0373, B:101:0x038a, B:105:0x03a7, B:106:0x03b2, B:113:0x03ce, B:114:0x03d9, B:115:0x03e2, B:116:0x03ef, B:118:0x03f9, B:119:0x040d, B:121:0x041a, B:123:0x0428, B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:133:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02a2 A[Catch: JSONException -> 0x0437, TRY_LEAVE, TryCatch #2 {JSONException -> 0x0437, blocks: (B:2:0x0000, B:6:0x0020, B:13:0x0051, B:17:0x0060, B:21:0x006f, B:32:0x0094, B:70:0x0263, B:72:0x0277, B:74:0x0288, B:76:0x0296, B:78:0x02a2, B:80:0x02b3, B:82:0x02bc, B:84:0x02c4, B:85:0x02e5, B:87:0x02fd, B:89:0x0305, B:91:0x0339, B:93:0x0356, B:95:0x036c, B:97:0x0373, B:101:0x038a, B:105:0x03a7, B:106:0x03b2, B:113:0x03ce, B:114:0x03d9, B:115:0x03e2, B:116:0x03ef, B:118:0x03f9, B:119:0x040d, B:121:0x041a, B:123:0x0428, B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:133:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02c4 A[Catch: JSONException -> 0x0437, LOOP:0: B:81:0x02ba->B:84:0x02c4, LOOP_END, TRY_LEAVE, TryCatch #2 {JSONException -> 0x0437, blocks: (B:2:0x0000, B:6:0x0020, B:13:0x0051, B:17:0x0060, B:21:0x006f, B:32:0x0094, B:70:0x0263, B:72:0x0277, B:74:0x0288, B:76:0x0296, B:78:0x02a2, B:80:0x02b3, B:82:0x02bc, B:84:0x02c4, B:85:0x02e5, B:87:0x02fd, B:89:0x0305, B:91:0x0339, B:93:0x0356, B:95:0x036c, B:97:0x0373, B:101:0x038a, B:105:0x03a7, B:106:0x03b2, B:113:0x03ce, B:114:0x03d9, B:115:0x03e2, B:116:0x03ef, B:118:0x03f9, B:119:0x040d, B:121:0x041a, B:123:0x0428, B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:133:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0305 A[Catch: JSONException -> 0x0437, TryCatch #2 {JSONException -> 0x0437, blocks: (B:2:0x0000, B:6:0x0020, B:13:0x0051, B:17:0x0060, B:21:0x006f, B:32:0x0094, B:70:0x0263, B:72:0x0277, B:74:0x0288, B:76:0x0296, B:78:0x02a2, B:80:0x02b3, B:82:0x02bc, B:84:0x02c4, B:85:0x02e5, B:87:0x02fd, B:89:0x0305, B:91:0x0339, B:93:0x0356, B:95:0x036c, B:97:0x0373, B:101:0x038a, B:105:0x03a7, B:106:0x03b2, B:113:0x03ce, B:114:0x03d9, B:115:0x03e2, B:116:0x03ef, B:118:0x03f9, B:119:0x040d, B:121:0x041a, B:123:0x0428, B:34:0x00d4, B:36:0x00e0, B:38:0x00f2, B:40:0x00fe, B:42:0x010d, B:43:0x0186, B:44:0x0189, B:46:0x019d, B:60:0x0216, B:62:0x021f, B:64:0x023d, B:66:0x0249, B:68:0x0256), top: B:133:0x0000, inners: #0 }] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m6402f() {
        /*
            Method dump skipped, instructions count: 1099
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8109ao.m6402f():void");
    }

    /* renamed from: g */
    public static String m6398g(String str) {
        char c;
        String trim = str.toLowerCase(Locale.US).trim();
        int hashCode = trim.hashCode();
        if (hashCode != -1349116587) {
            if (hashCode == 1787472634 && trim.equals("straight")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (trim.equals("curved")) {
                c = 2;
            }
            c = 65535;
        }
        return c != 2 ? "straight" : "curved";
    }

    /* renamed from: g */
    public static String m6397g(JSONObject jSONObject) {
        try {
            return jSONObject.getString("valueType");
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m6399g() {
        /*
            r4 = this;
            r0 = r4
            java.lang.String r1 = "VIDEO"
            java.util.List r0 = r0.m6410c(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0094
            r0 = r5
            int r0 = r0.size()
            if (r0 > 0) goto L_0x0018
            goto L_0x0094
        L_0x0018:
            r0 = r5
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L_0x001f:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0094
            r0 = r5
            java.lang.Object r0 = r0.next()
            com.inmobi.ads.ak r0 = (com.inmobi.ads.C8103ak) r0
            r6 = r0
            r0 = r6
            java.lang.String r0 = r0.f31676a
            int r0 = r0.length()
            r0 = r6
            com.inmobi.ads.be r0 = (com.inmobi.ads.C8152be) r0
            r6 = r0
            r0 = r6
            com.inmobi.ads.bz r0 = r0.m6311b()
            if (r0 != 0) goto L_0x0048
            r0 = 0
            return r0
        L_0x0048:
            r0 = r6
            com.inmobi.ads.bz r0 = r0.m6311b()
            java.util.List r0 = r0.mo6203c()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0092
            r0 = r7
            int r0 = r0.size()
            if (r0 != 0) goto L_0x0062
            goto L_0x0092
        L_0x0062:
            r0 = r6
            com.inmobi.ads.bz r0 = r0.m6311b()
            java.lang.String r0 = r0.mo6204b()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0077
            r0 = r7
            int r0 = r0.length()
            if (r0 != 0) goto L_0x001f
        L_0x0077:
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "[ERRORCODE]"
            java.lang.String r2 = "403"
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r6
            com.inmobi.ads.NativeTracker$TrackerEventType r1 = com.inmobi.ads.NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_ERROR
            r2 = r5
            r0.m6453a(r1, r2)
        L_0x0092:
            r0 = 0
            return r0
        L_0x0094:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8109ao.m6399g():boolean");
    }

    /* renamed from: h */
    public static String m6396h(JSONObject jSONObject) {
        try {
            return jSONObject.getString("dataType");
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return "";
        }
    }

    /* renamed from: i */
    private JSONObject m6395i(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.isNull("assetStyle") ? null : jSONObject.getJSONObject("assetStyle");
            JSONObject jSONObject3 = jSONObject2;
            if (jSONObject2 == null) {
                if (jSONObject.isNull("assetStyleRef")) {
                    return new JSONObject();
                }
                jSONObject3 = this.f31731n == null ? new JSONObject() : this.f31731n.getJSONObject(jSONObject.getString("assetStyleRef"));
            }
            return jSONObject3;
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return new JSONObject();
        }
    }

    /* renamed from: j */
    private Point m6394j(JSONObject jSONObject) {
        JSONObject i;
        Point point = new Point();
        try {
            i = m6395i(jSONObject);
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
        }
        if (i.isNull("geometry")) {
            return point;
        }
        JSONArray jSONArray = i.getJSONArray("geometry");
        point.x = C8399c.m5686a(jSONArray.getInt(0));
        point.y = C8399c.m5686a(jSONArray.getInt(1));
        return point;
    }

    /* renamed from: k */
    private Point m6393k(JSONObject jSONObject) {
        JSONObject i;
        Point point = new Point();
        try {
            i = m6395i(jSONObject);
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
        }
        if (i.isNull("geometry")) {
            return point;
        }
        JSONArray jSONArray = i.getJSONArray("geometry");
        point.x = C8399c.m5686a(jSONArray.getInt(2));
        point.y = C8399c.m5686a(jSONArray.getInt(3));
        return point;
    }

    /* renamed from: l */
    public static int m6392l(JSONObject jSONObject) {
        try {
            JSONObject n = m6390n(jSONObject);
            if (n.isNull("type")) {
                return 2;
            }
            String lowerCase = n.getString("type").trim().toLowerCase(Locale.US);
            char c = 65535;
            int hashCode = lowerCase.hashCode();
            if (hashCode != -921832806) {
                if (hashCode != -284840886) {
                    if (hashCode == 1728122231 && lowerCase.equals("absolute")) {
                        c = 2;
                    }
                } else if (lowerCase.equals("unknown")) {
                    c = 1;
                }
            } else if (lowerCase.equals("percentage")) {
                c = 3;
            }
            if (c != 2) {
                return c != 3 ? 1 : 4;
            }
            return 3;
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return 2;
        }
    }

    /* renamed from: m */
    public static String m6391m(JSONObject jSONObject) {
        try {
            JSONObject n = m6390n(jSONObject);
            return n.isNull("reference") ? "" : n.getString("reference");
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return "";
        }
    }

    /* renamed from: n */
    public static JSONObject m6390n(JSONObject jSONObject) {
        if (jSONObject.isNull("display")) {
            return new JSONObject();
        }
        try {
            return jSONObject.getJSONObject("display");
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return new JSONObject();
        }
    }

    /* renamed from: o */
    public static JSONArray m6389o(JSONObject jSONObject) {
        try {
            return jSONObject.getJSONArray("assetValue");
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return new JSONArray();
        }
    }

    /* renamed from: p */
    public static boolean m6388p(JSONObject jSONObject) {
        return !jSONObject.isNull("assetOnclick");
    }

    /* renamed from: q */
    private C8144ba.C8145a m6387q(JSONObject jSONObject) {
        return new C8144ba.C8145a(jSONObject.optLong("absolute"), jSONObject.optLong("percentage"), jSONObject.optString("reference"), this);
    }

    /* renamed from: r */
    private C8144ba.C8145a m6386r(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new C8144ba.C8145a(jSONObject.optLong("absolute"), jSONObject.optLong("percentage"), jSONObject.optString("reference"), this);
    }

    /* renamed from: s */
    private C8144ba m6385s(JSONObject jSONObject) throws JSONException {
        C8144ba.C8145a aVar = null;
        C8144ba.C8145a r = !jSONObject.isNull("startOffset") ? m6386r(jSONObject.optJSONObject("startOffset")) : null;
        if (!jSONObject.isNull("timerDuration")) {
            aVar = m6386r(jSONObject.optJSONObject("timerDuration"));
        }
        return new C8144ba(r, aVar);
    }

    /* renamed from: a */
    public final C8105am m6436a(int i) {
        Iterator<C8103ak> it = this.f31722d.iterator();
        while (it.hasNext()) {
            C8103ak next = it.next();
            if (next.f31679d.equalsIgnoreCase("card_scrollable")) {
                C8105am amVar = (C8105am) next;
                if (i >= amVar.f31714C) {
                    return null;
                }
                return (C8105am) amVar.m6440a(i);
            }
        }
        return null;
    }

    /* renamed from: a */
    public final JSONObject m6437a() {
        try {
            return this.f31723e.getJSONObject(0);
        } catch (JSONException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    /* renamed from: b */
    public final int m6417b() {
        C8105am amVar = this.f31722d;
        if (amVar == null) {
            return 0;
        }
        Iterator<C8103ak> it = amVar.iterator();
        while (it.hasNext()) {
            C8103ak next = it.next();
            if (next.f31679d.equalsIgnoreCase("card_scrollable")) {
                return ((C8105am) next).f31714C;
            }
        }
        return 0;
    }

    /* renamed from: b */
    public final C8103ak m6415b(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (this.f31732o.get(str) != null) {
            return this.f31732o.get(str);
        }
        C8109ao aoVar = this.f31724f;
        if (aoVar != null) {
            return aoVar.f31732o.get(str);
        }
        return null;
    }

    /* renamed from: c */
    public final List<C8103ak> m6410c(String str) {
        return this.f31726h.containsKey(str) ? this.f31726h.get(str) : Collections.emptyList();
    }

    /* renamed from: c */
    public final boolean m6412c() {
        C8105am amVar;
        C8105am amVar2 = this.f31722d;
        if (amVar2 == null) {
            return false;
        }
        Iterator<C8103ak> it = amVar2.iterator();
        while (true) {
            if (!it.hasNext()) {
                amVar = null;
                break;
            }
            C8103ak next = it.next();
            if (next.f31679d.equalsIgnoreCase("card_scrollable")) {
                amVar = (C8105am) next;
                break;
            }
        }
        if (amVar != null && m6417b() <= 0) {
            return false;
        }
        return m6399g();
    }
}
