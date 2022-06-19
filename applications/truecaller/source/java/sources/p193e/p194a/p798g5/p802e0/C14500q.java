package p193e.p194a.p798g5.p802e0;

import android.animation.ValueAnimator;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.common.p156ui.FlowLayout;
import com.truecaller.common.tag.TagView;
import java.util.List;
import java.util.Objects;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p798g5.p801d0.C14471b;
import p193e.p194a.p798g5.p802e0.p803u.C14512g;
import s1.a.l;
import s1.f0.r;
import s1.o;
/* renamed from: e.a.g5.e0.q */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/q.class */
public final class C14500q<T> implements AbstractC27012l0<o<? extends String, ? extends List<? extends C8551c>, ? extends Boolean>> {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC14484i f41742a;

    public C14500q(View$OnClickListenerC14484i view$OnClickListenerC14484i) {
        this.f41742a = view$OnClickListenerC14484i;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(o<? extends String, ? extends List<? extends C8551c>, ? extends Boolean> oVar) {
        C8551c availableTag;
        C8551c m34620d;
        o<? extends String, ? extends List<? extends C8551c>, ? extends Boolean> oVar2 = oVar;
        CharSequence charSequence = (CharSequence) oVar2.a;
        if (!(charSequence == null || r.p(charSequence))) {
            View$OnClickListenerC14484i view$OnClickListenerC14484i = this.f41742a;
            String str = (String) oVar2.a;
            List<C8551c> list = (List) oVar2.b;
            l[] lVarArr = View$OnClickListenerC14484i.f41709t;
            Objects.requireNonNull(view$OnClickListenerC14484i);
            boolean isEmpty = list.isEmpty();
            C14471b m20054RA = view$OnClickListenerC14484i.m20054RA();
            ImageView imageView = m20054RA.f41674h;
            s1.z.c.l.d(imageView, "noResultIcon");
            C19286f.m13683U(imageView, isEmpty);
            TextView textView = m20054RA.f41673g;
            s1.z.c.l.d(textView, "noResult");
            C19286f.m13683U(textView, isEmpty);
            RecyclerView recyclerView = m20054RA.f41667a;
            s1.z.c.l.d(recyclerView, "categoryList");
            C19286f.m13683U(recyclerView, !isEmpty);
            FlowLayout flowLayout = m20054RA.f41676j;
            s1.z.c.l.d(flowLayout, "tagContainerLevel1");
            C19286f.m13683U(flowLayout, false);
            FlowLayout flowLayout2 = m20054RA.f41677k;
            s1.z.c.l.d(flowLayout2, "tagContainerLevel2");
            C19286f.m13683U(flowLayout2, false);
            if (isEmpty) {
                return;
            }
            C14512g c14512g = view$OnClickListenerC14484i.f41713h;
            if (c14512g != null) {
                c14512g.m20044e(str, list);
                return;
            }
            view$OnClickListenerC14484i.f41713h = new C14512g(null, str, list, (ComponentCallbacks2C22236i) view$OnClickListenerC14484i.f41718m.getValue(), new C14493j(view$OnClickListenerC14484i), 1);
            RecyclerView recyclerView2 = view$OnClickListenerC14484i.m20054RA().f41667a;
            s1.z.c.l.d(recyclerView2, "binding.categoryList");
            recyclerView2.setAdapter(view$OnClickListenerC14484i.f41713h);
            return;
        }
        View$OnClickListenerC14484i view$OnClickListenerC14484i2 = this.f41742a;
        l[] lVarArr2 = View$OnClickListenerC14484i.f41709t;
        C14471b m20054RA2 = view$OnClickListenerC14484i2.m20054RA();
        ImageView imageView2 = m20054RA2.f41674h;
        s1.z.c.l.d(imageView2, "noResultIcon");
        C19286f.m13683U(imageView2, false);
        TextView textView2 = m20054RA2.f41673g;
        s1.z.c.l.d(textView2, "noResult");
        C19286f.m13683U(textView2, false);
        RecyclerView recyclerView3 = m20054RA2.f41667a;
        s1.z.c.l.d(recyclerView3, "categoryList");
        C19286f.m13683U(recyclerView3, false);
        View$OnClickListenerC14484i view$OnClickListenerC14484i3 = this.f41742a;
        if (view$OnClickListenerC14484i3.f41714i == null) {
            List<C8551c> list2 = (List) oVar2.b;
            boolean booleanValue = ((Boolean) oVar2.c).booleanValue();
            C14471b m20054RA3 = view$OnClickListenerC14484i3.m20054RA();
            FlowLayout flowLayout3 = m20054RA3.f41677k;
            s1.z.c.l.d(flowLayout3, "tagContainerLevel2");
            C19286f.m13683U(flowLayout3, false);
            FlowLayout flowLayout4 = m20054RA3.f41676j;
            s1.z.c.l.d(flowLayout4, "tagContainerLevel1");
            C19286f.m13683U(flowLayout4, true);
            FlowLayout flowLayout5 = m20054RA3.f41676j;
            s1.z.c.l.d(flowLayout5, "tagContainerLevel1");
            view$OnClickListenerC14484i3.f41714i = view$OnClickListenerC14484i3.m20055QA(flowLayout5, list2, booleanValue);
            return;
        }
        List<C8551c> list3 = (List) oVar2.b;
        boolean booleanValue2 = ((Boolean) oVar2.c).booleanValue();
        C14471b m20054RA4 = view$OnClickListenerC14484i3.m20054RA();
        FlowLayout flowLayout6 = m20054RA4.f41676j;
        s1.z.c.l.d(flowLayout6, "tagContainerLevel1");
        C19286f.m13683U(flowLayout6, false);
        FlowLayout flowLayout7 = m20054RA4.f41677k;
        s1.z.c.l.d(flowLayout7, "tagContainerLevel2");
        C19286f.m13683U(flowLayout7, true);
        FlowLayout flowLayout8 = m20054RA4.f41677k;
        s1.z.c.l.d(flowLayout8, "tagContainerLevel2");
        view$OnClickListenerC14484i3.f41715j = view$OnClickListenerC14484i3.m20055QA(flowLayout8, list3, booleanValue2);
        TagView tagView = view$OnClickListenerC14484i3.f41714i;
        if (tagView == null || (availableTag = tagView.getAvailableTag()) == null || (m34620d = view$OnClickListenerC14484i3.m20052TA().m34620d(availableTag.f26350a)) == null) {
            return;
        }
        AbstractC14537p abstractC14537p = view$OnClickListenerC14484i3.f41710e;
        if (abstractC14537p == null) {
            s1.z.c.l.l("tagDisplayUtil");
            throw null;
        }
        C8551c mo20024c = abstractC14537p.mo20024c(m34620d.f26350a);
        if (mo20024c != null) {
            m20054RA4.f41679m.setTag(mo20024c);
        }
        LinearLayout linearLayout = m20054RA4.f41672f;
        s1.z.c.l.d(linearLayout, "llHeaderTwo");
        if (linearLayout.getVisibility() == 0) {
            return;
        }
        ViewPropertyAnimator alpha = m20054RA4.f41676j.animate().translationYBy(view$OnClickListenerC14484i3.f41716k).alpha(0.0f);
        long j = 200;
        alpha.setDuration(j).setListener(view$OnClickListenerC14484i3.f41721p).start();
        FlowLayout flowLayout9 = m20054RA4.f41677k;
        s1.z.c.l.d(flowLayout9, "tagContainerLevel2");
        flowLayout9.setTranslationY(-view$OnClickListenerC14484i3.f41716k);
        FlowLayout flowLayout10 = m20054RA4.f41677k;
        s1.z.c.l.d(flowLayout10, "tagContainerLevel2");
        flowLayout10.setAlpha(0.0f);
        m20054RA4.f41677k.animate().translationY(0.0f).alpha(1.0f).setStartDelay(j).setDuration(j).setListener(view$OnClickListenerC14484i3.f41724s).start();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.5f, 1.1f, 1.0f);
        ofFloat.addUpdateListener(new C14499p(m20054RA4, view$OnClickListenerC14484i3, list3, booleanValue2));
        s1.z.c.l.d(ofFloat, "animator");
        ofFloat.setStartDelay(j);
        ofFloat.setDuration(300L);
        ofFloat.start();
    }
}
