package p193e.p194a.p619d.p628c.p633a0.p634l;

import android.view.View;
import android.widget.RadioGroup;
import androidx.fragment.app.Fragment;
import com.truecaller.voip.p192ui.incoming.audioroutepicker.AudioRouteViewItem;
/* renamed from: e.a.d.c.a0.l.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/l/b.class */
public final class View$OnClickListenerC11266b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ AudioRouteViewItem f33221a;

    /* renamed from: b */
    public final /* synthetic */ C11267c f33222b;

    public View$OnClickListenerC11266b(AudioRouteViewItem audioRouteViewItem, C11267c c11267c, RadioGroup radioGroup, AudioRouteViewItem audioRouteViewItem2) {
        this.f33221a = audioRouteViewItem;
        this.f33222b = c11267c;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC11265a parentFragment = this.f33222b.getParentFragment();
        Fragment fragment = parentFragment;
        if (!(parentFragment instanceof AbstractC11265a)) {
            fragment = null;
        }
        AbstractC11265a abstractC11265a = fragment;
        if (abstractC11265a != null) {
            abstractC11265a.mo24938Er(this.f33221a);
        }
    }
}
