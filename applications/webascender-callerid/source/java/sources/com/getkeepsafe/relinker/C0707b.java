package com.getkeepsafe.relinker;

import android.content.Context;
import java.io.File;
/* renamed from: com.getkeepsafe.relinker.b */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b.class */
public class C0707b {

    /* renamed from: com.getkeepsafe.relinker.b$a */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$a.class */
    public interface AbstractC0708a {
        /* renamed from: a */
        void m3963a(Context context, String[] strArr, String str, File file, C0712c c0712c);
    }

    /* renamed from: com.getkeepsafe.relinker.b$b */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$b.class */
    public interface AbstractC0709b {
        /* renamed from: a */
        String m3962a(String str);

        /* renamed from: b */
        void m3961b(String str);

        /* renamed from: c */
        String m3960c(String str);

        /* renamed from: d */
        String[] m3959d();

        /* renamed from: e */
        void m3958e(String str);
    }

    /* renamed from: com.getkeepsafe.relinker.b$c */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$c.class */
    public interface AbstractC0710c {
        /* renamed from: a */
        void m3957a();

        /* renamed from: b */
        void m3956b(Throwable th);
    }

    /* renamed from: com.getkeepsafe.relinker.b$d */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/b$d.class */
    public interface AbstractC0711d {
        /* renamed from: a */
        void m3955a(String str);
    }

    /* renamed from: a */
    public static void m3965a(Context context, String str, String str2) {
        m3964b(context, str, str2, null);
    }

    /* renamed from: b */
    public static void m3964b(Context context, String str, String str2, AbstractC0710c abstractC0710c) {
        new C0712c().m3949f(context, str, str2, abstractC0710c);
    }
}
