package com.getkeepsafe.relinker;

import android.content.Context;
import android.util.Log;
import com.getkeepsafe.relinker.C0707b;
import com.getkeepsafe.relinker.p019f.C0720i;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* renamed from: com.getkeepsafe.relinker.c */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/c.class */
public class C0712c {

    /* renamed from: a */
    protected final Set<String> f3174a;

    /* renamed from: b */
    protected final C0707b.AbstractC0709b f3175b;

    /* renamed from: c */
    protected final C0707b.AbstractC0708a f3176c;

    /* renamed from: d */
    protected boolean f3177d;

    /* renamed from: e */
    protected boolean f3178e;

    /* renamed from: f */
    protected C0707b.AbstractC0711d f3179f;

    /* renamed from: com.getkeepsafe.relinker.c$a */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/c$a.class */
    public class RunnableC0713a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ Context f3180f;

        /* renamed from: g */
        final /* synthetic */ String f3181g;

        /* renamed from: h */
        final /* synthetic */ String f3182h;

        /* renamed from: i */
        final /* synthetic */ C0707b.AbstractC0710c f3183i;

        RunnableC0713a(Context context, String str, String str2, C0707b.AbstractC0710c abstractC0710c) {
            C0712c.this = r4;
            this.f3180f = context;
            this.f3181g = str;
            this.f3182h = str2;
            this.f3183i = abstractC0710c;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C0712c.this.m3948g(this.f3180f, this.f3181g, this.f3182h);
                this.f3183i.m3957a();
            } catch (MissingLibraryException e) {
                this.f3183i.m3956b(e);
            } catch (UnsatisfiedLinkError e2) {
                this.f3183i.m3956b(e2);
            }
        }
    }

    /* renamed from: com.getkeepsafe.relinker.c$b */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/c$b.class */
    public class C0714b implements FilenameFilter {

        /* renamed from: a */
        final /* synthetic */ String f3185a;

        C0714b(C0712c c0712c, String str) {
            this.f3185a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.f3185a);
        }
    }

    public C0712c() {
        this(new d(), new a());
    }

    protected C0712c(C0707b.AbstractC0709b abstractC0709b, C0707b.AbstractC0708a abstractC0708a) {
        this.f3174a = new HashSet();
        if (abstractC0709b != null) {
            if (abstractC0708a == null) {
                throw new IllegalArgumentException("Cannot pass null library installer");
            }
            this.f3175b = abstractC0709b;
            this.f3176c = abstractC0708a;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null library loader");
    }

    /* renamed from: g */
    public void m3948g(Context context, String str, String str2) {
        Throwable th;
        if (this.f3174a.contains(str) && !this.f3177d) {
            m3946i("%s already loaded previously!", str);
            return;
        }
        try {
            this.f3175b.m3961b(str);
            this.f3174a.add(str);
            m3946i("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e) {
            m3946i("Loading the library normally failed: %s", Log.getStackTraceString(e));
            m3946i("%s (%s) was not loaded normally, re-linking...", str, str2);
            File m3951d = m3951d(context, str, str2);
            if (!m3951d.exists() || this.f3177d) {
                if (this.f3177d) {
                    m3946i("Forcing a re-link of %s (%s)...", str, str2);
                }
                m3953b(context, str, str2);
                this.f3176c.m3963a(context, this.f3175b.m3959d(), this.f3175b.m3962a(str), m3951d, this);
            }
            try {
                if (this.f3178e) {
                    C0720i c0720i = null;
                    try {
                        C0720i c0720i2 = new C0720i(m3951d);
                        try {
                            List<String> m3939c = c0720i2.m3939c();
                            c0720i2.close();
                            for (String str3 : m3939c) {
                                m3950e(context, this.f3175b.m3960c(str3));
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            c0720i = c0720i2;
                            c0720i.close();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            } catch (IOException e2) {
            }
            this.f3175b.m3958e(m3951d.getAbsolutePath());
            this.f3174a.add(str);
            m3946i("%s (%s) was re-linked!", str, str2);
        }
    }

    /* renamed from: b */
    protected void m3953b(Context context, String str, String str2) {
        File m3952c = m3952c(context);
        File m3951d = m3951d(context, str, str2);
        File[] listFiles = m3952c.listFiles(new C0714b(this, this.f3175b.m3962a(str)));
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            if (this.f3177d || !file.getAbsolutePath().equals(m3951d.getAbsolutePath())) {
                file.delete();
            }
        }
    }

    /* renamed from: c */
    protected File m3952c(Context context) {
        return context.getDir("lib", 0);
    }

    /* renamed from: d */
    protected File m3951d(Context context, String str, String str2) {
        String m3962a = this.f3175b.m3962a(str);
        if (C0715e.m3945a(str2)) {
            return new File(m3952c(context), m3962a);
        }
        File m3952c = m3952c(context);
        return new File(m3952c, m3962a + "." + str2);
    }

    /* renamed from: e */
    public void m3950e(Context context, String str) {
        m3949f(context, str, null, null);
    }

    /* renamed from: f */
    public void m3949f(Context context, String str, String str2, C0707b.AbstractC0710c abstractC0710c) {
        if (context != null) {
            if (C0715e.m3945a(str)) {
                throw new IllegalArgumentException("Given library is either null or empty");
            }
            m3946i("Beginning load of %s...", str);
            if (abstractC0710c == null) {
                m3948g(context, str, str2);
                return;
            } else {
                new Thread(new RunnableC0713a(context, str, str2, abstractC0710c)).start();
                return;
            }
        }
        throw new IllegalArgumentException("Given context is null");
    }

    /* renamed from: h */
    public void m3947h(String str) {
        C0707b.AbstractC0711d abstractC0711d = this.f3179f;
        if (abstractC0711d != null) {
            abstractC0711d.m3955a(str);
        }
    }

    /* renamed from: i */
    public void m3946i(String str, Object... objArr) {
        m3947h(String.format(Locale.US, str, objArr));
    }
}
