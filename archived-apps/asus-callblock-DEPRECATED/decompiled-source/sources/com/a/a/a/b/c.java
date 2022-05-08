package com.a.a.a.b;

import android.os.Build;
import com.a.a.a.b;
import org.apache.http.Header;
/* loaded from: classes-dex2jar.jar:com/a/a/a/b/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    b f352a;

    public c(b bVar) {
        this.f352a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        return String.format("ZUMO/1.0 (lang=%s; os=%s; os_version=%s; arch=%s; version=%s)", "Java", "Android", Build.VERSION.RELEASE, Build.CPU_ABI, "2.0.2");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(h hVar, String str) {
        boolean z = false;
        Header[] a2 = hVar.a();
        int length = a2.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (a2[i].getName().equals(str)) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }
}
