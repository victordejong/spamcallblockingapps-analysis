package androidx.work.impl;

import com.google.common.util.concurrent.c;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/d$a.class */
class d$a implements Runnable {

    /* renamed from: f */
    private AbstractC0480b f2498f;

    /* renamed from: g */
    private String f2499g;

    /* renamed from: h */
    private c<Boolean> f2500h;

    d$a(AbstractC0480b abstractC0480b, String str, c<Boolean> cVar) {
        this.f2498f = abstractC0480b;
        this.f2499g = str;
        this.f2500h = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        try {
            z = ((Boolean) this.f2500h.get()).booleanValue();
        } catch (InterruptedException | ExecutionException e) {
            z = true;
        }
        this.f2498f.m4489d(this.f2499g, z);
    }
}
