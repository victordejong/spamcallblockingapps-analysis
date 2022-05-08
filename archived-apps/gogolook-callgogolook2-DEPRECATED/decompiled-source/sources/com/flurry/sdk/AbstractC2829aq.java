package com.flurry.sdk;

import androidx.media2.session.SessionCommand;
import com.flurry.sdk.C2844au;
import com.flurry.sdk.C3363jx;
import com.flurry.sdk.C3368jz;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Locale;
/* renamed from: com.flurry.sdk.aq */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/aq.class */
public abstract class AbstractC2829aq {

    /* renamed from: h */
    public static final String f4050h = "aq";

    /* renamed from: a */
    public AbstractC2840a f4051a;

    /* renamed from: b */
    public String f4052b;

    /* renamed from: d */
    public C2844au f4054d;

    /* renamed from: e */
    public long f4055e;

    /* renamed from: f */
    public boolean f4056f;

    /* renamed from: g */
    public boolean f4057g;

    /* renamed from: j */
    public boolean f4059j;

    /* renamed from: k */
    public int f4060k;

    /* renamed from: m */
    public int f4062m;

    /* renamed from: i */
    public long f4058i = Long.MAX_VALUE;

    /* renamed from: c */
    public int f4053c = SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD;

    /* renamed from: l */
    public long f4061l = 102400;

    /* renamed from: com.flurry.sdk.aq$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/aq$a.class */
    public interface AbstractC2840a {
        /* renamed from: a */
        void mo32331a(AbstractC2829aq aqVar);
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m33580a(AbstractC2829aq aqVar) {
        return aqVar.f4054d != null;
    }

    /* renamed from: b */
    public static /* synthetic */ void m33573b(AbstractC2829aq aqVar) {
        if (!aqVar.f4057g) {
            C3363jx jxVar = new C3363jx();
            jxVar.f5766g = aqVar.f4052b;
            jxVar.f5767h = C3368jz.EnumC3371a.kHead;
            jxVar.f5751a = new C3363jx.AbstractC3365a<Void, Void>() { // from class: com.flurry.sdk.aq.3
                @Override // com.flurry.sdk.C3363jx.AbstractC3365a
                /* renamed from: a */
                public final /* synthetic */ void mo32321a(C3363jx<Void, Void> jxVar2, Void r8) {
                    if (!AbstractC2829aq.this.f4057g) {
                        int i = jxVar2.f5776q;
                        String str = AbstractC2829aq.f4050h;
                        C3356jq.m32615a(3, str, "Downloader: HTTP HEAD status code is:" + i + " for url: " + AbstractC2829aq.this.f4052b);
                        if (jxVar2.m32580b()) {
                            AbstractC2829aq aqVar2 = AbstractC2829aq.this;
                            aqVar2.f4055e = aqVar2.m33575a(jxVar2);
                            List<String> a = jxVar2.m32582a("Accept-Ranges");
                            int i2 = 1;
                            if (AbstractC2829aq.this.f4055e <= 0 || a == null || a.isEmpty()) {
                                AbstractC2829aq.this.f4060k = 1;
                            } else {
                                AbstractC2829aq.this.f4059j = "bytes".equals(a.get(0).trim());
                                AbstractC2829aq aqVar3 = AbstractC2829aq.this;
                                long j = aqVar3.f4055e / AbstractC2829aq.this.f4061l;
                                if (AbstractC2829aq.this.f4055e % AbstractC2829aq.this.f4061l <= 0) {
                                    i2 = 0;
                                }
                                aqVar3.f4060k = (int) (j + i2);
                            }
                            if (AbstractC2829aq.this.f4058i <= 0 || AbstractC2829aq.this.f4055e <= AbstractC2829aq.this.f4058i) {
                                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.aq.3.2
                                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                                    /* renamed from: a */
                                    public final void mo32300a() {
                                        AbstractC2829aq.m33559j(AbstractC2829aq.this);
                                    }
                                });
                                return;
                            }
                            String str2 = AbstractC2829aq.f4050h;
                            C3356jq.m32615a(3, str2, "Downloader: Size limit exceeded -- limit: " + AbstractC2829aq.this.f4058i + ", content-length: " + AbstractC2829aq.this.f4055e + " bytes!");
                            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.aq.3.1
                                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                                /* renamed from: a */
                                public final void mo32300a() {
                                    AbstractC2829aq.this.m33560j();
                                }
                            });
                            return;
                        }
                        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.aq.3.3
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                AbstractC2829aq.this.m33560j();
                            }
                        });
                    }
                }
            };
            String str = f4050h;
            C3356jq.m32615a(3, str, "Downloader: requesting HTTP HEAD for url: " + aqVar.f4052b);
            C3323iz.m32690a().m32623a((Object) aqVar, (AbstractC2829aq) jxVar);
        }
    }

    /* renamed from: j */
    public static /* synthetic */ void m33559j(AbstractC2829aq aqVar) {
        if (!aqVar.f4057g) {
            boolean z = true;
            if (aqVar.f4054d == null || !aqVar.f4059j || aqVar.f4060k <= 1) {
                z = false;
            }
            if (z) {
                for (int i = 0; i < aqVar.f4060k; i++) {
                    aqVar.f4054d.m33546d(aqVar.m33581a(i));
                }
                aqVar.m33564h();
                return;
            }
            aqVar.m33566g();
        }
    }

    /* renamed from: m */
    public static /* synthetic */ int m33556m(AbstractC2829aq aqVar) {
        int i = aqVar.f4062m;
        aqVar.f4062m = i + 1;
        return i;
    }

    /* renamed from: a */
    public final long m33575a(C3368jz jzVar) {
        long j;
        List<String> a = jzVar.m32582a("Content-Length");
        if (a != null && !a.isEmpty()) {
            try {
                j = Long.parseLong(a.get(0));
            } catch (NumberFormatException e) {
                String str = f4050h;
                C3356jq.m32615a(3, str, "Downloader: could not determine content length for url: " + this.f4052b);
            }
            return j;
        }
        j = -1;
        return j;
    }

    /* renamed from: a */
    public final String m33581a(int i) {
        return String.format(Locale.US, "%s__%03d", this.f4052b, Integer.valueOf(i));
    }

    /* renamed from: a */
    public final void m33582a() {
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.aq.1
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                if (AbstractC2829aq.m33580a(AbstractC2829aq.this)) {
                    AbstractC2829aq.m33573b(AbstractC2829aq.this);
                } else {
                    AbstractC2829aq.this.m33566g();
                }
            }
        });
    }

    /* renamed from: b */
    public final void m33574b() {
        this.f4057g = true;
        C3323iz.m32690a().m32624a(this);
    }

    /* renamed from: c */
    public abstract OutputStream mo33544c() throws IOException;

    /* renamed from: d */
    public abstract void mo33543d();

    /* renamed from: e */
    public abstract void mo33542e();

    /* renamed from: g */
    public final void m33566g() {
        if (!this.f4057g) {
            String str = f4050h;
            C3356jq.m32615a(3, str, "Downloader: Requesting file from url: " + this.f4052b);
            C3368jz jzVar = new C3368jz();
            jzVar.f5766g = this.f4052b;
            jzVar.f5767h = C3368jz.EnumC3371a.kGet;
            jzVar.f5941u = this.f4053c;
            jzVar.f5771l = new C3368jz.C3372b() { // from class: com.flurry.sdk.aq.2
                @Override // com.flurry.sdk.C3368jz.AbstractC3373c
                /* renamed from: a */
                public final void mo32572a(C3368jz jzVar2) {
                    if (!AbstractC2829aq.this.f4057g) {
                        int i = jzVar2.f5776q;
                        String str2 = AbstractC2829aq.f4050h;
                        C3356jq.m32615a(3, str2, "Downloader: Download status code is:" + i + " for url: " + AbstractC2829aq.this.f4052b);
                        AbstractC2829aq.this.f4056f = jzVar2.m32580b();
                        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.aq.2.1
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                if (!AbstractC2829aq.this.f4056f) {
                                    AbstractC2829aq.this.mo33542e();
                                }
                                AbstractC2829aq.this.m33560j();
                            }
                        });
                    }
                }

                @Override // com.flurry.sdk.C3368jz.AbstractC3373c
                /* renamed from: a */
                public final void mo32571a(C3368jz jzVar2, InputStream inputStream) throws Exception {
                    Throwable th;
                    AbstractC2829aq aqVar = AbstractC2829aq.this;
                    if (!aqVar.f4057g) {
                        aqVar.f4055e = aqVar.m33575a(jzVar2);
                        if (AbstractC2829aq.this.f4055e <= AbstractC2829aq.this.f4058i) {
                            C2852ax axVar = null;
                            try {
                                C2852ax axVar2 = new C2852ax(inputStream, AbstractC2829aq.this.f4058i);
                                try {
                                    C3445la.m32463a(axVar2, AbstractC2829aq.this.mo33544c());
                                    AbstractC2829aq.this.mo33543d();
                                    C3445la.m32465a((Closeable) axVar2);
                                } catch (Throwable th2) {
                                    th = th2;
                                    axVar = axVar2;
                                    AbstractC2829aq.this.mo33543d();
                                    C3445la.m32465a((Closeable) axVar);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } else {
                            throw new IOException("Downloader: content length: " + AbstractC2829aq.this.f4055e + " exceeds size limit: " + AbstractC2829aq.this.f4058i);
                        }
                    } else {
                        throw new IOException("Downloader: request cancelled");
                    }
                }
            };
            C3323iz.m32690a().m32623a((Object) this, (AbstractC2829aq) jzVar);
        }
    }

    /* renamed from: h */
    public final void m33564h() {
        while (true) {
            int i = this.f4062m;
            if (i >= this.f4060k) {
                m33562i();
                return;
            } else if (!this.f4057g) {
                final String a = m33581a(i);
                int i2 = this.f4062m;
                final String format = String.format(Locale.US, "%s=%d-%d", "bytes", Long.valueOf(i2 * this.f4061l), Long.valueOf(Math.min(this.f4055e, (i2 + 1) * this.f4061l) - 1));
                if (this.f4054d.m33546d(a)) {
                    String str = f4050h;
                    C3356jq.m32615a(3, str, "Downloader: Skipping chunk with range:" + format + " for url: " + this.f4052b + " chunk: " + this.f4062m);
                    this.f4062m = this.f4062m + 1;
                } else {
                    String str2 = f4050h;
                    C3356jq.m32615a(3, str2, "Downloader: Requesting chunk with range:" + format + " for url: " + this.f4052b + " chunk: " + this.f4062m);
                    C3368jz jzVar = new C3368jz();
                    jzVar.f5766g = this.f4052b;
                    jzVar.f5767h = C3368jz.EnumC3371a.kGet;
                    jzVar.f5941u = this.f4053c;
                    jzVar.m32581a("Range", format);
                    jzVar.f5771l = new C3368jz.C3372b() { // from class: com.flurry.sdk.aq.4
                        @Override // com.flurry.sdk.C3368jz.AbstractC3373c
                        /* renamed from: a */
                        public final void mo32572a(C3368jz jzVar2) {
                            if (!AbstractC2829aq.this.f4057g) {
                                int i3 = jzVar2.f5776q;
                                C3356jq.m32615a(3, AbstractC2829aq.f4050h, "Downloader: Download status code is:" + i3 + " for url: " + AbstractC2829aq.this.f4052b + " chunk: " + AbstractC2829aq.this.f4062m);
                                List<String> a2 = jzVar2.m32582a("Content-Range");
                                String str3 = null;
                                if (a2 != null) {
                                    str3 = null;
                                    if (!a2.isEmpty()) {
                                        str3 = a2.get(0);
                                        C3356jq.m32615a(3, AbstractC2829aq.f4050h, "Downloader: Content range is:" + str3 + " for url: " + AbstractC2829aq.this.f4052b + " chunk: " + AbstractC2829aq.this.f4062m);
                                    }
                                }
                                if (!jzVar2.m32580b() || i3 != 206 || str3 == null || !str3.startsWith(format.replaceAll("=", " "))) {
                                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.aq.4.2
                                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                                        /* renamed from: a */
                                        public final void mo32300a() {
                                            AbstractC2829aq.this.m33560j();
                                        }
                                    });
                                    return;
                                }
                                AbstractC2829aq.m33556m(AbstractC2829aq.this);
                                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.aq.4.1
                                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                                    /* renamed from: a */
                                    public final void mo32300a() {
                                        AbstractC2829aq.this.m33564h();
                                    }
                                });
                            }
                        }

                        @Override // com.flurry.sdk.C3368jz.AbstractC3373c
                        /* renamed from: a */
                        public final void mo32571a(C3368jz jzVar2, InputStream inputStream) throws Exception {
                            Throwable th;
                            AbstractC2829aq aqVar = AbstractC2829aq.this;
                            if (!aqVar.f4057g) {
                                C2844au.C2849c b = aqVar.f4054d.m33549b(a);
                                e = null;
                                IOException e = null;
                                C2852ax axVar = null;
                                if (b != null) {
                                    try {
                                        axVar = new C2852ax(inputStream, AbstractC2829aq.this.f4058i);
                                    } catch (IOException e2) {
                                        e = e2;
                                        axVar = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                    try {
                                        C3445la.m32463a(axVar, b.f4092a);
                                    } catch (IOException e3) {
                                        e = e3;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        C3445la.m32465a((Closeable) axVar);
                                        C3445la.m32465a(b);
                                        throw th;
                                    }
                                    C3445la.m32465a((Closeable) axVar);
                                    C3445la.m32465a(b);
                                }
                                if (e != null) {
                                    AbstractC2829aq.this.f4054d.m33547c(a);
                                    throw e;
                                }
                                return;
                            }
                            throw new IOException("Downloader: request cancelled");
                        }
                    };
                    C3323iz.m32690a().m32623a((Object) this, (AbstractC2829aq) jzVar);
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: i */
    public final void m33562i() {
        Throwable th;
        C2844au.C2848b bVar;
        if (!this.f4057g) {
            String str = f4050h;
            C3356jq.m32615a(3, str, "Downloader: assembling output file for url: " + this.f4052b);
            IOException e = null;
            try {
                OutputStream c = mo33544c();
                for (int i = 0; i < this.f4060k; i++) {
                    if (!this.f4057g) {
                        String a = m33581a(i);
                        try {
                            bVar = this.f4054d.m33552a(a);
                            if (bVar != null) {
                                try {
                                    C3445la.m32463a(bVar.f4087a, c);
                                    C3445la.m32465a(bVar);
                                    this.f4054d.m33547c(a);
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } else {
                                throw new IOException("Could not create reader for chunk key: " + a);
                            }
                            th = th2;
                        } catch (Throwable th3) {
                            th = th3;
                            bVar = null;
                        }
                        C3445la.m32465a(bVar);
                        throw th;
                    }
                    throw new IOException("Download cancelled");
                }
            } catch (IOException e2) {
                e = e2;
            } catch (Throwable th4) {
                mo33543d();
                throw th4;
            }
            mo33543d();
            if (e == null) {
                String str2 = f4050h;
                C3356jq.m32615a(3, str2, "Downloader: assemble succeeded for url: " + this.f4052b);
                this.f4056f = true;
            } else {
                String str3 = f4050h;
                C3356jq.m32615a(3, str3, "Downloader: assemble failed for url: " + this.f4052b + " failed with exception: " + e);
                for (int i2 = 0; i2 < this.f4060k; i2++) {
                    this.f4054d.m33547c(m33581a(i2));
                }
                mo33542e();
            }
            m33560j();
        }
    }

    /* renamed from: j */
    public final void m33560j() {
        if (!this.f4057g && this.f4051a != null) {
            String str = f4050h;
            C3356jq.m32615a(3, str, "Downloader: finished -- success: " + this.f4056f + " for url: " + this.f4052b);
            this.f4051a.mo32331a(this);
        }
    }
}
