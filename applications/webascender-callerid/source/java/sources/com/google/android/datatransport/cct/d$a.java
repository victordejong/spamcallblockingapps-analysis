package com.google.android.datatransport.cct;

import com.google.android.datatransport.cct.p020f.AbstractC0724j;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/d$a.class */
final class d$a {

    /* renamed from: a */
    final URL f3200a;

    /* renamed from: b */
    final AbstractC0724j f3201b;

    /* renamed from: c */
    final String f3202c;

    d$a(URL url, AbstractC0724j abstractC0724j, String str) {
        this.f3200a = url;
        this.f3201b = abstractC0724j;
        this.f3202c = str;
    }

    /* renamed from: a */
    d$a m3932a(URL url) {
        return new d$a(url, this.f3201b, this.f3202c);
    }
}
