package androidx.appcompat.view.menu;

import android.os.SystemClock;
import android.view.MenuItem;
import androidx.appcompat.view.menu.View$OnKeyListenerC0362d;
import androidx.appcompat.widget.AbstractC0448an;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.view.menu.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/g.class */
public final class C0366g implements AbstractC0448an {

    /* renamed from: a */
    final /* synthetic */ View$OnKeyListenerC0362d f1623a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0366g(View$OnKeyListenerC0362d dVar) {
        this.f1623a = dVar;
    }

    @Override // androidx.appcompat.widget.AbstractC0448an
    /* renamed from: a */
    public final void mo9159a(C0371k kVar, MenuItem menuItem) {
        this.f1623a.f1593a.removeCallbacksAndMessages(kVar);
    }

    @Override // androidx.appcompat.widget.AbstractC0448an
    /* renamed from: b */
    public final void mo9157b(C0371k kVar, MenuItem menuItem) {
        View$OnKeyListenerC0362d.C0363a aVar = null;
        this.f1623a.f1593a.removeCallbacksAndMessages(null);
        int size = this.f1623a.f1594b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (kVar == this.f1623a.f1594b.get(i).f1619b) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            int i2 = i + 1;
            if (i2 < this.f1623a.f1594b.size()) {
                aVar = this.f1623a.f1594b.get(i2);
            }
            this.f1623a.f1593a.postAtTime(new RunnableC0367h(this, aVar, menuItem, kVar), kVar, SystemClock.uptimeMillis() + 200);
        }
    }
}
