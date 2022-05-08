package androidx.appcompat.widget;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.al */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/al.class */
public final class RunnableC0446al implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ListPopupWindow f2241a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0446al(ListPopupWindow listPopupWindow) {
        this.f2241a = listPopupWindow;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View m = this.f2241a.m9366m();
        if (m != null && m.getWindowToken() != null) {
            this.f2241a.mo9372f_();
        }
    }
}
