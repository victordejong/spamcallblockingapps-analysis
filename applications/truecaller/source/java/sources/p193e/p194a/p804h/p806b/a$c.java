package p193e.p194a.p804h.p806b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.premium.PremiumLaunchContext;
import e.a.h.b.d.a.b.f;
import e.a.h.b.d.a.b.r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p258m.C6776a;
import p193e.p194a.p195a.p258m.C6781a3;
import p193e.p194a.p195a.p258m.C6782b;
import p193e.p194a.p195a.p258m.C6794d;
import p193e.p194a.p195a.p258m.C6835e;
import p193e.p194a.p195a.p258m.C6847f;
import p193e.p194a.p195a.p258m.C6868g;
import p193e.p194a.p195a.p258m.C6884h;
import p193e.p194a.p195a.p258m.C6890i;
import p193e.p194a.p195a.p258m.C6896j;
import p193e.p194a.p195a.p258m.C6904k;
import p193e.p194a.p195a.p258m.C6920m2;
import p193e.p194a.p195a.p258m.C6925n2;
import p193e.p194a.p195a.p258m.C6937q;
import p193e.p194a.p195a.p258m.C6942r;
import p193e.p194a.p195a.p258m.C6956t2;
import p193e.p194a.p195a.p258m.C6961u2;
import p193e.p194a.p195a.p258m.C6962v;
import p193e.p194a.p195a.p258m.C6965v2;
import p193e.p194a.p195a.p258m.C6966w;
import p193e.p194a.p195a.p258m.C6971w2;
import p193e.p194a.p195a.p258m.C6972x;
import p193e.p194a.p195a.p258m.C6976x2;
import p193e.p194a.p195a.p258m.C6981y2;
import p193e.p194a.p195a.p258m.C6986z2;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.h.b.a$c */
/* loaded from: classes6-dex2jar.jar:e/a/h/b/a$c.class */
public final class a$c extends m implements l<ViewGroup, RecyclerView.AbstractC0313c0> {

    /* renamed from: b */
    public final /* synthetic */ int f41855b;

    /* renamed from: c */
    public final /* synthetic */ Object f41856c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a$c(int i, Object obj) {
        super(1);
        this.f41855b = i;
        this.f41856c = obj;
    }

    /* renamed from: d */
    public final Object m20014d(Object obj) {
        switch (this.f41855b) {
            case 0:
                ViewGroup viewGroup = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup, "parent");
                View m13667l = C19286f.m13667l(viewGroup, C2752R.layout.layout_tcx_list_item_ongoing_flash, false, 2);
                a aVar = (a) this.f41856c;
                return new r(m13667l, aVar.x, aVar.K, aVar.R);
            case 1:
                ViewGroup viewGroup2 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup2, "parent");
                Context context = viewGroup2.getContext();
                s1.z.c.l.d(context, "parent.context");
                ListItemX listItemX = new ListItemX(context);
                listItemX.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                a aVar2 = (a) this.f41856c;
                return new f(listItemX, aVar2.x, aVar2.K, aVar2.R);
            case 2:
                ViewGroup viewGroup3 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup3, "parent");
                return new C6937q(C19286f.m13667l(viewGroup3, C2752R.layout.item_location_access_promo, false, 2), ((a) this.f41856c).x);
            case 3:
                ViewGroup viewGroup4 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup4, "parent");
                return new C6942r(C19286f.m13667l(viewGroup4, C2752R.layout.item_missed_call_notification_promo, false, 2), ((a) this.f41856c).x);
            case 4:
                ViewGroup viewGroup5 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup5, "parent");
                return new C6884h(C19286f.m13667l(viewGroup5, C2752R.layout.item_draw_permission_promo, false, 2), ((a) this.f41856c).x);
            case 5:
                ViewGroup viewGroup6 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup6, "parent");
                return new C6920m2(C19286f.m13667l(viewGroup6, C2752R.layout.item_request_do_not_disturb_access_promo, false, 2), ((a) this.f41856c).x);
            case 6:
                ViewGroup viewGroup7 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup7, "parent");
                return new C6956t2(C19286f.m13667l(viewGroup7, C2752R.layout.item_update_mobile_services_promo, false, 2), ((a) this.f41856c).x);
            case 7:
                ViewGroup viewGroup8 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup8, "parent");
                return new C6986z2(C19286f.m13667l(viewGroup8, C2752R.layout.item_whatasapp_notification_access_promo, false, 2), ((a) this.f41856c).x);
            case 8:
                ViewGroup viewGroup9 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup9, "parent");
                return new C6976x2(C19286f.m13667l(viewGroup9, C2752R.layout.item_whatasapp_call_detected_promo, false, 2), ((a) this.f41856c).x);
            case 9:
                ViewGroup viewGroup10 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup10, "parent");
                return new C6781a3(C19286f.m13667l(viewGroup10, C2752R.layout.item_who_viewed_me_promo_home_tab, false, 2), ((a) this.f41856c).x);
            case 10:
                ViewGroup viewGroup11 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup11, "parent");
                return new C6972x(C19286f.m13667l(viewGroup11, C2752R.layout.item_priority_call_awareness, false, 2), ((a) this.f41856c).x);
            case 11:
                ViewGroup viewGroup12 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup12, "parent");
                return new C6961u2(C19286f.m13667l(viewGroup12, C2752R.layout.item_verified_business_awareness, false, 2), ((a) this.f41856c).x);
            case 12:
                ViewGroup viewGroup13 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup13, "parent");
                return new C6794d(C19286f.m13667l(viewGroup13, C2752R.layout.item_caller_id_banner_variant_a, false, 2), ((a) this.f41856c).x);
            case 13:
                ViewGroup viewGroup14 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup14, "parent");
                return new C6962v(C19286f.m13667l(viewGroup14, C2752R.layout.item_personal_safety_promo, false, 2), ((a) this.f41856c).x);
            case 14:
                ViewGroup viewGroup15 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup15, "parent");
                return new C6966w(C19286f.m13667l(viewGroup15, C2752R.layout.item_premium_promo_home_tab, false, 2), ((a) this.f41856c).x);
            case 15:
                ViewGroup viewGroup16 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup16, "parent");
                return new C6925n2(C19286f.m13667l(viewGroup16, C2752R.layout.item_secondary_phone_number_promo, false, 2), ((a) this.f41856c).x);
            case 16:
                ViewGroup viewGroup17 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup17, "parent");
                return new C6868g(C19286f.m13667l(viewGroup17, C2752R.layout.item_disable_battery_optimization_promo, false, 2), ((a) this.f41856c).x);
            case 17:
                ViewGroup viewGroup18 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup18, "parent");
                return new C6965v2(C19286f.m13667l(viewGroup18, C2752R.layout.item_video_caller_id_promo_home_tab, false, 2), ((a) this.f41856c).x);
            case 18:
                ViewGroup viewGroup19 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup19, "parent");
                return new C6971w2(C19286f.m13667l(viewGroup19, C2752R.layout.item_video_caller_id_update_promo_home_tab, false, 2), ((a) this.f41856c).x);
            case 19:
                ViewGroup viewGroup20 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup20, "parent");
                return new C6835e(C19286f.m13667l(viewGroup20, C2752R.layout.item_calls_messages_separately_promo, false, 2), ((a) this.f41856c).x);
            case 20:
                ViewGroup viewGroup21 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup21, "parent");
                return new C6794d(C19286f.m13667l(viewGroup21, C2752R.layout.item_caller_id_banner_variant_b, false, 2), ((a) this.f41856c).x);
            case 21:
                ViewGroup viewGroup22 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup22, "parent");
                return new C6776a(C19286f.m13667l(viewGroup22, C2752R.layout.item_premium_blocking_promo_spam_tab, false, 2), ((a) this.f41856c).x, PremiumLaunchContext.CALL_TAB_PROMO);
            case 22:
                ViewGroup viewGroup23 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup23, "parent");
                return new C6904k(C19286f.m13667l(viewGroup23, C2752R.layout.item_incallui_promo_home_tab, false, 2), ((a) this.f41856c).x);
            case 23:
                ViewGroup viewGroup24 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup24, "parent");
                return new C6847f(C19286f.m13667l(viewGroup24, C2752R.layout.item_context_call_promo_home_tab, false, 2), ((a) this.f41856c).x);
            case 24:
                ViewGroup viewGroup25 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup25, "parent");
                return new C6896j(C19286f.m13667l(viewGroup25, C2752R.layout.item_group_voice_promo_home_tab, false, 2), ((a) this.f41856c).x);
            case 25:
                ViewGroup viewGroup26 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup26, "parent");
                return new C6890i(C19286f.m13667l(viewGroup26, C2752R.layout.item_ghost_call_home_promo_tab, false, 2), ((a) this.f41856c).x);
            case 26:
                ViewGroup viewGroup27 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup27, "parent");
                return new C6981y2(C19286f.m13667l(viewGroup27, C2752R.layout.item_whats_app_caller_id_home_promo_tab, false, 2), ((a) this.f41856c).x);
            case 27:
                ViewGroup viewGroup28 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup28, "parent");
                return new C6782b(C19286f.m13667l(viewGroup28, C2752R.layout.item_announce_call_home_promo_tab, false, 2), ((a) this.f41856c).x);
            default:
                throw null;
        }
    }
}
