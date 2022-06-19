package p193e.p194a.p773g.p785j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.acs.C2778R;
import com.truecaller.acs.util.VideoCallerIdAcsMoreOption;
import com.truecaller.videocallerid.C4718R;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p947k.p972m.C16145s;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.g.j.q0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/q0.class */
public final class C14303q0 {

    /* renamed from: a */
    public PopupWindow f41376a;

    /* renamed from: b */
    public final AbstractC16111h f41377b;

    /* renamed from: e.a.g.j.q0$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/j/q0$a.class */
    public static final class View$OnClickListenerC14304a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ FragmentManager f41379b;

        /* renamed from: c */
        public final /* synthetic */ String f41380c;

        /* renamed from: d */
        public final /* synthetic */ l f41381d;

        /* renamed from: e */
        public final /* synthetic */ List f41382e;

        /* renamed from: f */
        public final /* synthetic */ View f41383f;

        public View$OnClickListenerC14304a(Context context, boolean z, C16145s c16145s, FragmentManager fragmentManager, String str, l lVar, List list, View view) {
            C14303q0.this = r4;
            this.f41379b = fragmentManager;
            this.f41380c = str;
            this.f41381d = lVar;
            this.f41382e = list;
            this.f41383f = view;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14303q0.this.f41377b.mo17824v(this.f41379b, this.f41380c);
            this.f41381d.d(VideoCallerIdAcsMoreOption.REPORT);
        }
    }

    /* renamed from: e.a.g.j.q0$b */
    /* loaded from: classes4-dex2jar.jar:e/a/g/j/q0$b.class */
    public static final class View$OnClickListenerC14305b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ FragmentManager f41385b;

        /* renamed from: c */
        public final /* synthetic */ String f41386c;

        /* renamed from: d */
        public final /* synthetic */ l f41387d;

        /* renamed from: e */
        public final /* synthetic */ List f41388e;

        /* renamed from: f */
        public final /* synthetic */ View f41389f;

        /* renamed from: e.a.g.j.q0$b$a */
        /* loaded from: classes4-dex2jar.jar:e/a/g/j/q0$b$a.class */
        public static final class C14306a extends m implements l<Boolean, s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C14306a() {
                super(1);
                View$OnClickListenerC14305b.this = r4;
            }

            /* renamed from: d */
            public Object m20276d(Object obj) {
                ((Boolean) obj).booleanValue();
                View$OnClickListenerC14305b.this.f41387d.d(VideoCallerIdAcsMoreOption.HIDE);
                return s.a;
            }
        }

        public View$OnClickListenerC14305b(Context context, boolean z, C16145s c16145s, FragmentManager fragmentManager, String str, l lVar, List list, View view) {
            C14303q0.this = r4;
            this.f41385b = fragmentManager;
            this.f41386c = str;
            this.f41387d = lVar;
            this.f41388e = list;
            this.f41389f = view;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14303q0.this.f41377b.mo17859I(this.f41385b, this.f41386c, this.f41388e, new C14306a());
        }
    }

    @Inject
    public C14303q0(AbstractC16111h abstractC16111h) {
        s1.z.c.l.e(abstractC16111h, "videoCallerId");
        this.f41377b = abstractC16111h;
    }

    /* renamed from: a */
    public void m20278a() {
        PopupWindow popupWindow = this.f41376a;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        this.f41376a = null;
    }

    /* renamed from: b */
    public void m20277b(FragmentManager fragmentManager, View view, List<String> list, String str, l<? super VideoCallerIdAcsMoreOption, s> lVar) {
        s1.z.c.l.e(fragmentManager, "fragmentManager");
        s1.z.c.l.e(view, "anchor");
        s1.z.c.l.e(list, "numbers");
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        s1.z.c.l.e(lVar, "onItemClicked");
        Context context = view.getContext();
        PopupWindow popupWindow = this.f41376a;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean z = view.getLayoutDirection() == 0;
        LayoutInflater from = LayoutInflater.from(context);
        s1.z.c.l.d(from, "LayoutInflater.from(context)");
        View inflate = C17422k.m16050u0(from, true).inflate(C4718R.layout.video_caller_id_acs_more_options, (ViewGroup) null, false);
        int i = C4718R.C4720id.hideVidTv;
        TextView textView = (TextView) inflate.findViewById(i);
        if (textView != null) {
            i = C4718R.C4720id.reportVidTv;
            TextView textView2 = (TextView) inflate.findViewById(i);
            if (textView2 != null) {
                C16145s c16145s = new C16145s((CardView) inflate, textView, textView2);
                s1.z.c.l.d(c16145s, "VideoCallerIdAcsMoreOpti…          false\n        )");
                PopupWindow popupWindow2 = new PopupWindow((View) c16145s.f45543a, -2, -2, true);
                s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                Resources resources = context.getResources();
                int i2 = C2778R.dimen.vid_acs_popup_margins;
                float dimension = resources.getDimension(i2);
                float dimension2 = context.getResources().getDimension(C2778R.dimen.vid_acs_popup_width);
                float dimension3 = context.getResources().getDimension(i2);
                float f = dimension;
                if (z) {
                    f = (-dimension2) - dimension;
                }
                popupWindow2.setBackgroundDrawable(new ColorDrawable(0));
                TextView textView3 = c16145s.f45545c;
                s1.z.c.l.d(textView3, "reportVidTv");
                int i3 = C2778R.string.vid_report_acs_more;
                int i4 = C2778R.string.video_caller_id;
                textView3.setText(context.getString(i3, context.getString(i4)));
                c16145s.f45545c.setOnClickListener(new View$OnClickListenerC14304a(context, z, c16145s, fragmentManager, str, lVar, list, view));
                TextView textView4 = c16145s.f45544b;
                s1.z.c.l.d(textView4, "hideVidTv");
                textView4.setText(context.getString(C2778R.string.vid_hide_video_caller_id, context.getString(i4)));
                c16145s.f45544b.setOnClickListener(new View$OnClickListenerC14305b(context, z, c16145s, fragmentManager, str, lVar, list, view));
                popupWindow2.showAsDropDown(view, (int) f, (-view.getHeight()) - ((int) dimension3), 8388613);
                this.f41376a = popupWindow2;
                return;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }
}
