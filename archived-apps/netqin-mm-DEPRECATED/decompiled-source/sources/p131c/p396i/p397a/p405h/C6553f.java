package p131c.p396i.p397a.p405h;

import android.text.TextUtils;
import com.library.p518ad.data.net.request.LogReportReq;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p399f.p401b.AbstractC6527a;
import p131c.p396i.p397a.p399f.p401b.C6534e;
import p131c.p396i.p397a.p399f.p401b.p403g.C6539a;
import p131c.p396i.p397a.p417j.C6614a;
/* renamed from: c.i.a.h.f */
/* loaded from: classes2-dex2jar.jar:c/i/a/h/f.class */
public class C6553f {

    /* renamed from: d */
    public static volatile C6553f f20336d;

    /* renamed from: a */
    public ThreadPoolExecutor f20337a = new ThreadPoolExecutor(1, 4, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: b */
    public C6551d f20338b = new C6551d();

    /* renamed from: c */
    public String f20339c;

    /* renamed from: c.i.a.h.f$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/h/f$a.class */
    public class RunnableC6554a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C6550c[] f20340a;

        public RunnableC6554a(C6550c[] cVarArr) {
            this.f20340a = cVarArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C6553f.this.f20338b.m20515g()) {
                C6553f.this.f20338b.m20526a(this.f20340a);
                if (!C6553f.this.f20338b.m20518d() && C6553f.this.f20338b.m20517e()) {
                    C6553f.this.f20338b.m20516f();
                    C6553f.this.m20510b();
                }
            }
        }
    }

    /* renamed from: c.i.a.h.f$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/h/f$b.class */
    public class C6555b extends AbstractC6527a<C6539a> {

        /* renamed from: a */
        public final /* synthetic */ String f20342a;

        public C6555b(String str) {
            this.f20342a = str;
        }

        /* renamed from: a */
        public void onResponse(C6539a aVar) {
            if (aVar.getResult()) {
                C6614a.m20363b("日志上传成功");
                C6553f.this.f20338b.m20528a(this.f20342a);
                C6553f.this.f20338b.m20527a(false);
                C6553f.this.m20510b();
                return;
            }
            C6614a.m20363b("日志上传失败，服务端返回错误");
            C6553f.this.f20338b.m20527a(false);
        }

        @Override // p131c.p396i.p397a.p399f.p401b.AbstractC6527a, p131c.p396i.p397a.p399f.p401b.AbstractC6530c
        public void onError(Exception exc) {
            C6614a.m20363b("日志上传失败");
            super.onError(exc);
            C6553f.this.f20338b.m20527a(false);
        }
    }

    /* renamed from: c */
    public static C6553f m20508c() {
        if (f20336d == null) {
            synchronized (C6553f.class) {
                try {
                    if (f20336d == null) {
                        f20336d = new C6553f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f20336d;
    }

    /* renamed from: a */
    public void m20514a() {
        this.f20338b.m20516f();
    }

    /* renamed from: a */
    public void m20513a(long j) {
        this.f20338b.m20523b(j);
    }

    /* renamed from: a */
    public void m20511a(C6550c... cVarArr) {
        this.f20337a.execute(new RunnableC6554a(cVarArr));
    }

    /* renamed from: b */
    public void m20510b() {
        String b = this.f20338b.m20524b();
        if (b == null) {
            C6614a.m20363b("没有需要上传的日志");
        } else if (this.f20338b.m20518d()) {
            C6614a.m20363b("日志正在上传中，等上传完后会再次检测目录下是否需要上传", this.f20339c);
        } else {
            String b2 = this.f20338b.m20522b(b);
            if (TextUtils.isEmpty(b2) || b2.trim().length() == 0) {
                C6614a.m20363b("需要上传的日志，为空，并删除");
                this.f20338b.m20528a(b);
                return;
            }
            this.f20338b.m20527a(true);
            this.f20338b.m20529a(System.currentTimeMillis());
            this.f20339c = b;
            C6534e.m20564a(C6489a.m20718b()).m20563a(new LogReportReq(b2), C6539a.class, new C6555b(b), b);
        }
    }

    /* renamed from: b */
    public void m20509b(long j) {
        this.f20338b.m20519c(j);
    }
}
