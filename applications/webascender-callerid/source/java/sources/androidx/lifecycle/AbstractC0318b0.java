package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.b0 */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/b0.class */
public abstract class AbstractC0318b0 {

    /* renamed from: a */
    private final Map<String, Object> f1702a = new HashMap();

    /* renamed from: b */
    private volatile boolean f1703b = false;

    /* renamed from: b */
    private static void m5454b(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: a */
    public final void m5455a() {
        this.f1703b = true;
        Map<String, Object> map = this.f1702a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f1702a.values()) {
                    m5454b(obj);
                }
            }
        }
        m5452d();
    }

    /* renamed from: c */
    <T> T m5453c(String str) {
        T t;
        Map<String, Object> map = this.f1702a;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.f1702a.get(str);
        }
        return t;
    }

    /* renamed from: d */
    public void m5452d() {
    }

    /* renamed from: e */
    <T> T m5451e(String str, T t) {
        Object obj;
        synchronized (this.f1702a) {
            obj = this.f1702a.get(str);
            if (obj == null) {
                this.f1702a.put(str, t);
            }
        }
        if (obj != null) {
            t = obj;
        }
        if (this.f1703b) {
            m5454b(t);
        }
        return t;
    }
}
