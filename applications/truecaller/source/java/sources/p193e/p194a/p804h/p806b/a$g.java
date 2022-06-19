package p193e.p194a.p804h.p806b;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.p166ui.ProgressAwareFlashButton;
import p193e.p194a.p1365y.p1366a.C21476b;
import p193e.p194a.p1365y.p1366a.ViewTreeObserver$OnGlobalLayoutListenerC21477c;
import s1.z.c.l;
/* renamed from: e.a.h.b.a$g */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/a$g.class */
public final class a$g implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ a f41859a;

    public a$g(a aVar) {
        this.f41859a = aVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        View view;
        a aVar = this.f41859a;
        if (!aVar.o || aVar.n || aVar.m != null) {
            return;
        }
        RecyclerView recyclerView = aVar.d;
        if (recyclerView == null) {
            l.l("recycler");
            throw null;
        }
        RecyclerView.AbstractC0317g adapter = recyclerView.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        for (int i = 0; i < itemCount; i++) {
            RecyclerView recyclerView2 = this.f41859a.d;
            if (recyclerView2 == null) {
                l.l("recycler");
                throw null;
            }
            RecyclerView.AbstractC0313c0 findViewHolderForAdapterPosition = recyclerView2.findViewHolderForAdapterPosition(i);
            View findViewById = (findViewHolderForAdapterPosition == null || (view = findViewHolderForAdapterPosition.itemView) == null) ? null : view.findViewById(2131363763);
            if (!(!(findViewById instanceof ProgressAwareFlashButton))) {
                findViewById = null;
            }
            if (findViewById != null && findViewById.getVisibility() == 0) {
                Context context = a.b(this.f41859a).getContext();
                l.d(context, "view.context");
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131165517);
                Context context2 = a.b(this.f41859a).getContext();
                l.d(context2, "view.context");
                int dimensionPixelSize2 = context2.getResources().getDimensionPixelSize(2131165538);
                int[] iArr = new int[2];
                findViewById.getLocationOnScreen(iArr);
                int i2 = iArr[1];
                if (iArr[1] > dimensionPixelSize) {
                    float f = i2 + dimensionPixelSize2;
                    ConstraintLayout constraintLayout = this.f41859a.f;
                    if (constraintLayout == null) {
                        l.l("dialpadView");
                        throw null;
                    } else if (f < constraintLayout.getY()) {
                        Context context3 = findViewById.getContext();
                        l.d(context3, "flashButton.context");
                        ViewTreeObserver$OnGlobalLayoutListenerC21477c viewTreeObserver$OnGlobalLayoutListenerC21477c = new ViewTreeObserver$OnGlobalLayoutListenerC21477c(context3, findViewById);
                        if (viewTreeObserver$OnGlobalLayoutListenerC21477c.f59978b == null) {
                            viewTreeObserver$OnGlobalLayoutListenerC21477c.f59978b = new PopupWindow(viewTreeObserver$OnGlobalLayoutListenerC21477c.f59977a, -1, -2, true);
                            View findViewById2 = viewTreeObserver$OnGlobalLayoutListenerC21477c.f59977a.findViewById(C3909R.C3911id.text);
                            l.d(findViewById2, "contentView.findViewById(R.id.text)");
                            TextView textView = (TextView) findViewById2;
                            Context context4 = viewTreeObserver$OnGlobalLayoutListenerC21477c.f59977a.getContext();
                            l.d(context4, "contentView.context");
                            textView.setText(context4.getResources().getText(C3909R.string.flash_tooltip_text));
                            PopupWindow popupWindow = viewTreeObserver$OnGlobalLayoutListenerC21477c.f59978b;
                            if (popupWindow != null) {
                                popupWindow.setBackgroundDrawable(new ColorDrawable());
                            }
                        }
                        viewTreeObserver$OnGlobalLayoutListenerC21477c.f59979c.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC21477c);
                        PopupWindow popupWindow2 = viewTreeObserver$OnGlobalLayoutListenerC21477c.f59978b;
                        if (popupWindow2 != null) {
                            popupWindow2.setOnDismissListener(new C21476b(viewTreeObserver$OnGlobalLayoutListenerC21477c));
                        }
                        PopupWindow popupWindow3 = viewTreeObserver$OnGlobalLayoutListenerC21477c.f59978b;
                        if (popupWindow3 != null) {
                            popupWindow3.showAsDropDown(viewTreeObserver$OnGlobalLayoutListenerC21477c.f59979c, 0, 0);
                        }
                        a aVar2 = this.f41859a;
                        aVar2.m = viewTreeObserver$OnGlobalLayoutListenerC21477c;
                        a.a(aVar2).m19868j6();
                        a aVar3 = this.f41859a;
                        aVar3.o = false;
                        aVar3.c();
                        return;
                    }
                } else {
                    continue;
                }
            }
        }
    }
}
