package p193e.p194a.p682e.p699c2;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.p183ui.AfterClipboardSearchActivity;
import com.truecaller.p183ui.components.AvatarView;
import com.truecaller.p183ui.components.FloatingWindow;
import com.truecaller.settings.CallingSettings;
import e.m.d.y.n;
import java.util.Objects;
import p1727n3.p1807k.p1808a.C26417c0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1114o5.C19017e1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p847h3.p848b.AbstractC14900a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.l;
/* renamed from: e.a.e.c2.v */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/v.class */
public class C13213v extends FloatingWindow<View> {

    /* renamed from: A */
    public CallingSettings f38363A;

    /* renamed from: B */
    public AbstractC8426f f38364B;

    /* renamed from: C */
    public AbstractC14900a f38365C;

    /* renamed from: p */
    public AvatarView f38366p;

    /* renamed from: q */
    public TextView f38367q;

    /* renamed from: r */
    public TextView f38368r;

    /* renamed from: s */
    public Contact f38369s;

    /* renamed from: t */
    public View f38370t;

    /* renamed from: u */
    public View f38371u;

    /* renamed from: v */
    public View f38372v;

    /* renamed from: w */
    public ImageView f38373w;

    /* renamed from: x */
    public String f38374x;

    /* renamed from: y */
    public FilterMatch f38375y;

    /* renamed from: z */
    public AbstractC19854f<AbstractC19463a0> f38376z;

    public C13213v(Context context, FloatingWindow.AbstractC4682c abstractC4682c) {
        super(context, null, View.class);
    }

    @Override // com.truecaller.p183ui.components.FloatingWindow
    /* renamed from: c */
    public void mo21992c(FloatingWindow.DismissCause dismissCause) {
        if (!this.f15774m) {
            WindowManager.LayoutParams layoutParams = this.f15766e;
            layoutParams.height = -2;
            try {
                this.f15765d.updateViewLayout(this.f15767f, layoutParams);
            } catch (IllegalArgumentException e) {
            }
            C15571h.m18628w("clipboardSearchLastYPosition", this.f15766e.y);
            this.f15767f.setVisibility(8);
            Objects.requireNonNull((C13204o) this.f15763b);
        } else {
            m34520d();
        }
        if (dismissCause == FloatingWindow.DismissCause.MANUAL) {
            m21991e();
        }
    }

    /* renamed from: e */
    public final void m21991e() {
        if (!this.f38363A.getBoolean("clipboardSearchHaveAskedOnDismiss")) {
            Intent intent = new Intent(this.f15762a, AfterClipboardSearchActivity.class);
            try {
                intent.addFlags(268468224);
                this.f15762a.startActivity(intent);
            } catch (Throwable th) {
                C10480a.m26061I1(th);
            }
        }
    }

    /* renamed from: f */
    public void m21990f(String str, Contact contact, FilterMatch filterMatch) {
        this.f38369s = contact;
        this.f38374x = str;
        this.f38375y = filterMatch;
        C19045j0.m14196t(this.f38367q, contact.m35487y());
        if (TextUtils.isEmpty(contact.m35513i())) {
            Address m35500r = contact.m35500r();
            if (m35500r != null && m35500r.getCountryCode() != null) {
                C19045j0.m14196t(this.f38368r, m35500r.getCountryName());
            }
        } else {
            C19045j0.m14196t(this.f38368r, contact.m35513i());
        }
        if (C19103t.m14103j(contact, filterMatch)) {
            AvatarView avatarView = this.f38366p;
            avatarView.m34543a();
            avatarView.f15691h = true;
            avatarView.f15687d.setIsSpam(true);
            return;
        }
        this.f38366p.m34542b(C12864a2.m22592B(contact, true), C12864a2.m22592B(contact, false), contact.m35499r0(), contact.m35494u0());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f38373w) {
            m21991e();
        } else {
            this.f38365C.mo19481a();
            if (view == this.f38370t) {
                CallingSettings mo12414d6 = ((AbstractC21187w1) this.f15762a.getApplicationContext()).mo10154s().mo12414d6();
                mo12414d6.putString("key_last_call_origin", "clipboard");
                mo12414d6.putBoolean("key_temp_latest_call_made_with_tc", true);
                mo12414d6.putLong("lastCallMadeWithTcTime", System.currentTimeMillis());
                String m35496t = this.f38369s.m35496t();
                if (m35496t != null) {
                    Intent intent = new Intent("android.intent.action.CALL", Uri.parse(C22128a.m8543z2("tel:", m35496t)));
                    try {
                        intent.addFlags(268468224);
                        this.f15762a.startActivity(intent);
                    } catch (Throwable th) {
                        C10480a.m26061I1(th);
                    }
                    n.y1(this.f38376z, "autoSearch", AnalyticsConstants.CALLED);
                }
            } else if (view == this.f38371u) {
                C19017e1.m14253c(this.f15762a, this.f38369s.m35496t());
                n.y1(this.f38376z, "autoSearch", TokenResponseDto.METHOD_SMS);
            } else if (view == this.f38372v) {
                Context context = this.f15762a;
                Contact contact = this.f38369s;
                SourceType sourceType = SourceType.ClipboardSearch;
                boolean m35520e1 = contact.m35520e1(this.f38374x);
                l.e(context, AnalyticsConstants.CONTEXT);
                l.e(contact, AnalyticsConstants.CONTACT);
                l.e(sourceType, "source");
                Intent intent2 = new Intent(context, DetailsViewActivity.class);
                intent2.putExtra("ARG_CONTACT", contact);
                intent2.putExtra("ARG_SOURCE_TYPE", 6);
                intent2.putExtra("SHOULD_SAVE", true);
                intent2.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", !m35520e1);
                C26417c0 c26417c0 = new C26417c0(this.f15762a);
                c26417c0.m1893a(intent2);
                c26417c0.m1889e();
                n.y1(this.f38376z, "autoSearch", "openedDetailView");
            }
        }
        Handler handler = this.f15768g;
        if (handler != null) {
            handler.removeMessages(2);
            this.f15768g.sendEmptyMessageDelayed(2, 100L);
        }
    }
}
