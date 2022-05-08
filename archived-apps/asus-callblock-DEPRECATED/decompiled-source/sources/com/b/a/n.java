package com.b.a;

import com.b.a.a.h;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes-dex2jar.jar:com/b/a/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final r f3332a = r.a("application/x-www-form-urlencoded");

    /* renamed from: b  reason: collision with root package name */
    private final StringBuilder f3333b = new StringBuilder();

    public final n a(String str, String str2) {
        if (this.f3333b.length() > 0) {
            this.f3333b.append('&');
        }
        try {
            this.f3333b.append(URLEncoder.encode(str, "UTF-8")).append('=').append(URLEncoder.encode(str2, "UTF-8"));
            return this;
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public final v a() {
        if (this.f3333b.length() == 0) {
            throw new IllegalStateException("Form encoded body must have at least one part.");
        }
        return v.a(f3332a, this.f3333b.toString().getBytes(h.c));
    }
}
