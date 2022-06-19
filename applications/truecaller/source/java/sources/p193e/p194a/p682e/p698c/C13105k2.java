package p193e.p194a.p682e.p698c;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.tag.TagView;
import com.truecaller.p183ui.view.TintedImageView;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p682e.p699c2.AbstractC13195h0;
/* renamed from: e.a.e.c.k2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/k2.class */
public class C13105k2 extends AbstractC13195h0 implements AbstractC13087h1 {

    /* renamed from: c */
    public ImageView f38018c;

    /* renamed from: d */
    public TextView f38019d;

    /* renamed from: e */
    public TextView f38020e;

    /* renamed from: f */
    public TextView f38021f;

    /* renamed from: g */
    public ViewGroup f38022g;

    /* renamed from: h */
    public ViewGroup f38023h;

    /* renamed from: i */
    public AvatarXView f38024i;

    /* renamed from: j */
    public View f38025j;

    /* renamed from: k */
    public View f38026k;

    /* renamed from: l */
    public ImageButton f38027l;

    /* renamed from: m */
    public TextView f38028m;

    /* renamed from: n */
    public TintedImageView f38029n;

    /* renamed from: o */
    public Drawable f38030o;

    /* renamed from: p */
    public Drawable f38031p;

    /* renamed from: q */
    public Drawable f38032q;

    /* renamed from: r */
    public AbstractC15539j2 f38033r;

    /* renamed from: s */
    public C13171y1 f38034s;

    public C13105k2(Context context) {
        super(context, null, 0);
    }

    /* renamed from: a */
    public final void m22057a(ViewGroup viewGroup, int i) {
        viewGroup.removeAllViews();
        TagView tagView = new TagView(getContext(), false, false);
        tagView.setText(getResources().getString(i));
        tagView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, this.f38032q, (Drawable) null);
        Integer num = this.f38034s.f38280e;
        if (num != null) {
            tagView.setTextColor(num.intValue());
        }
        Integer num2 = this.f38034s.f38281f;
        if (num2 != null) {
            tagView.setBackgroundColor(num2.intValue());
        }
        viewGroup.addView(tagView);
        viewGroup.setVisibility(0);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13087h1
    public void setAppearance(C13171y1 c13171y1) {
        this.f38034s = c13171y1;
        this.f38032q = C8605o.m28233g(getContext(), C2752R.C2753drawable.ic_add_circle_white_24dp, c13171y1.f38279d);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13087h1
    public void setOnAddNameClickListener(View.OnClickListener onClickListener) {
        this.f38022g.setOnClickListener(onClickListener);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13087h1
    public void setOnSuggestNameButtonClickListener(View.OnClickListener onClickListener) {
        this.f38027l.setOnClickListener(onClickListener);
    }

    @Override // p193e.p194a.p682e.p698c.AbstractC13087h1
    public void setOnTagClickListener(View.OnClickListener onClickListener) {
        this.f38023h.setOnClickListener(onClickListener);
    }
}
