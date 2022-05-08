package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.flurry.sdk.jm */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jm.class */
public final class C3345jm {

    /* renamed from: a */
    public static C3345jm f5721a;

    /* renamed from: b */
    public final C3338jg<String, C3375ka<AbstractC3344jl<?>>> f5722b = new C3338jg<>();

    /* renamed from: c */
    public final C3338jg<C3375ka<AbstractC3344jl<?>>, String> f5723c = new C3338jg<>();

    /* renamed from: a */
    public static C3345jm m32636a() {
        C3345jm jmVar;
        synchronized (C3345jm.class) {
            try {
                if (f5721a == null) {
                    f5721a = new C3345jm();
                }
                jmVar = f5721a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return jmVar;
    }

    /* renamed from: a */
    public final int m32633a(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            return this.f5722b.m32655a((C3338jg<String, C3375ka<AbstractC3344jl<?>>>) str).size();
        }
    }

    /* renamed from: a */
    public final void m32635a(final AbstractC3343jk jkVar) {
        if (jkVar != null) {
            for (final AbstractC3344jl<?> jlVar : m32631b(jkVar.m32638a())) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.jm.1
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        jlVar.mo32302a(jkVar);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m32634a(AbstractC3344jl<?> jlVar) {
        synchronized (this) {
            if (jlVar != null) {
                C3375ka<AbstractC3344jl<?>> kaVar = new C3375ka<>(jlVar);
                for (String str : this.f5723c.m32655a((C3338jg<C3375ka<AbstractC3344jl<?>>, String>) kaVar)) {
                    this.f5722b.m32650b(str, kaVar);
                }
                this.f5723c.m32651b(kaVar);
            }
        }
    }

    /* renamed from: a */
    public final void m32632a(String str, AbstractC3344jl<?> jlVar) {
        synchronized (this) {
            if (!TextUtils.isEmpty(str) && jlVar != null) {
                C3375ka<AbstractC3344jl<?>> kaVar = new C3375ka<>(jlVar);
                boolean z = false;
                List<C3375ka<AbstractC3344jl<?>>> a = this.f5722b.m32653a((C3338jg<String, C3375ka<AbstractC3344jl<?>>>) str, false);
                if (a != null) {
                    z = a.contains(kaVar);
                }
                if (!z) {
                    this.f5722b.m32654a((C3338jg<String, C3375ka<AbstractC3344jl<?>>>) str, (String) kaVar);
                    this.f5723c.m32654a((C3338jg<C3375ka<AbstractC3344jl<?>>, String>) kaVar, (C3375ka<AbstractC3344jl<?>>) str);
                }
            }
        }
    }

    /* renamed from: b */
    public final List<AbstractC3344jl<?>> m32631b(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            Iterator<C3375ka<AbstractC3344jl<?>>> it = this.f5722b.m32655a((C3338jg<String, C3375ka<AbstractC3344jl<?>>>) str).iterator();
            while (it.hasNext()) {
                AbstractC3344jl<?> jlVar = it.next().get();
                if (jlVar == null) {
                    it.remove();
                } else {
                    arrayList.add(jlVar);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: b */
    public final void m32630b(String str, AbstractC3344jl<?> jlVar) {
        synchronized (this) {
            if (!TextUtils.isEmpty(str)) {
                C3375ka<AbstractC3344jl<?>> kaVar = new C3375ka<>(jlVar);
                this.f5722b.m32650b(str, kaVar);
                this.f5723c.m32650b(kaVar, str);
            }
        }
    }
}
