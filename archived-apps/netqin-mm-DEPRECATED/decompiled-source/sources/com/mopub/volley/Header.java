package com.mopub.volley;

import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/Header.class */
public final class Header {

    /* renamed from: a */
    public final String f35082a;

    /* renamed from: b */
    public final String f35083b;

    public Header(String str, String str2) {
        this.f35082a = str;
        this.f35083b = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || Header.class != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        if (!TextUtils.equals(this.f35082a, header.f35082a) || !TextUtils.equals(this.f35083b, header.f35083b)) {
            z = false;
        }
        return z;
    }

    public final String getName() {
        return this.f35082a;
    }

    public final String getValue() {
        return this.f35083b;
    }

    public int hashCode() {
        return (this.f35082a.hashCode() * 31) + this.f35083b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f35082a + ",value=" + this.f35083b + "]";
    }
}
