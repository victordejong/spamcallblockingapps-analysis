package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.t */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/t.class */
public abstract class AbstractC0945t {

    /* renamed from: a */
    private final Map<String, Object> f3920a = new HashMap();

    /* renamed from: b */
    private volatile boolean f3921b = false;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo7554a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m7553d() {
        this.f3921b = true;
        Map<String, Object> map = this.f3920a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f3920a.values()) {
                    if (obj instanceof Closeable) {
                        try {
                            ((Closeable) obj).close();
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            }
        }
        mo7554a();
    }
}
