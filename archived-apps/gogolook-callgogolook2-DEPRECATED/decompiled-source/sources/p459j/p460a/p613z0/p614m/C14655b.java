package p459j.p460a.p613z0.p614m;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p463b0.C11142n;
import p459j.p460a.p582w0.C14026i0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018�� \u00142\u00020\u0001:\u0001\u0014B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0003H\u0002J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u0003H\u0002R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/view/adapter/CallLogFilterPopMenuAdapter;", "Lgogolook/callgogolook2/view/adapter/AutoSizingMenuAdapter;", "currentFilter", "", "list", "", "", "defaultIndex", "(ILjava/util/List;I)V", "mCurrentFilter", "filterChange", "", "position", "getView", "Landroid/view/View;", "convertView", "parent", "Landroid/view/ViewGroup;", "isCheckBoxChecked", "", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.z0.m.b */
/* loaded from: classes3-dex2jar.jar:j/a/z0/m/b.class */
public final class C14655b extends AbstractC14649a {

    /* renamed from: g */
    public int f32737g;

    /* renamed from: j.a.z0.m.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/m/b$a.class */
    public static final class C14656a {
        public C14656a() {
        }

        public /* synthetic */ C14656a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.z0.m.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/m/b$b.class */
    public static final class View$OnClickListenerC14657b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f32739b;

        /* renamed from: c */
        public final /* synthetic */ ImageView f32740c;

        public View$OnClickListenerC14657b(int i, ImageView imageView) {
            this.f32739b = i;
            this.f32740c = imageView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14655b.this.m920a(this.f32739b);
            ImageView imageView = this.f32740c;
            C15149k.m383a((Object) imageView, "ivCheckBox");
            ImageView imageView2 = this.f32740c;
            C15149k.m383a((Object) imageView2, "ivCheckBox");
            int i = 4;
            if (imageView2.getVisibility() == 4) {
                i = 0;
            }
            imageView.setVisibility(i);
        }
    }

    static {
        new C14656a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14655b(int i, List<String> list, int i2) {
        super(list, i2);
        C15149k.m377b(list, "list");
        this.f32737g = i;
    }

    /* renamed from: a */
    public final void m920a(int i) {
        int a = C11142n.m10205a(i);
        int c = C11142n.m10200c();
        boolean b = C11142n.m10201b(c, a);
        int c2 = b ? C11142n.m10198c(c, a) : C11142n.m10204a(c, a);
        if (c2 != c) {
            C11142n.m10194g(c2);
            int a2 = C11142n.m10205a(i);
            int i2 = 2;
            if (a2 == 1) {
                i2 = b ? 5 : 1;
            } else if (a2 != 2) {
                i2 = a2 != 4 ? 0 : b ? 7 : 3;
            } else if (b) {
                i2 = 6;
            }
            C14289m.m1897a((Integer) null, (Integer) 4, (Integer) null, (Integer) 1, (Integer) null, Integer.valueOf(i2));
            C14037j3.m2731a().mo2704a(new C14026i0());
        }
    }

    /* renamed from: b */
    public final boolean m918b(int i) {
        return C11142n.m10201b(this.f32737g, C11142n.m10205a(i));
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        Context context = viewGroup.getContext();
        RelativeLayout relativeLayout = view;
        if (view == null) {
            RelativeLayout relativeLayout2 = new RelativeLayout(context);
            LayoutInflater.from(context).inflate(R$layout.call_log_filter_item_layout, relativeLayout2);
            relativeLayout = relativeLayout2;
        }
        View findViewById = relativeLayout.findViewById(R$id.mTvFilterItem);
        if (findViewById != null) {
            ((TextView) findViewById).setText(m931a().get(i));
            ImageView imageView = (ImageView) relativeLayout.findViewById(R$id.mIvCheckBox);
            C15149k.m383a((Object) imageView, "ivCheckBox");
            imageView.setVisibility(m918b(i) ? 0 : 4);
            LinearLayout linearLayout = (LinearLayout) relativeLayout.findViewById(R$id.item_layout);
            C15149k.m383a((Object) linearLayout, "llItemLayout");
            linearLayout.setTag(Integer.valueOf(i));
            linearLayout.setOnClickListener(new View$OnClickListenerC14657b(i, imageView));
            View findViewById2 = relativeLayout.findViewById(R$id.vTopDummy);
            C15149k.m383a((Object) findViewById2, "view.findViewById<View>(R.id.vTopDummy)");
            int i2 = 8;
            findViewById2.setVisibility(i == 0 ? 0 : 8);
            View findViewById3 = relativeLayout.findViewById(R$id.vBottomDummy);
            C15149k.m383a((Object) findViewById3, "view.findViewById<View>(R.id.vBottomDummy)");
            if (i == getCount() - 1) {
                i2 = 0;
            }
            findViewById3.setVisibility(i2);
            return relativeLayout;
        }
        throw new C14986p("null cannot be cast to non-null type android.widget.TextView");
    }
}
