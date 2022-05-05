package androidx.appcompat.app;

import android.view.View;
import androidx.core.p037g.AbstractC0737p;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.appcompat.app.r */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/r.class */
final class C0314r implements AbstractC0737p {

    /* renamed from: a */
    final /* synthetic */ AppCompatDelegateImpl f1337a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0314r(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1337a = appCompatDelegateImpl;
    }

    @Override // androidx.core.p037g.AbstractC0737p
    /* renamed from: a */
    public final C0719ag mo971a(View view, C0719ag agVar) {
        int b = agVar.m8434b();
        int i = this.f1337a.m9894i(b);
        C0719ag agVar2 = agVar;
        if (b != i) {
            agVar2 = agVar.m8437a(agVar.m8438a(), i, agVar.m8433c(), agVar.m8432d());
        }
        return C0741t.m8347a(view, agVar2);
    }
}
