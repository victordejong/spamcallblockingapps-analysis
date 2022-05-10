package p131c.p161d.p282e.p289l.p290d.p300n;

import com.google.firebase.crashlytics.internal.common.DataTransportState;
import com.google.firebase.crashlytics.internal.report.model.Report;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractRunnableC5216d;
import p131c.p161d.p282e.p289l.p290d.p300n.p302d.AbstractC5421b;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5436b;
/* renamed from: c.d.e.l.d.n.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/b.class */
public class C5411b {

    /* renamed from: h */
    public static final short[] f18343h = {10, 20, 30, 60, 120, 300};

    /* renamed from: a */
    public final AbstractC5421b f18344a;

    /* renamed from: b */
    public final String f18345b;

    /* renamed from: c */
    public final String f18346c;

    /* renamed from: d */
    public final DataTransportState f18347d;

    /* renamed from: e */
    public final C5410a f18348e;

    /* renamed from: f */
    public final AbstractC5412a f18349f;

    /* renamed from: g */
    public Thread f18350g;

    /* renamed from: c.d.e.l.d.n.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/b$a.class */
    public interface AbstractC5412a {
        /* renamed from: a */
        boolean mo23828a();
    }

    /* renamed from: c.d.e.l.d.n.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/b$b.class */
    public interface AbstractC5413b {
        /* renamed from: a */
        C5411b mo23827a(C5436b bVar);
    }

    /* renamed from: c.d.e.l.d.n.b$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/b$c.class */
    public interface AbstractC5414c {
        /* renamed from: a */
        File[] mo23826a();

        /* renamed from: b */
        File[] mo23825b();
    }

    /* renamed from: c.d.e.l.d.n.b$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/b$d.class */
    public class C5415d extends AbstractRunnableC5216d {

        /* renamed from: a */
        public final List<Report> f18351a;

        /* renamed from: b */
        public final boolean f18352b;

        /* renamed from: c */
        public final float f18353c;

        public C5415d(List<Report> list, boolean z, float f) {
            this.f18351a = list;
            this.f18352b = z;
            this.f18353c = f;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractRunnableC5216d
        /* renamed from: a */
        public void mo23824a() {
            try {
                m23823a(this.f18351a, this.f18352b);
            } catch (Exception e) {
                C5192b.m24319a().m24314b("An unexpected error occurred while attempting to upload crash reports.", e);
            }
            C5411b.this.f18350g = null;
        }

        /* renamed from: a */
        public final void m23823a(List<Report> list, boolean z) {
            float f;
            C5192b.m24319a().m24317a("Starting report processing in " + this.f18353c + " second(s)...");
            if (this.f18353c > 0.0f) {
                try {
                    Thread.sleep(f * 1000.0f);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            if (!C5411b.this.f18349f.mo23828a()) {
                int i = 0;
                while (list.size() > 0 && !C5411b.this.f18349f.mo23828a()) {
                    C5192b.m24319a().m24317a("Attempting to send " + list.size() + " report(s)");
                    ArrayList arrayList = new ArrayList();
                    for (Report report : list) {
                        if (!C5411b.this.m23830a(report, z)) {
                            arrayList.add(report);
                        }
                    }
                    i = i;
                    if (arrayList.size() > 0) {
                        long j = C5411b.f18343h[Math.min(i, C5411b.f18343h.length - 1)];
                        C5192b.m24319a().m24317a("Report submission: scheduling delayed retry in " + j + " seconds");
                        try {
                            Thread.sleep(j * 1000);
                            i++;
                        } catch (InterruptedException e2) {
                            Thread.currentThread().interrupt();
                            return;
                        }
                    }
                    list = arrayList;
                }
            }
        }
    }

    public C5411b(String str, String str2, DataTransportState dataTransportState, C5410a aVar, AbstractC5421b bVar, AbstractC5412a aVar2) {
        if (bVar != null) {
            this.f18344a = bVar;
            this.f18345b = str;
            this.f18346c = str2;
            this.f18347d = dataTransportState;
            this.f18348e = aVar;
            this.f18349f = aVar2;
            return;
        }
        throw new IllegalArgumentException("createReportCall must not be null.");
    }

    /* renamed from: a */
    public void m23829a(List<Report> list, boolean z, float f) {
        synchronized (this) {
            if (this.f18350g != null) {
                C5192b.m24319a().m24317a("Report upload has already been started.");
                return;
            }
            Thread thread = new Thread(new C5415d(list, z, f), "Crashlytics Report Uploader");
            this.f18350g = thread;
            thread.start();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0 A[Catch: Exception -> 0x00bd, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00bd, blocks: (B:3:0x0002, B:6:0x0027, B:7:0x0032, B:9:0x003c, B:11:0x0048, B:14:0x0056, B:18:0x008b, B:22:0x00b0), top: B:28:0x0002 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m23830a(com.google.firebase.crashlytics.internal.report.model.Report r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p282e.p289l.p290d.p300n.C5411b.m23830a(com.google.firebase.crashlytics.internal.report.model.Report, boolean):boolean");
    }
}
