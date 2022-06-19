package p193e.p194a.p437c.p438a.p487k.p491d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import javax.inject.Inject;
import p1727n3.p1744b0.p1745a.AbstractC25615p;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8659a;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8855b;
import p193e.p194a.p437c.p438a.p477g.C9064q1;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.c.a.k.d.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/d/b.class */
public final class C9215b extends AbstractC25615p<AdapterItem, RecyclerView.AbstractC0313c0> {

    /* renamed from: a */
    public AbstractC9214a f28000a;

    /* renamed from: b */
    public final AbstractC9114h f28001b;

    /* renamed from: c */
    public final AbstractC10258h f28002c;

    /* renamed from: d */
    public final AbstractC8852j f28003d;

    /* renamed from: e */
    public final C20592g f28004e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9215b(AbstractC9114h abstractC9114h, AbstractC10258h abstractC10258h, AbstractC8852j abstractC8852j, C20592g c20592g) {
        super(new C8855b());
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(abstractC10258h, "messageLocator");
        l.e(abstractC8852j, "toolTipController");
        l.e(c20592g, "featuresRegistry");
        this.f28001b = abstractC9114h;
        this.f28002c = abstractC10258h;
        this.f28003d = abstractC8852j;
        this.f28004e = c20592g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        int i2;
        AdapterItem item = getItem(i);
        if (item instanceof AdapterItem.C4117i) {
            i2 = C4078R.layout.reminder_title_item;
        } else if (!(item instanceof AdapterItem.C4118j)) {
            throw new IllegalArgumentException("ViewHolder type not supported");
        } else {
            if (!(((AdapterItem.C4118j) item).f12882a instanceof AbstractC9235b.C9238c)) {
                throw new IllegalArgumentException("ViewHolder type not supported");
            }
            i2 = C4078R.layout.marked_important_item;
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0080, code lost:
        if (r24 != null) goto L16;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.AbstractC0313c0 r22, int r23) {
        /*
            Method dump skipped, instructions count: 875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p487k.p491d.C9215b.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$c0, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C9218e c9218e;
        l.e(viewGroup, "parent");
        int i2 = C4078R.layout.marked_important_item;
        if (i == i2) {
            l.e(viewGroup, "parent");
            Context context = viewGroup.getContext();
            l.d(context, "parent.context");
            View inflate = LayoutInflater.from(C10480a.m26090B0(context)).inflate(i2, viewGroup, false);
            int i3 = C4078R.C4080id.contentDate;
            TextView textView = (TextView) inflate.findViewById(i3);
            if (textView != null) {
                i3 = C4078R.C4080id.contentText;
                TextView textView2 = (TextView) inflate.findViewById(i3);
                if (textView2 != null) {
                    i3 = C4078R.C4080id.contentTitle;
                    TextView textView3 = (TextView) inflate.findViewById(i3);
                    if (textView3 != null) {
                        i3 = C4078R.C4080id.dividerView;
                        View findViewById = inflate.findViewById(i3);
                        if (findViewById != null) {
                            i3 = C4078R.C4080id.dummyView;
                            View findViewById2 = inflate.findViewById(i3);
                            if (findViewById2 != null) {
                                i3 = C4078R.C4080id.guideline;
                                Guideline guideline = (Guideline) inflate.findViewById(i3);
                                if (guideline != null) {
                                    i3 = C4078R.C4080id.icon;
                                    AvatarXView avatarXView = (AvatarXView) inflate.findViewById(i3);
                                    if (avatarXView != null) {
                                        i3 = C4078R.C4080id.subTitleIcon;
                                        ImageView imageView = (ImageView) inflate.findViewById(i3);
                                        if (imageView != null) {
                                            i3 = C4078R.C4080id.unMarkImportantButton;
                                            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) inflate.findViewById(i3);
                                            if (appCompatImageButton != null) {
                                                C9064q1 c9064q1 = new C9064q1((ConstraintLayout) inflate, textView, textView2, textView3, findViewById, findViewById2, guideline, avatarXView, imageView, appCompatImageButton);
                                                l.d(c9064q1, "MarkedImportantItemBindi…rapper()), parent, false)");
                                                c9218e = new C9218e(c9064q1, this.f28001b, this.f28000a, this.f28002c, this.f28004e);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
        } else if (i != C4078R.layout.reminder_title_item) {
            throw new IllegalArgumentException("Not implemented for this type");
        } else {
            c9218e = new C8659a(C8659a.m28133V4(viewGroup), this.f28003d, this.f28001b);
        }
        return c9218e;
    }
}
