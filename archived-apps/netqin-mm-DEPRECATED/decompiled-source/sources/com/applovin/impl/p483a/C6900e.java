package com.applovin.impl.p483a;

import android.net.Uri;
import android.webkit.URLUtil;
import com.mopub.mobileads.VastResourceXmlManager;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2429t;
/* renamed from: com.applovin.impl.a.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/e.class */
public class C6900e {

    /* renamed from: a */
    public EnumC6901a f21138a;

    /* renamed from: b */
    public Uri f21139b;

    /* renamed from: c */
    public String f21140c;

    /* renamed from: com.applovin.impl.a.e$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/e$a.class */
    public enum EnumC6901a {
        UNSPECIFIED,
        STATIC,
        IFRAME,
        HTML
    }

    /* renamed from: a */
    public static C6900e m19424a(C2429t tVar, C6900e eVar, C2341l lVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("No node specified.");
        } else if (lVar != null) {
            if (eVar == null) {
                try {
                    eVar = new C6900e();
                } catch (Throwable th) {
                    lVar.m30262d0().m30043b("VastNonVideoResource", "Error occurred while initializing", th);
                    return null;
                }
            }
            if (eVar.f21139b == null && !C2422o.m29851b(eVar.f21140c)) {
                String a = m19423a(tVar, VastResourceXmlManager.STATIC_RESOURCE);
                if (URLUtil.isValidUrl(a)) {
                    eVar.f21139b = Uri.parse(a);
                    eVar.f21138a = EnumC6901a.STATIC;
                    return eVar;
                }
                String a2 = m19423a(tVar, VastResourceXmlManager.IFRAME_RESOURCE);
                if (C2422o.m29851b(a2)) {
                    eVar.f21138a = EnumC6901a.IFRAME;
                    if (URLUtil.isValidUrl(a2)) {
                        eVar.f21139b = Uri.parse(a2);
                    } else {
                        eVar.f21140c = a2;
                    }
                    return eVar;
                }
                String a3 = m19423a(tVar, VastResourceXmlManager.HTML_RESOURCE);
                if (C2422o.m29851b(a3)) {
                    eVar.f21138a = EnumC6901a.HTML;
                    if (URLUtil.isValidUrl(a3)) {
                        eVar.f21139b = Uri.parse(a3);
                    } else {
                        eVar.f21140c = a3;
                    }
                }
            }
            return eVar;
        } else {
            throw new IllegalArgumentException("No sdk specified.");
        }
    }

    /* renamed from: a */
    public static String m19423a(C2429t tVar, String str) {
        C2429t b = tVar.m29763b(str);
        if (b != null) {
            return b.m29762c();
        }
        return null;
    }

    /* renamed from: a */
    public EnumC6901a m19426a() {
        return this.f21138a;
    }

    /* renamed from: a */
    public void m19425a(Uri uri) {
        this.f21139b = uri;
    }

    /* renamed from: a */
    public void m19422a(String str) {
        this.f21140c = str;
    }

    /* renamed from: b */
    public Uri m19421b() {
        return this.f21139b;
    }

    /* renamed from: c */
    public String m19420c() {
        return this.f21140c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6900e)) {
            return false;
        }
        C6900e eVar = (C6900e) obj;
        if (this.f21138a != eVar.f21138a) {
            return false;
        }
        Uri uri = this.f21139b;
        if (uri != null) {
            if (!uri.equals(eVar.f21139b)) {
                return false;
            }
        } else if (eVar.f21139b != null) {
            return false;
        }
        String str = this.f21140c;
        String str2 = eVar.f21140c;
        if (str != null) {
            z = str.equals(str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        EnumC6901a aVar = this.f21138a;
        int i = 0;
        int hashCode = aVar != null ? aVar.hashCode() : 0;
        Uri uri = this.f21139b;
        int hashCode2 = uri != null ? uri.hashCode() : 0;
        String str = this.f21140c;
        if (str != null) {
            i = str.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "VastNonVideoResource{type=" + this.f21138a + ", resourceUri=" + this.f21139b + ", resourceContents='" + this.f21140c + "'}";
    }
}
