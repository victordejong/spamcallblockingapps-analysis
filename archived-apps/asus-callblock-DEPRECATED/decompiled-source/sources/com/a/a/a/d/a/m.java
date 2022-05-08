package com.a.a.a.d.a;

import android.util.Pair;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/a/m.class */
public final class m implements l {

    /* renamed from: a  reason: collision with root package name */
    private o f382a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f383b = false;
    private boolean c = false;
    private List<Pair<String, u>> d = new ArrayList();
    private List<String> e = null;
    private List<Pair<String, String>> f = new ArrayList();
    private int g = 0;
    private int h = -1;
    private String i = BuildConfig.FLAVOR;

    @Override // com.a.a.a.d.a.l
    public final void a(o oVar) {
        this.f382a = oVar;
    }

    @Override // com.a.a.a.d.a.l
    public final o b() {
        return this.f382a;
    }

    @Override // com.a.a.a.d.a.l
    public final l c(String str) {
        t.a(this, t.a(t.b(str), a.Eq));
        return this;
    }

    @Override // com.a.a.a.d.a.l
    public final l c(String str, String str2) {
        l b2 = t.b(str);
        l a2 = t.a(str2);
        i iVar = i.SubstringOf;
        m mVar = new m();
        j jVar = new j(iVar);
        for (int i = 0; i < 2; i++) {
            l lVar = new l[]{b2, a2}[i];
            if (lVar.b() != null) {
                jVar.f380b.add(lVar.b());
            }
        }
        mVar.a(jVar);
        t.a(this, mVar);
        return this;
    }

    @Override // com.a.a.a.d.a.l
    public final boolean c() {
        return this.f383b;
    }

    @Override // com.a.a.a.d.a.l
    public final l d(String str) {
        t.a(this, t.a(str));
        return this;
    }

    @Override // com.a.a.a.d.a.l
    public final l d(String str, String str2) {
        this.f.add(new Pair<>(str, str2));
        return this;
    }

    @Override // com.a.a.a.d.a.l
    public final boolean d() {
        return this.c;
    }

    @Override // com.a.a.a.d.a.l
    public final List<Pair<String, u>> e() {
        return this.d;
    }

    @Override // com.a.a.a.d.a.l
    public final List<String> f() {
        return this.e;
    }

    @Override // com.a.a.a.d.a.l
    public final List<Pair<String, String>> g() {
        return this.f;
    }

    @Override // com.a.a.a.d.a.l
    public final int h() {
        return this.g;
    }

    @Override // com.a.a.a.d.a.l
    public final int i() {
        return this.h;
    }

    @Override // com.a.a.a.d.a.l
    public final l k() {
        t.a(this, t.a((l) null, a.Or));
        return this;
    }
}
