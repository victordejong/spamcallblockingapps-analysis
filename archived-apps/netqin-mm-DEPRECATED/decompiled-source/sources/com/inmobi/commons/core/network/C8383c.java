package com.inmobi.commons.core.network;

import android.util.Base64;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.configs.C8358g;
import com.inmobi.commons.core.utilities.C8407d;
import com.inmobi.commons.core.utilities.p515a.C8394b;
import com.inmobi.commons.core.utilities.p515a.C8395c;
import com.inmobi.commons.core.utilities.p516b.C8397a;
import com.inmobi.commons.core.utilities.p516b.C8398b;
import com.inmobi.commons.core.utilities.p516b.C8401e;
import com.inmobi.commons.core.utilities.p516b.C8403f;
import com.inmobi.commons.core.utilities.uid.C8416c;
import com.inmobi.commons.core.utilities.uid.C8418d;
import com.inmobi.commons.p508a.C8326a;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.network.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/network/c.class */
public class C8383c {

    /* renamed from: a */
    public static final String f32598a = "c";

    /* renamed from: f */
    public static byte[] f32599f;

    /* renamed from: g */
    public static byte[] f32600g;

    /* renamed from: A */
    public boolean f32601A;

    /* renamed from: b */
    public C8418d f32602b;

    /* renamed from: c */
    public boolean f32603c;

    /* renamed from: d */
    public byte[] f32604d;

    /* renamed from: e */
    public byte[] f32605e;

    /* renamed from: h */
    public boolean f32606h;

    /* renamed from: l */
    public Map<String, String> f32607l;

    /* renamed from: m */
    public Map<String, String> f32608m;

    /* renamed from: n */
    public Map<String, String> f32609n;

    /* renamed from: o */
    public String f32610o;

    /* renamed from: p */
    public String f32611p;

    /* renamed from: q */
    public int f32612q;

    /* renamed from: r */
    public int f32613r;

    /* renamed from: s */
    public boolean f32614s;

    /* renamed from: t */
    public boolean f32615t;

    /* renamed from: u */
    public long f32616u;

    /* renamed from: v */
    public boolean f32617v;

    /* renamed from: w */
    public int f32618w;

    /* renamed from: x */
    public boolean f32619x;

    /* renamed from: y */
    public C8358g f32620y;

    /* renamed from: z */
    public boolean f32621z;

    public C8383c(String str, String str2) {
        this(str, str2, false, null, false, 0);
        this.f32606h = false;
    }

    public C8383c(String str, String str2, C8418d dVar, int i) {
        this(str, str2, true, dVar, false, i);
    }

    public C8383c(String str, String str2, boolean z, C8418d dVar) {
        this(str, str2, z, dVar, false, 0);
    }

    public C8383c(String str, String str2, boolean z, C8418d dVar, boolean z2, int i) {
        HashMap hashMap = new HashMap();
        this.f32607l = hashMap;
        this.f32612q = 60000;
        this.f32613r = 60000;
        this.f32614s = true;
        this.f32615t = true;
        this.f32616u = -1L;
        this.f32618w = 0;
        this.f32606h = true;
        this.f32619x = false;
        this.f32621z = true;
        this.f32601A = false;
        this.f32610o = str;
        this.f32611p = str2;
        this.f32603c = z;
        this.f32602b = dVar;
        hashMap.put("User-Agent", C8326a.m5884f());
        this.f32617v = z2;
        this.f32618w = i;
        if ("GET".equals(str)) {
            this.f32608m = new HashMap();
        } else if ("POST".equals(str)) {
            this.f32609n = new HashMap();
        }
        this.f32620y = new C8358g();
        C8348b.m5847a().m5844a(this.f32620y, (C8348b.AbstractC8351c) null);
    }

    /* renamed from: c */
    private String m5740c() {
        C8407d.m5645a(this.f32608m);
        return C8407d.m5644a(this.f32608m, "&");
    }

    /* renamed from: d */
    private void m5737d(Map<String, String> map) {
        map.putAll(C8397a.m5693a().f32654b);
        map.putAll(C8398b.m5689a(this.f32619x));
        map.putAll(C8403f.m5673a());
        if (this.f32602b == null) {
            return;
        }
        if (mo5742b()) {
            C8418d dVar = this.f32602b;
            HashMap hashMap = new HashMap();
            hashMap.put("u-id-map", new JSONObject(dVar.m5620a((String) null, false)).toString());
            map.putAll(hashMap);
            return;
        }
        C8418d dVar2 = this.f32602b;
        String num = Integer.toString(new Random().nextInt());
        String a = C8395c.m5702a(new JSONObject(dVar2.m5620a(num, true)).toString());
        Map<? extends String, ? extends String> hashMap2 = new HashMap<>();
        hashMap2.put("u-id-map", a);
        hashMap2.put("u-id-key", num);
        C8416c.m5632a();
        hashMap2.put("u-key-ver", C8416c.m5628d());
        map.putAll(hashMap2);
    }

    /* renamed from: a */
    public void mo5745a() {
        JSONObject a;
        C8401e.m5677c();
        boolean z = true;
        if (this.f32618w != 1) {
            z = false;
        }
        this.f32618w = C8401e.m5679a(z);
        if (this.f32615t) {
            if ("GET".equals(this.f32610o)) {
                m5737d(this.f32608m);
            } else if ("POST".equals(this.f32610o)) {
                m5737d(this.f32609n);
            }
        }
        if (this.f32606h && (a = C8401e.m5682a()) != null) {
            if ("GET".equals(this.f32610o)) {
                this.f32608m.put("consentObject", a.toString());
            } else if ("POST".equals(this.f32610o)) {
                this.f32609n.put("consentObject", a.toString());
            }
        }
        if (!this.f32621z) {
            return;
        }
        if ("GET".equals(this.f32610o)) {
            this.f32608m.put("u-appsecure", Integer.toString(C8397a.m5693a().f32655c));
        } else if ("POST".equals(this.f32610o)) {
            this.f32609n.put("u-appsecure", Integer.toString(C8397a.m5693a().f32655c));
        }
    }

    /* renamed from: a */
    public final void m5744a(Map<String, String> map) {
        if (map != null) {
            this.f32607l.putAll(map);
        }
    }

    /* renamed from: a */
    public final byte[] m5743a(byte[] bArr) {
        try {
            return this.f32601A ? C8394b.m5706a(Base64.decode(bArr, 0), f32600g, f32599f) : C8394b.m5706a(Base64.decode(bArr, 0), this.f32605e, this.f32604d);
        } catch (IllegalArgumentException e) {
            new StringBuilder("Msg : ").append(e.getMessage());
            return null;
        }
    }

    /* renamed from: b */
    public final void m5741b(Map<String, String> map) {
        if (map != null) {
            this.f32608m.putAll(map);
        }
    }

    /* renamed from: b */
    public boolean mo5742b() {
        return this.f32603c;
    }

    /* renamed from: c */
    public final void m5739c(Map<String, String> map) {
        this.f32609n.putAll(map);
    }

    /* renamed from: d */
    public final Map<String, String> m5738d() {
        C8407d.m5645a(this.f32607l);
        return this.f32607l;
    }

    /* renamed from: e */
    public final String m5736e() {
        String str = this.f32611p;
        String str2 = str;
        if (this.f32608m != null) {
            String c = m5740c();
            str2 = str;
            if (c != null) {
                str2 = str;
                if (c.trim().length() != 0) {
                    String str3 = str;
                    if (!str.contains("?")) {
                        str3 = str + "?";
                    }
                    String str4 = str3;
                    if (!str3.endsWith("&")) {
                        str4 = str3;
                        if (!str3.endsWith("?")) {
                            str4 = str3 + "&";
                        }
                    }
                    str2 = str4 + c;
                }
            }
        }
        return str2;
    }

    /* renamed from: f */
    public final String m5735f() {
        C8407d.m5645a(this.f32609n);
        String a = C8407d.m5644a(this.f32609n, "&");
        new StringBuilder("Post body url: ").append(this.f32611p);
        String str = a;
        if (mo5742b()) {
            if (this.f32601A) {
                if (f32599f == null) {
                    f32599f = C8394b.m5711a(16);
                }
                if (f32600g == null) {
                    f32600g = C8394b.m5712a();
                }
                this.f32604d = f32599f;
                this.f32605e = f32600g;
            } else {
                this.f32604d = C8394b.m5711a(16);
                this.f32605e = C8394b.m5712a();
            }
            byte[] bArr = this.f32604d;
            byte[] bArr2 = this.f32605e;
            C8358g gVar = this.f32620y;
            byte[] a2 = C8394b.m5711a(8);
            HashMap hashMap = new HashMap();
            hashMap.put("sm", C8394b.m5710a(a, bArr2, bArr, a2, gVar.f32497b, gVar.f32496a));
            hashMap.put("sn", gVar.f32498c);
            str = C8407d.m5644a(hashMap, "&");
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m5734g() {
        /*
            r5 = this;
            r0 = 0
            r6 = r0
            java.lang.String r0 = "GET"
            r1 = r5
            java.lang.String r1 = r1.f32610o     // Catch: Exception -> 0x003b
            boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x003b
            if (r0 == 0) goto L_0x001c
            r0 = 0
            r1 = r5
            java.lang.String r1 = r1.m5740c()     // Catch: Exception -> 0x003b
            int r1 = r1.length()     // Catch: Exception -> 0x003b
            long r1 = (long) r1     // Catch: Exception -> 0x003b
            long r0 = r0 + r1
            r8 = r0
            goto L_0x0039
        L_0x001c:
            r0 = r6
            r8 = r0
            java.lang.String r0 = "POST"
            r1 = r5
            java.lang.String r1 = r1.f32610o     // Catch: Exception -> 0x003b
            boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x003b
            if (r0 == 0) goto L_0x0039
            r0 = r5
            java.lang.String r0 = r0.m5735f()     // Catch: Exception -> 0x003b
            int r0 = r0.length()     // Catch: Exception -> 0x003b
            r10 = r0
            r0 = r10
            long r0 = (long) r0
            r1 = 0
            long r0 = r0 + r1
            r8 = r0
        L_0x0039:
            r0 = r8
            return r0
        L_0x003b:
            r11 = move-exception
            r0 = r6
            r8 = r0
            goto L_0x0039
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.core.network.C8383c.m5734g():long");
    }
}
