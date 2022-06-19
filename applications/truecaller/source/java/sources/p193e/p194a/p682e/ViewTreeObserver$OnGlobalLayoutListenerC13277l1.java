package p193e.p194a.p682e;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: e.a.e.l1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/l1.class */
public class ViewTreeObserver$OnGlobalLayoutListenerC13277l1 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f38580a;

    /* renamed from: b */
    public final /* synthetic */ View f38581b;

    /* renamed from: c */
    public final /* synthetic */ float f38582c;

    /* renamed from: d */
    public final /* synthetic */ C13282m1 f38583d;

    public ViewTreeObserver$OnGlobalLayoutListenerC13277l1(C13282m1 c13282m1, RecyclerView recyclerView, View view, float f) {
        this.f38583d = c13282m1;
        this.f38580a = recyclerView;
        this.f38581b = view;
        this.f38582c = f;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f38583d.m21958f(this.f38580a.getChildAdapterPosition(this.f38581b), this.f38582c, this.f38581b);
        this.f38580a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
