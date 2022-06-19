package p193e.p194a.p947k.p948a.p954e.p957m;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.manageincomingvideo.managepreferences.ManagePreferencesView;
import java.util.Objects;
import p193e.p194a.p947k.p972m.C16147u;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.k.a.e.m.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/m/b.class */
public final class C15684b extends m implements a<C16147u> {

    /* renamed from: b */
    public final /* synthetic */ ManagePreferencesView f44256b;

    /* renamed from: c */
    public final /* synthetic */ Context f44257c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15684b(ManagePreferencesView managePreferencesView, Context context) {
        super(0);
        this.f44256b = managePreferencesView;
        this.f44257c = context;
    }

    public Object invoke() {
        LayoutInflater from = LayoutInflater.from(this.f44257c);
        ManagePreferencesView managePreferencesView = this.f44256b;
        Objects.requireNonNull(managePreferencesView, "parent");
        from.inflate(C4718R.layout.view_video_caller_id_manage_preferences, managePreferencesView);
        int i = C4718R.C4720id.contactDesc;
        TextView textView = (TextView) managePreferencesView.findViewById(i);
        if (textView != null) {
            i = C4718R.C4720id.contactDivider;
            View findViewById = managePreferencesView.findViewById(i);
            if (findViewById != null) {
                i = C4718R.C4720id.contactOptionGroup;
                Group group = (Group) managePreferencesView.findViewById(i);
                if (group != null) {
                    i = C4718R.C4720id.contactOverlay;
                    View findViewById2 = managePreferencesView.findViewById(i);
                    if (findViewById2 != null) {
                        i = C4718R.C4720id.contactRadioBtn;
                        RadioButton radioButton = (RadioButton) managePreferencesView.findViewById(i);
                        if (radioButton != null) {
                            i = C4718R.C4720id.contactTitle;
                            TextView textView2 = (TextView) managePreferencesView.findViewById(i);
                            if (textView2 != null) {
                                i = C4718R.C4720id.everyOneOverlay;
                                View findViewById3 = managePreferencesView.findViewById(i);
                                if (findViewById3 != null) {
                                    i = C4718R.C4720id.everyOneRadioBtn;
                                    RadioButton radioButton2 = (RadioButton) managePreferencesView.findViewById(i);
                                    if (radioButton2 != null) {
                                        i = C4718R.C4720id.everyOneTitle;
                                        TextView textView3 = (TextView) managePreferencesView.findViewById(i);
                                        if (textView3 != null) {
                                            i = C4718R.C4720id.everyoneDesc;
                                            TextView textView4 = (TextView) managePreferencesView.findViewById(i);
                                            if (textView4 != null) {
                                                i = C4718R.C4720id.everyoneDivider;
                                                View findViewById4 = managePreferencesView.findViewById(i);
                                                if (findViewById4 != null) {
                                                    i = C4718R.C4720id.everyoneOptionGroup;
                                                    Group group2 = (Group) managePreferencesView.findViewById(i);
                                                    if (group2 != null) {
                                                        i = C4718R.C4720id.noOneDesc;
                                                        TextView textView5 = (TextView) managePreferencesView.findViewById(i);
                                                        if (textView5 != null) {
                                                            i = C4718R.C4720id.noOneOverlay;
                                                            View findViewById5 = managePreferencesView.findViewById(i);
                                                            if (findViewById5 != null) {
                                                                i = C4718R.C4720id.noOneRadioBtn;
                                                                RadioButton radioButton3 = (RadioButton) managePreferencesView.findViewById(i);
                                                                if (radioButton3 != null) {
                                                                    i = C4718R.C4720id.noOneTitle;
                                                                    TextView textView6 = (TextView) managePreferencesView.findViewById(i);
                                                                    if (textView6 != null) {
                                                                        return new C16147u(managePreferencesView, textView, findViewById, group, findViewById2, radioButton, textView2, findViewById3, radioButton2, textView3, textView4, findViewById4, group2, textView5, findViewById5, radioButton3, textView6);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(managePreferencesView.getResources().getResourceName(i)));
    }
}
