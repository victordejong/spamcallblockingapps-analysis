package androidx.core.p034d;

import androidx.core.p034d.C0649b;
import androidx.core.p034d.C0657g;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.d.e */
/* loaded from: classes-dex2jar.jar:androidx/core/d/e.class */
public final class C0655e implements C0657g.AbstractC0658a<C0649b.C0652c> {

    /* renamed from: a */
    final /* synthetic */ String f2937a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0655e(String str) {
        this.f2937a = str;
    }

    @Override // androidx.core.p034d.C0657g.AbstractC0658a
    /* renamed from: a */
    public final /* synthetic */ void mo8584a(C0649b.C0652c cVar) {
        C0649b.C0652c cVar2 = cVar;
        synchronized (C0649b.f2918b) {
            ArrayList<C0657g.AbstractC0658a<C0649b.C0652c>> arrayList = C0649b.f2919c.get(this.f2937a);
            if (arrayList != null) {
                C0649b.f2919c.remove(this.f2937a);
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).mo8584a(cVar2);
                }
            }
        }
    }
}
