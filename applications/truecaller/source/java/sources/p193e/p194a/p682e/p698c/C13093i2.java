package p193e.p194a.p682e.p698c;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.C0032R;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.log.AssertionUtil;
import java.util.List;
import p1727n3.p1734b.p1743f.C25493b0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p997k3.p1000l.C16496d;
import s1.z.c.l;
/* renamed from: e.a.e.c.i2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/i2.class */
public class C13093i2 implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final C25493b0 f37989a;

    /* renamed from: e.a.e.c.i2$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/i2$a.class */
    public static class C13094a extends BaseAdapter {

        /* renamed from: a */
        public final List<C16496d> f37990a;

        public C13094a(List<C16496d> list) {
            this.f37990a = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f37990a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f37990a.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C13095b c13095b;
            if (view != null) {
                c13095b = (C13095b) view.getTag(C2752R.C2754id.tag_view_holder);
            } else {
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.menu_item_external_action, viewGroup, false);
                c13095b = new C13095b(inflate);
                inflate.setTag(C2752R.C2754id.tag_view_holder, c13095b);
            }
            C16496d c16496d = this.f37990a.get(i);
            c13095b.f37992b.setImageDrawable(c16496d.f46383b);
            c13095b.f37993c.setText(c16496d.f46382a);
            return c13095b.f37991a;
        }
    }

    /* renamed from: e.a.e.c.i2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/i2$b.class */
    public static class C13095b {

        /* renamed from: a */
        public final View f37991a;

        /* renamed from: b */
        public final ImageView f37992b;

        /* renamed from: c */
        public final TextView f37993c;

        public C13095b(View view) {
            this.f37991a = view;
            this.f37992b = (ImageView) view.findViewById(2131364203);
            this.f37993c = (TextView) view.findViewById(2131364536);
        }
    }

    public C13093i2(Context context, List<C16496d> list, View view) {
        C25493b0 c25493b0 = new C25493b0(context, null, C0032R.attr.listPopupWindowStyle, 0);
        this.f37989a = c25493b0;
        c25493b0.f71331p = view;
        c25493b0.m3398m(new C13094a(list));
        c25493b0.f71332q = this;
        c25493b0.m3395p(C8605o.m28238b(context, 240.0f));
        c25493b0.m3394q(true);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Context context = adapterView.getContext();
        C16496d c16496d = (C16496d) adapterView.getItemAtPosition(i);
        AbstractC19462a m8596m1 = C22128a.m8596m1();
        String str = c16496d.f46385d + StringConstant.SLASH + c16496d.f46384c.getType();
        l.e("detailView", AnalyticsConstants.CONTEXT);
        l.e(str, "subAction");
        l.e("externalApp", "action");
        m8596m1.mo13274b(new ViewActionEvent("externalApp", str, "detailView"));
        try {
            context.startActivity(c16496d.f46384c);
        } catch (ActivityNotFoundException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }
}
