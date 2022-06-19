package p193e.p194a.p912i4.p914y;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p372b0.p430q.C8602m;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import w3.c.a.a.a.h;
/* renamed from: e.a.i4.y.e */
/* loaded from: classes11-dex2jar.jar:e/a/i4/y/e.class */
public class C15309e extends AbstractC13209t<C15310a> {

    /* renamed from: b */
    public List<InternalTruecallerNotification> f43565b;

    /* renamed from: c */
    public final C21853e f43566c;

    /* renamed from: d */
    public final Context f43567d;

    /* renamed from: e.a.i4.y.e$a */
    /* loaded from: classes11-dex2jar.jar:e/a/i4/y/e$a.class */
    public static class C15310a extends AbstractC13209t.C13211b {

        /* renamed from: b */
        public TextView f43568b;

        /* renamed from: c */
        public TextView f43569c;

        /* renamed from: d */
        public TextView f43570d;

        /* renamed from: e */
        public ImageView f43571e;

        public C15310a(View view) {
            super(view);
            this.f43568b = (TextView) view.findViewById(2131364642);
            this.f43569c = (TextView) view.findViewById(C2752R.C2754id.listItemDetails);
            this.f43571e = (ImageView) view.findViewById(C2752R.C2754id.listItemIcon);
            this.f43570d = (TextView) view.findViewById(C2752R.C2754id.listItemTimestamp);
        }
    }

    public C15309e(Context context, C21853e c21853e) {
        this.f43567d = context;
        this.f43566c = c21853e;
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: e */
    public void mo10012e(C15310a c15310a, int i) {
        C15310a c15310a2 = c15310a;
        InternalTruecallerNotification internalTruecallerNotification = this.f43565b.get(i);
        if (!internalTruecallerNotification.f38328g) {
            internalTruecallerNotification.m34838u(this.f43567d);
        }
        C19045j0.m14196t(c15310a2.f43568b, internalTruecallerNotification.f38329h);
        C19045j0.m14196t(c15310a2.f43569c, internalTruecallerNotification.f38330i);
        Long m34843p = internalTruecallerNotification.m34843p();
        boolean z = false;
        c15310a2.f43570d.setVisibility(0);
        c15310a2.f43570d.setText(C8602m.m28247k(this.f43567d, TimeUnit.SECONDS.toMillis(m34843p.longValue())));
        int m34841r = internalTruecallerNotification.m34841r();
        if (h.m(internalTruecallerNotification.m34845n())) {
            this.f43566c.m8964B(internalTruecallerNotification.m34845n()).mo8097k(m34841r).mo8102f().m8427O(c15310a2.f43571e);
        } else {
            c15310a2.f43571e.setImageResource(m34841r);
        }
        if (internalTruecallerNotification.f14112k == InternalTruecallerNotification.NotificationState.VIEWED) {
            z = true;
        }
        TextView textView = c15310a2.f43569c;
        boolean z2 = !z;
        textView.setTextColor(C19291g.m13612L(this.f43567d, z2 ? 2130970253 : 2130970255));
        C18334g0.m15221k(textView, z2);
        TextView textView2 = c15310a2.f43570d;
        textView2.setTextColor(C19291g.m13612L(this.f43567d, z2 ? 2130970253 : 2130970255));
        C18334g0.m15221k(textView2, z2);
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: g */
    public C15310a mo10011g(ViewGroup viewGroup, int i) {
        return new C15310a(LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.list_item_notification, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        List<InternalTruecallerNotification> list = this.f43565b;
        return list == null ? 0 : list.size();
    }
}
