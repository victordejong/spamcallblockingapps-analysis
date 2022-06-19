package p193e.p194a.p619d.p628c.p633a0.p634l;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.RadioGroup;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.p192ui.incoming.audioroutepicker.AudioRouteViewItem;
import e.m.a.g.e.e;
import java.util.ArrayList;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J+\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Le/a/d/c/a0/l/c;", "Le/m/a/g/e/e;", "", "getTheme", "()I", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "<init>", "()V", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d.c.a0.l.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/l/c.class */
public final class C11267c extends e {
    public int getTheme() {
        return C4781R.style.Theme_Design_BottomSheetDialog_Voip;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4781R.layout.fragment_voip_audio_route_picker, viewGroup, false);
        l.d(inflate, "inflater.inflate(R.layou…picker, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C11267c.super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            l.d(arguments, "arguments ?: return");
            ArrayList<AudioRouteViewItem> parcelableArrayList = arguments.getParcelableArrayList("Items");
            if (parcelableArrayList == null) {
                return;
            }
            l.d(parcelableArrayList, "arguments.getParcelableA…m>(PARAM_ITEMS) ?: return");
            AudioRouteViewItem audioRouteViewItem = (AudioRouteViewItem) arguments.getParcelable("SelectedItem");
            if (audioRouteViewItem == null) {
                return;
            }
            l.d(audioRouteViewItem, "arguments.getParcelable<…_SELECTED_ITEM) ?: return");
            View view2 = getView();
            View view3 = view2;
            if (!(view2 instanceof RadioGroup)) {
                view3 = null;
            }
            RadioGroup radioGroup = (RadioGroup) view3;
            if (radioGroup == null) {
                return;
            }
            radioGroup.removeAllViews();
            for (AudioRouteViewItem audioRouteViewItem2 : parcelableArrayList) {
                View inflate = getLayoutInflater().inflate(C4781R.layout.item_voip_audio_route_picker, (ViewGroup) radioGroup, false);
                ImageView imageView = (ImageView) inflate.findViewById(C4781R.C4783id.image_icon);
                CheckedTextView checkedTextView = (CheckedTextView) inflate.findViewById(C4781R.C4783id.text_name);
                imageView.setImageResource(audioRouteViewItem2.f16461b);
                l.d(checkedTextView, "nameTextView");
                checkedTextView.setText(audioRouteViewItem2.f16460a);
                if (l.a(audioRouteViewItem2, audioRouteViewItem)) {
                    checkedTextView.setChecked(true);
                }
                radioGroup.addView(inflate);
                inflate.setOnClickListener(new View$OnClickListenerC11266b(audioRouteViewItem2, this, radioGroup, audioRouteViewItem));
            }
        }
    }
}
