package com.facebook.internal.p042k0.p043c;

import android.os.Process;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.GraphRequest;
import com.facebook.internal.p042k0.C2442b;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.json.JSONArray;
import org.json.JSONException;
import p081h.p154f.C6135n;
import p081h.p154f.C6148s;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.internal.k0.c.a */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/c/a.class */
public class C2444a implements Thread.UncaughtExceptionHandler {

    /* renamed from: c */
    public static final String f3074c = C2444a.class.getCanonicalName();
    @Nullable

    /* renamed from: d */
    public static C2444a f3075d;
    @Nullable

    /* renamed from: a */
    public final Thread.UncaughtExceptionHandler f3076a;

    /* renamed from: b */
    public boolean f3077b = false;

    /* renamed from: com.facebook.internal.k0.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/c/a$a.class */
    public static final class C2445a implements Comparator<C2447b> {
        /* renamed from: a */
        public int compare(C2447b bVar, C2447b bVar2) {
            return bVar.m34703a(bVar2);
        }
    }

    /* renamed from: com.facebook.internal.k0.c.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/c/a$b.class */
    public static final class C2446b implements GraphRequest.AbstractC2230f {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f3078a;

        public C2446b(ArrayList arrayList) {
            this.f3078a = arrayList;
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            try {
                if (sVar.m23705a() == null && sVar.m23698b().getBoolean("success")) {
                    for (int i = 0; this.f3078a.size() > i; i++) {
                        ((C2447b) this.f3078a.get(i)).m34704a();
                    }
                }
            } catch (JSONException e) {
            }
        }
    }

    public C2444a(@Nullable Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f3076a = uncaughtExceptionHandler;
    }

    /* renamed from: a */
    public static void m34708a() {
        synchronized (C2444a.class) {
            try {
                if (C6135n.m23742i()) {
                    m34706c();
                }
                if (f3075d == null) {
                    f3075d = new C2444a(Thread.getDefaultUncaughtExceptionHandler());
                    Thread.setDefaultUncaughtExceptionHandler(f3075d);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static void m34707b() {
        try {
            Process.killProcess(Process.myPid());
            System.exit(10);
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public static void m34706c() {
        File[] b = C2442b.m34711b();
        ArrayList arrayList = new ArrayList();
        for (File file : b) {
            C2447b bVar = new C2447b(file);
            if (bVar.m34701c()) {
                arrayList.add(bVar);
            }
        }
        Collections.sort(arrayList, new C2445a());
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < arrayList.size() && i < 5; i++) {
            jSONArray.put(arrayList.get(i));
        }
        C2442b.m34714a("crash_reports", jSONArray, new C2446b(arrayList));
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (C2442b.m34709c(th)) {
            new C2447b(th).m34700d();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f3076a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
        if (this.f3077b) {
            m34707b();
        }
    }
}
