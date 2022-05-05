package androidx.lifecycle;

import java.util.HashMap;
/* renamed from: androidx.lifecycle.v */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/v.class */
public final class C0949v {

    /* renamed from: a */
    private final HashMap<String, AbstractC0945t> f3924a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final AbstractC0945t m7548a(String str) {
        return this.f3924a.get(str);
    }

    /* renamed from: a */
    public final void m7549a() {
        for (AbstractC0945t tVar : this.f3924a.values()) {
            tVar.m7553d();
        }
        this.f3924a.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7547a(String str, AbstractC0945t tVar) {
        AbstractC0945t put = this.f3924a.put(str, tVar);
        if (put != null) {
            put.mo7554a();
        }
    }
}
