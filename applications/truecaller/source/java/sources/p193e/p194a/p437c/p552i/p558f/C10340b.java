package p193e.p194a.p437c.p552i.p558f;

import androidx.lifecycle.LiveData;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.insights.models.pdo.SmsBackupMessage;
import java.util.Objects;
import java.util.concurrent.Executor;
import javax.inject.Inject;
import n3.z.d3;
import n3.z.q0;
import n3.z.w;
import p1727n3.p1746c.p1747a.p1748a.C25628a;
import p1727n3.p1909z.AbstractC27592q1;
import p1727n3.p1909z.AbstractC27603v;
import q3.a.g0;
import q3.a.h1;
import s1.a.a.a.v0.f.d;
import s1.z.c.l;
/* renamed from: e.a.c.i.f.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/f/b.class */
public final class C10340b implements AbstractC10339a {

    /* renamed from: a */
    public final C10341c f30713a;

    @Inject
    public C10340b(C10341c c10341c) {
        l.e(c10341c, "messageFtsDataSource");
        this.f30713a = c10341c;
    }

    @Override // p193e.p194a.p437c.p552i.p558f.AbstractC10339a
    /* renamed from: a */
    public LiveData<AbstractC27592q1<SmsBackupMessage>> mo26322a(String str) {
        l.e(str, "searchQuery");
        C10341c c10341c = this.f30713a;
        String str2 = '*' + str + '*';
        Objects.requireNonNull(c10341c);
        l.e(str2, "searchQuery");
        AbstractC27603v.AbstractC27605b<Integer, SmsBackupMessage> mo27160a = c10341c.f30714a.mo27160a(str2);
        l.e(mo27160a, "dataSourceFactory");
        AbstractC27592q1.C27595c c27595c = new AbstractC27592q1.C27595c(100, 100, true, 300, Integer.MAX_VALUE);
        l.e(mo27160a, "dataSourceFactory");
        l.e(c27595c, DTBMetricsConfiguration.CONFIG_DIR);
        h1 h1Var = h1.a;
        Executor executor = C25628a.f71802e;
        l.d(executor, "ArchTaskExecutor.getIOThreadExecutor()");
        g0 b1 = d.b1(executor);
        l.e(b1, "fetchDispatcher");
        d3 d3Var = new d3(b1, new w(mo27160a, b1));
        if (1 != 0) {
            Executor executor2 = C25628a.f71801d;
            l.d(executor2, "ArchTaskExecutor.getMainThreadExecutor()");
            return new q0(h1Var, (Object) null, c27595c, (AbstractC27592q1.AbstractC27593a) null, d3Var, d.b1(executor2), b1);
        }
        throw new IllegalStateException("LivePagedList cannot be built without a PagingSourceFactory or DataSource.Factory".toString());
    }
}
