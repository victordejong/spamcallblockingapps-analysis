package p193e.p194a.p434b5;

import android.os.Bundle;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import w3.c.a.a.a.e;
/* renamed from: e.a.b5.f */
/* loaded from: classes13-dex2jar.jar:e/a/b5/f.class */
public class C8652f {

    /* renamed from: a */
    public final Map<String, String> f26510a;

    public C8652f(Map<String, String> map, Bundle bundle) {
        this.f26510a = Collections.unmodifiableMap(new HashMap(map));
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8652f) || !e.a(this.f26510a, ((C8652f) obj).f26510a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f26510a.hashCode();
    }
}
