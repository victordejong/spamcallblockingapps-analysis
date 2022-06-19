package p193e.p194a.p679d5.p680g;

import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.common.p156ui.NonSwipeableViewPager;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import com.truecaller.p183ui.view.DotPagerIndicator;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import p1727n3.p1734b.p1735a.DialogC25424p;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1825k0.p1826a.AbstractC26640a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.p700d2.C13235l;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: e.a.d5.g.j */
/* loaded from: classes12-dex2jar.jar:e/a/d5/g/j.class */
public class C12627j extends AbstractView$OnClickListenerC12621e {

    /* renamed from: j */
    public static final /* synthetic */ int f36781j = 0;

    /* renamed from: b */
    public NonSwipeableViewPager f36782b;

    /* renamed from: c */
    public DotPagerIndicator f36783c;

    /* renamed from: d */
    public Button f36784d;

    /* renamed from: f */
    public long f36786f;

    /* renamed from: h */
    public boolean f36788h;

    /* renamed from: i */
    public C13235l f36789i;

    /* renamed from: e */
    public ArrayList<EnumC12630c> f36785e = new ArrayList<>();

    /* renamed from: g */
    public Handler f36787g = new Handler();

    /* renamed from: e.a.d5.g.j$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/g/j$a.class */
    public class C12628a extends AbstractC26640a {
        public C12628a() {
            C12627j.this = r4;
        }

        @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
        /* renamed from: a */
        public void mo1177a(ViewGroup viewGroup, int i, Object obj) {
            C13235l c13235l;
            viewGroup.removeView((View) obj);
            if (i != 0 || (c13235l = C12627j.this.f36789i) == null) {
                return;
            }
            c13235l.f38465h.cancel();
            C12627j.this.f36789i = null;
        }

        @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
        /* renamed from: c */
        public int mo1537c() {
            return C12627j.this.f36785e.size();
        }

        @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
        /* renamed from: f */
        public Object mo1534f(ViewGroup viewGroup, int i) {
            C12627j c12627j = C12627j.this;
            int i2 = C12627j.f36781j;
            Objects.requireNonNull(c12627j);
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.view_onboarding_page, viewGroup, false);
            TextView textView = (TextView) inflate.findViewById(2131366469);
            ImageView imageView = (ImageView) inflate.findViewById(2131364231);
            EnumC12630c enumC12630c = c12627j.f36785e.get(i);
            textView.setText(enumC12630c.f36797a);
            if (imageView != null) {
                if (i == 0) {
                    C13235l c13235l = new C13235l(c12627j.getContext());
                    c12627j.f36789i = c13235l;
                    imageView.setImageDrawable(c13235l);
                } else {
                    imageView.setImageResource(enumC12630c.f36798b);
                }
            }
            viewGroup.addView(inflate);
            return inflate;
        }

        @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
        /* renamed from: g */
        public boolean mo1148g(View view, Object obj) {
            return view == obj;
        }
    }

    /* renamed from: e.a.d5.g.j$b */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/g/j$b.class */
    public class C12629b implements ViewPager.AbstractC0396i {
        public C12629b() {
            C12627j.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
        /* renamed from: a */
        public void mo7749a(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
        /* renamed from: b */
        public void mo1514b(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
        /* renamed from: g */
        public void mo7748g(int i) {
            C13235l c13235l;
            if (C12627j.this.getContext() == null) {
                return;
            }
            C12627j c12627j = C12627j.this;
            c12627j.getContext();
            int i2 = C12627j.f36781j;
            c12627j.m22807SA();
            if (i == C12627j.this.f36785e.size() - 1) {
                C12627j.this.f36784d.setText(C2752R.string.OnboardingGotIt);
                return;
            }
            C12627j.this.f36784d.setText(C2752R.string.OnboardingNext);
            if (i != 0 || (c13235l = C12627j.this.f36789i) == null) {
                return;
            }
            c13235l.f38465h.start();
        }
    }

    /* renamed from: e.a.d5.g.j$c */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/g/j$c.class */
    public enum EnumC12630c {
        DIALER(C2752R.string.OnboardingReplaceDialer, 0),
        CALLER_ID(C2752R.string.OnboardingCallerId, C2752R.C2753drawable.onboarding_caller_id),
        BLOCK(C2752R.string.OnboardingBlock, C2752R.C2753drawable.onboarding_spam_call),
        AVAILABILITY(C2752R.string.OnboardingAvailability, C2752R.C2753drawable.onboarding_availability);
        

        /* renamed from: a */
        public final int f36797a;

        /* renamed from: b */
        public final int f36798b;

        EnumC12630c(int i, int i2) {
            this.f36797a = i;
            this.f36798b = i2;
        }
    }

    public C12627j() {
        this.f36785e.add(EnumC12630c.DIALER);
        this.f36785e.add(EnumC12630c.CALLER_ID);
        this.f36785e.add(EnumC12630c.BLOCK);
        if (C15571h.m18634q()) {
            this.f36785e.add(EnumC12630c.AVAILABILITY);
        }
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractView$OnClickListenerC12621e
    /* renamed from: PA */
    public StartupDialogEvent.Type mo22805PA() {
        return StartupDialogEvent.Type.Onboarding;
    }

    /* renamed from: SA */
    public final void m22807SA() {
        AbstractC19462a m8596m1 = C22128a.m8596m1();
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b(String.format(Locale.US, "ONBOARDING_Step_%d", Integer.valueOf(this.f36782b.getCurrentItem() + 1)));
        c19504b.m13264c("time", System.currentTimeMillis() - this.f36786f);
        m8596m1.mo13271e(c19504b.m13266a());
        this.f36786f = System.currentTimeMillis();
    }

    /* renamed from: TA */
    public final void m22806TA() {
        int currentItem = this.f36782b.getCurrentItem();
        AbstractC19219a0 mo11647c = TrueApp.m36032b0().mo10154s().mo11647c();
        AbstractC19230g mo12512W = TrueApp.m36032b0().mo10154s().mo12512W();
        boolean z = this.f36785e.get(currentItem) == EnumC12630c.BLOCK;
        boolean z2 = !mo11647c.mo13825h("android.permission.READ_SMS") || !mo12512W.mo13802B();
        if (!z || !z2 || this.f36788h) {
            if (currentItem != this.f36785e.size() - 1) {
                this.f36782b.setCurrentItem(currentItem + 1);
                return;
            }
            C22128a.m8596m1().mo13271e(new AbstractC19502g.C19504b.C19505a("ONBOARDING_Finished", null, null, null));
            dismissAllowingStateLoss();
            return;
        }
        this.f36788h = true;
        try {
            Context context = getContext();
            if (context == null) {
                return;
            }
            startActivityForResult(DefaultSmsActivity.m34991pa(context, "onboarding-blockSpam"), 1);
            this.f36784d.setEnabled(false);
        } catch (ActivityNotFoundException e) {
            C10480a.m26061I1(e);
            this.f36784d.setEnabled(true);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            if (i == 2) {
                m22806TA();
            } else {
                C12627j.super.onActivityResult(i, i2, intent);
            }
        } else if (i2 == -1) {
            this.f36784d.setEnabled(true);
            m22806TA();
        } else {
            final Context context = getContext();
            if (context == null) {
                return;
            }
            g$a g_a = new g$a(context);
            g_a.f70854a.f163m = false;
            g_a.m3656m(C2752R.string.SmsAppTitle);
            g_a.m3664e(C2752R.string.OnboardingDialogSmsText);
            g_a.m3660i(2131887875, new DialogInterface.OnClickListener() { // from class: e.a.d5.g.d
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    C12627j c12627j = C12627j.this;
                    Context context2 = context;
                    Objects.requireNonNull(c12627j);
                    c12627j.startActivityForResult(DefaultSmsActivity.m34991pa(context2, "onboarding-blockSpam"), 2);
                    c12627j.f36784d.setEnabled(true);
                }
            });
            g_a.m3662g(C2752R.string.FeedbackOptionLater, new DialogInterface.OnClickListener() { // from class: e.a.d5.g.b
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    C12627j c12627j = C12627j.this;
                    Objects.requireNonNull(c12627j);
                    dialogInterface.dismiss();
                    c12627j.m22806TA();
                }
            });
            g_a.f70854a.f165o = new DialogInterface.OnDismissListener() { // from class: e.a.d5.g.a
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    C12627j.this.f36784d.setEnabled(true);
                }
            };
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractView$OnClickListenerC12621e, android.view.View.OnClickListener
    public void onClick(View view) {
        m22806TA();
    }

    public Dialog onCreateDialog(Bundle bundle) {
        return new DialogC25424p(getActivity(), C2752R.style.Theme_Truecaller_Dialog_Onboarding);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C2752R.layout.onboarding_dialog, viewGroup, false);
        this.f36782b = (NonSwipeableViewPager) inflate.findViewById(2131366808);
        this.f36783c = (DotPagerIndicator) inflate.findViewById(C2752R.C2754id.page_indicator);
        this.f36784d = (Button) inflate.findViewById(2131364921);
        return inflate;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12635n
    public void onDismiss(DialogInterface dialogInterface) {
        C13235l c13235l = this.f36789i;
        if (c13235l != null) {
            c13235l.f38465h.cancel();
        }
        AbstractApplicationC8442a.m28551L();
        m22807SA();
        super.onDismiss(dialogInterface);
    }

    public void onResume() {
        C12627j.super.onResume();
        this.f36786f = System.currentTimeMillis();
    }

    public void onStop() {
        C12627j.super.onStop();
        this.f36787g.removeCallbacksAndMessages(null);
    }

    public void onViewCreated(View view, Bundle bundle) {
        this.f36783c.setNumberOfPages(this.f36785e.size());
        this.f36783c.setFirstPage(0);
        this.f36782b.setAdapter(new C12628a());
        final C12629b c12629b = new C12629b();
        this.f36782b.m42656b(c12629b);
        this.f36782b.m42656b(this.f36783c);
        this.f36782b.post(new Runnable() { // from class: e.a.d5.g.c
            @Override // java.lang.Runnable
            public final void run() {
                c12629b.mo7748g(C12627j.this.f36782b.getCurrentItem());
            }
        });
        this.f36784d.setOnClickListener(this);
    }
}
