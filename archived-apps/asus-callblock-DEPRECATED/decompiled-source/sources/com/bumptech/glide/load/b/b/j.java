package com.bumptech.glide.load.b.b;

import com.bumptech.glide.i.e;
import com.bumptech.glide.i.h;
import com.bumptech.glide.load.c;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/j.class */
final class j {

    /* renamed from: a  reason: collision with root package name */
    private final e<c, String> f3521a = new e<>(1000);

    public final String a(c cVar) {
        String b2;
        synchronized (this.f3521a) {
            b2 = this.f3521a.b((e<c, String>) cVar);
        }
        String str = b2;
        if (b2 == null) {
            try {
                MessageDigest instance = MessageDigest.getInstance("SHA-256");
                cVar.a(instance);
                b2 = h.a(instance.digest());
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
            }
            synchronized (this.f3521a) {
                this.f3521a.b(cVar, b2);
            }
            str = b2;
        }
        return str;
    }
}
