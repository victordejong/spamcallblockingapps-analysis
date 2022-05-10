package p131c.p396i.p397a.p406i.p411f.p413i;

import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.etap.EtapBanner;
import com.etap.IAdListener;
import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.p406i.p411f.AbstractC6578a;
/* renamed from: c.i.a.i.f.i.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/i/a.class */
public class View$OnAttachStateChangeListenerC6598a extends AbstractC6578a<EtapBanner> implements View.OnAttachStateChangeListener {

    /* renamed from: c.i.a.i.f.i.a$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/i/a$a.class */
    public class C6599a implements IAdListener {
        public C6599a(View$OnAttachStateChangeListenerC6598a aVar) {
        }
    }

    public View$OnAttachStateChangeListenerC6598a(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo20392a(ViewGroup viewGroup, EtapBanner etapBanner) {
        etapBanner.setAdListener(new C6599a(this));
        viewGroup.removeAllViews();
        etapBanner.getView().addOnAttachStateChangeListener(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        viewGroup.addView(etapBanner.getView(), layoutParams);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        String str = "view :" + view;
        view.removeOnAttachStateChangeListener(this);
        this.f20386c.mo3231b(this.f20385b, 0);
    }
}
