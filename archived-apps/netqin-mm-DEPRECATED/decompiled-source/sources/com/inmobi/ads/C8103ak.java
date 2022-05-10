package com.inmobi.ads;

import com.inmobi.ads.NativeTracker;
import com.inmobi.commons.core.utilities.C8407d;
import com.inmobi.rendering.p517a.C8444c;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.ak */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ak.class */
public class C8103ak {

    /* renamed from: z */
    public static final String f31675z = "ak";

    /* renamed from: a */
    public String f31676a;

    /* renamed from: b */
    public String f31677b;

    /* renamed from: c */
    public C8104al f31678c;

    /* renamed from: d */
    public String f31679d;

    /* renamed from: e */
    public Object f31680e;

    /* renamed from: f */
    public JSONObject f31681f;

    /* renamed from: g */
    public String f31682g;

    /* renamed from: h */
    public boolean f31683h;

    /* renamed from: i */
    public int f31684i;

    /* renamed from: j */
    public String f31685j;

    /* renamed from: k */
    public int f31686k;

    /* renamed from: l */
    public int f31687l;

    /* renamed from: m */
    public int f31688m;

    /* renamed from: n */
    public int f31689n;

    /* renamed from: o */
    public int f31690o;

    /* renamed from: p */
    public int f31691p;

    /* renamed from: q */
    public String f31692q;

    /* renamed from: r */
    public String f31693r;

    /* renamed from: s */
    public String f31694s;

    /* renamed from: t */
    public C8103ak f31695t;

    /* renamed from: u */
    public List<NativeTracker> f31696u;

    /* renamed from: v */
    public Map<String, Object> f31697v;

    /* renamed from: w */
    public Object f31698w;

    /* renamed from: x */
    public int f31699x;

    /* renamed from: y */
    public C8103ak f31700y;

    public C8103ak() {
        this("", "root", "CONTAINER");
    }

    public C8103ak(String str, String str2, String str3) {
        this(str, str2, str3, new C8104al());
    }

    public C8103ak(String str, String str2, String str3, C8104al alVar) {
        this(str, str2, str3, alVar, new LinkedList());
    }

    public C8103ak(String str, String str2, String str3, C8104al alVar, List<NativeTracker> list) {
        this.f31676a = str;
        this.f31679d = str2;
        this.f31677b = str3;
        this.f31678c = alVar;
        this.f31680e = null;
        this.f31682g = "";
        this.f31683h = false;
        this.f31684i = 0;
        this.f31685j = "";
        this.f31687l = 0;
        this.f31686k = 0;
        this.f31688m = 0;
        this.f31689n = 2;
        this.f31699x = 0;
        this.f31690o = -1;
        this.f31692q = "";
        this.f31693r = "";
        this.f31681f = new JSONObject();
        LinkedList linkedList = new LinkedList();
        this.f31696u = linkedList;
        linkedList.addAll(list);
        this.f31697v = new HashMap();
    }

    /* renamed from: a */
    public static C8103ak m6450a(String str, String str2, String str3) {
        C8103ak akVar = new C8103ak();
        akVar.m6451a(str);
        if (str2 != null) {
            akVar.m6447b(str2);
        }
        akVar.f31698w = str3;
        return akVar;
    }

    /* renamed from: a */
    public static void m6452a(NativeTracker nativeTracker, Map<String, String> map) {
        C8444c.m5530a().m5524a(C8407d.m5646a(nativeTracker.f31406a, map), nativeTracker.f31408c);
    }

    /* renamed from: a */
    public final void m6453a(NativeTracker.TrackerEventType trackerEventType, Map<String, String> map) {
        if (this.f31696u.size() != 0) {
            for (NativeTracker nativeTracker : this.f31696u) {
                if (trackerEventType == nativeTracker.f31407b) {
                    m6452a(nativeTracker, map);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m6451a(String str) {
        this.f31693r = str.trim();
    }

    /* renamed from: a */
    public final void m6449a(List<NativeTracker> list) {
        this.f31696u.addAll(list);
    }

    /* renamed from: a */
    public final void m6448a(List<NativeTracker> list, NativeTracker.TrackerEventType trackerEventType) {
        for (NativeTracker nativeTracker : list) {
            if (trackerEventType == nativeTracker.f31407b) {
                this.f31696u.add(nativeTracker);
            }
        }
    }

    /* renamed from: b */
    public final void m6447b(String str) {
        this.f31694s = str.trim();
    }
}
