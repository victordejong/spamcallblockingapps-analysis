package androidx.appcompat.app;

import android.view.View;
import androidx.core.p037g.AbstractC0718af;
/* renamed from: androidx.appcompat.app.al */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/al.class */
final class C0295al implements AbstractC0718af {

    /* renamed from: a */
    final /* synthetic */ C0291ai f1298a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0295al(C0291ai aiVar) {
        this.f1298a = aiVar;
    }

    @Override // androidx.core.p037g.AbstractC0718af
    /* renamed from: a */
    public final void mo8439a() {
        ((View) this.f1298a.f1270c.getParent()).invalidate();
    }
}
