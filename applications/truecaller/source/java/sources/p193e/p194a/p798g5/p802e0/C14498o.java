package p193e.p194a.p798g5.p802e0;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.truecaller.common.p156ui.FlowLayout;
import com.truecaller.tagger.C4604R;
import com.truecaller.tagger.tagPicker.TaggerViewModel;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.p801d0.C14471b;
import s1.a.l;
/* renamed from: e.a.g5.e0.o */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/o.class */
public final class C14498o<T> implements AbstractC27012l0<C14479d> {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC14484i f41739a;

    public C14498o(View$OnClickListenerC14484i view$OnClickListenerC14484i) {
        this.f41739a = view$OnClickListenerC14484i;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(C14479d c14479d) {
        C14479d c14479d2 = c14479d;
        C8551c c8551c = c14479d2.f41702b;
        C8551c c8551c2 = c8551c;
        if (c8551c != null) {
            c8551c2 = c8551c;
            if (c8551c.f26352c != 0) {
                View$OnClickListenerC14484i view$OnClickListenerC14484i = this.f41739a;
                l[] lVarArr = View$OnClickListenerC14484i.f41709t;
                c8551c2 = view$OnClickListenerC14484i.m20052TA().m34620d(c8551c.f26352c);
            }
        }
        View$OnClickListenerC14484i view$OnClickListenerC14484i2 = this.f41739a;
        l[] lVarArr2 = View$OnClickListenerC14484i.f41709t;
        C14471b m20054RA = view$OnClickListenerC14484i2.m20054RA();
        if (c8551c2 != null) {
            FlowLayout flowLayout = m20054RA.f41676j;
            s1.z.c.l.d(flowLayout, "tagContainerLevel1");
            flowLayout.setVisibility(4);
            LinearLayout linearLayout = m20054RA.f41672f;
            s1.z.c.l.d(linearLayout, "llHeaderTwo");
            linearLayout.setVisibility(0);
            FlowLayout flowLayout2 = m20054RA.f41677k;
            s1.z.c.l.d(flowLayout2, "tagContainerLevel2");
            flowLayout2.setVisibility(0);
            View$OnClickListenerC14484i view$OnClickListenerC14484i3 = this.f41739a;
            TaggerViewModel.m34621c(view$OnClickListenerC14484i3.m20052TA(), c8551c2.f26350a, null, true, 2);
            m20054RA.f41678l.setText(C4604R.string.TagsChooserEditTitle);
        } else {
            m20054RA.f41678l.setText(C4604R.string.TagsChooserChildTitle);
        }
        int i = c14479d2.f41701a;
        if (i == 3 || i == 4) {
            C14471b m20054RA2 = this.f41739a.m20054RA();
            TextView textView = m20054RA2.f41680n;
            s1.z.c.l.d(textView, "titleFirstLine");
            textView.setVisibility(4);
            TextView textView2 = m20054RA2.f41681o;
            s1.z.c.l.d(textView2, "titleSecondLine");
            textView2.setVisibility(8);
        }
    }
}
