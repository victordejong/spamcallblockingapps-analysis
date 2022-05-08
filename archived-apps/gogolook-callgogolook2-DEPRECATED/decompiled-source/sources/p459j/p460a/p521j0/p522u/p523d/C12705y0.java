package p459j.p460a.p521j0.p522u.p523d;

import android.content.Context;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.view.ShimmerTextView;
import gogolook.callgogolook2.view.ViewPager;
import java.util.ArrayList;
import p459j.p460a.p613z0.AbstractC14629i;
/* renamed from: j.a.j0.u.d.y0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/y0.class */
public class C12705y0 extends AbstractC14629i {

    /* renamed from: a */
    public ArrayList<View> f28666a = new ArrayList<>();

    /* renamed from: b */
    public View f28667b;

    public C12705y0(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R$layout.calldialog_standard_block_red, (ViewGroup) null);
        View inflate2 = LayoutInflater.from(context).inflate(R$layout.calldialog_standard_block_action, (ViewGroup) null);
        this.f28666a.add(inflate);
        this.f28666a.add(inflate2);
        inflate2.findViewById(R$id.ll_block_action);
        this.f28667b = inflate.findViewById(R$id.call_slide_to_block);
        ShimmerTextView shimmerTextView = (ShimmerTextView) inflate2.findViewById(R$id.st_block_action);
        shimmerTextView.m25891b(-13421773);
        shimmerTextView.m25899a(14.0f);
        shimmerTextView.m25893a(m966a(R$string.calldialog_slidetoblock));
        shimmerTextView.m25897a(R$drawable.call_direction_icon, 19.0f, 20.0f, 3.0f, 0.0f, 3.0f, 2.0f);
        shimmerTextView.m25898a(180);
        shimmerTextView.m25888d(35);
        shimmerTextView.m25889c(-4079167);
        shimmerTextView.m25892b();
        m5507a(0.71f);
    }

    @Override // p459j.p460a.p613z0.AbstractC14629i
    /* renamed from: a */
    public int mo967a() {
        return this.f28666a.size();
    }

    @Override // p459j.p460a.p613z0.AbstractC14629i
    /* renamed from: a */
    public Object mo963a(View view, int i) {
        View view2 = this.f28666a.get(i);
        ((ViewPager) view).addView(view2);
        return view2;
    }

    /* renamed from: a */
    public void m5507a(float f) {
        this.f28667b.setAlpha(f);
    }

    @Override // p459j.p460a.p613z0.AbstractC14629i
    /* renamed from: a */
    public void mo965a(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // p459j.p460a.p613z0.AbstractC14629i
    /* renamed from: a */
    public void mo964a(View view) {
    }

    @Override // p459j.p460a.p613z0.AbstractC14629i
    /* renamed from: a */
    public void mo962a(View view, int i, Object obj) {
        ((ViewPager) view).removeView((View) obj);
    }

    @Override // p459j.p460a.p613z0.AbstractC14629i
    /* renamed from: a */
    public boolean mo961a(View view, Object obj) {
        return view == obj;
    }

    @Override // p459j.p460a.p613z0.AbstractC14629i
    /* renamed from: b */
    public Parcelable mo959b() {
        return null;
    }

    @Override // p459j.p460a.p613z0.AbstractC14629i
    /* renamed from: b */
    public void mo958b(View view) {
    }
}
