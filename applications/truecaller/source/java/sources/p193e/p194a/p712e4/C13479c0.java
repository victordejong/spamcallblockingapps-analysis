package p193e.p194a.p712e4;

import android.os.SystemClock;
import com.truecaller.multisim.SimInfo;
import java.util.HashMap;
import java.util.Map;
/* renamed from: e.a.e4.c0 */
/* loaded from: classes11-dex2jar.jar:e/a/e4/c0.class */
public class C13479c0 implements AbstractC13477b0 {

    /* renamed from: a */
    public long f39122a;

    /* renamed from: b */
    public final AbstractC13497p f39123b;

    /* renamed from: c */
    public Map<String, SimInfo> f39124c = new HashMap();

    public C13479c0(AbstractC13497p abstractC13497p) {
        this.f39123b = abstractC13497p;
    }

    @Override // p193e.p194a.p712e4.AbstractC13477b0
    public SimInfo get(String str) {
        if (this.f39122a + 3000 < SystemClock.elapsedRealtime()) {
            this.f39124c.clear();
        }
        this.f39122a = SystemClock.elapsedRealtime();
        if (this.f39124c.containsKey(str)) {
            return this.f39124c.get(str);
        }
        SimInfo mo21719v = this.f39123b.mo21719v(str);
        this.f39124c.put(str, mo21719v);
        return mo21719v;
    }
}
