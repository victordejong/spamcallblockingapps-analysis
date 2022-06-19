package p193e.p194a.p937j4.p939b.p940a;

import android.content.Context;
import com.truecaller.log.AssertionUtil;
import java.util.HashMap;
import java.util.List;
import p193e.p194a.p937j4.p939b.p941b.C15577c;
@Deprecated
/* renamed from: e.a.j4.b.a.d */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/d.class */
public class C15567d extends AbstractC15563a<C15577c> {

    /* renamed from: b */
    public HashMap<Long, Integer> f44032b;

    public C15567d(Context context) {
        super(context);
    }

    @Override // p193e.p194a.p937j4.p939b.p940a.AbstractC15563a
    /* renamed from: a */
    public void mo18675a(List<C15577c> list) {
        int m18680e = m18680e();
        super.mo18675a(list);
        if (this.f44032b != null) {
            for (C15577c c15577c : list) {
                m18680e++;
                this.f44032b.put(Long.valueOf(c15577c.f44043a), Integer.valueOf(m18680e));
            }
            AssertionUtil.OnlyInDebug.isTrue(m18680e() == m18680e, new String[0]);
        }
    }

    @Override // p193e.p194a.p937j4.p939b.p940a.AbstractC15563a
    /* renamed from: b */
    public void mo18674b() {
        mo18673c(true);
        this.f44032b = null;
    }

    @Override // p193e.p194a.p937j4.p939b.p940a.AbstractC15563a
    /* renamed from: c */
    public void mo18673c(boolean z) {
        super.mo18673c(z);
        this.f44032b = null;
    }

    @Override // p193e.p194a.p937j4.p939b.p940a.AbstractC15563a
    /* renamed from: f */
    public String mo18615f() {
        return "TC.meta.2.90";
    }

    /* renamed from: i */
    public final HashMap<Long, Integer> m18672i() {
        if (this.f44032b == null) {
            int m18680e = m18680e();
            this.f44032b = new HashMap<>();
            for (int i = 1; i < m18680e + 1; i++) {
                this.f44032b.put(Long.valueOf(m18681d(C15577c.class, i).f44043a), Integer.valueOf(i));
            }
        }
        return this.f44032b;
    }

    /* renamed from: j */
    public C15577c m18671j(long j) {
        Integer num = m18672i().get(Long.valueOf(j));
        C15577c m18681d = num != null ? m18681d(C15577c.class, num.intValue()) : null;
        if (m18681d != null) {
            num.intValue();
        }
        return m18681d;
    }
}
