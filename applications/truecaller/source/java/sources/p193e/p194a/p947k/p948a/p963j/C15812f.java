package p193e.p194a.p947k.p948a.p963j;

import android.transition.Slide;
import android.view.View;
import android.widget.PopupWindow;
import com.truecaller.videocallerid.p187ui.utils.ToastWithActionView;
import p1727n3.p1807k.p1821i.C26574e;
import p193e.p194a.p947k.p948a.p963j.C15804a;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.k.a.j.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/j/f.class */
public final class C15812f extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ PopupWindow f44602b;

    /* renamed from: c */
    public final /* synthetic */ ToastWithActionView f44603c;

    /* renamed from: d */
    public final /* synthetic */ View f44604d;

    /* renamed from: e */
    public final /* synthetic */ a f44605e;

    /* renamed from: f */
    public final /* synthetic */ C15804a.C15805a f44606f;

    /* renamed from: g */
    public final /* synthetic */ View f44607g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15812f(PopupWindow popupWindow, ToastWithActionView toastWithActionView, View view, a aVar, C15804a.C15805a c15805a, View view2) {
        super(0);
        this.f44602b = popupWindow;
        this.f44603c = toastWithActionView;
        this.f44604d = view;
        this.f44605e = aVar;
        this.f44606f = c15805a;
        this.f44607g = view2;
    }

    public Object invoke() {
        Slide slide = new Slide();
        slide.setDuration(400L);
        slide.setSlideEdge(80);
        PopupWindow popupWindow = this.f44602b;
        this.f44603c.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC15808c(popupWindow, this, slide));
        popupWindow.setOnDismissListener(new C15810d(this, slide));
        popupWindow.setEnterTransition(slide);
        popupWindow.setExitTransition(slide);
        ToastWithActionView.m34454g(this.f44603c, popupWindow, this.f44606f.f44589c);
        popupWindow.showAtLocation(this.f44604d, 1, 0, 0);
        ToastWithActionView toastWithActionView = this.f44603c;
        toastWithActionView.f16063h = new C26574e(this.f44607g.getContext(), new C15811e(toastWithActionView, this));
        return s.a;
    }
}
