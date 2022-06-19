package androidx.recyclerview.widget;

import com.revenuecat.purchases.common.BackendKt;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j$a.class */
class j$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ j f2115f;

    j$a(j jVar) {
        this.f2115f = jVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2115f.k((int) BackendKt.HTTP_SERVER_ERROR_CODE);
    }
}
