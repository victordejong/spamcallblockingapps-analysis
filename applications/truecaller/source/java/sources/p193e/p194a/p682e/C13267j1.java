package p193e.p194a.p682e;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.filters.blockedevents.BlockedEventsActivity;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.settings.SettingsActivity;
import com.truecaller.p183ui.settings.SettingsCategory;
import com.truecaller.p183ui.settings.callerid.CallerIdSettingsActivity;
import com.truecaller.premium.PremiumLaunchContext;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.d;
import e.m.e.q;
import e.m.e.r;
import e.m.e.s;
import e.m.e.v;
import e.m.e.z;
import java.io.IOException;
import java.io.StringReader;
import java.util.Collections;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import n3.r.a.l;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.AbstractC19127x0;
import p193e.p194a.p1114o5.C18936a1;
import p193e.p194a.p1114o5.C18952b1;
import p193e.p194a.p1114o5.C18956c1;
import p193e.p194a.p1114o5.C19008d1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1114o5.C19124w0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8602m;
import p193e.p194a.p912i4.p914y.C15308d;
import p193e.p194a.p936j3.AbstractC15549f;
import p193e.p194a.p937j4.p939b.p940a.C15569f;
import w3.c.a.a.a.h;
/* renamed from: e.a.e.j1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/j1.class */
public class C13267j1 extends AbstractC13329x0 {

    /* renamed from: e */
    public Button f38563e;

    /* renamed from: f */
    public Button f38564f;

    /* renamed from: g */
    public TextView f38565g;

    /* renamed from: h */
    public TextView f38566h;

    /* renamed from: i */
    public ImageView f38567i;

    /* renamed from: j */
    public TextView f38568j;

    /* renamed from: k */
    public InternalTruecallerNotification f38569k;

    /* renamed from: l */
    public final View.OnClickListener f38570l = new View$OnClickListenerC13268a();

    /* renamed from: m */
    public final View.OnClickListener f38571m = new View$OnClickListenerC13269b();

    /* renamed from: e.a.e.j1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/j1$a.class */
    public class View$OnClickListenerC13268a implements View.OnClickListener {
        public View$OnClickListenerC13268a() {
            C13267j1.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C18956c1 c18956c1;
            C13267j1 c13267j1 = C13267j1.this;
            InternalTruecallerNotification internalTruecallerNotification = c13267j1.f38569k;
            l activity = c13267j1.getActivity();
            int ordinal = internalTruecallerNotification.m34842q().ordinal();
            if (ordinal == 1 || ordinal == 2) {
                c18956c1 = new C18956c1(activity, internalTruecallerNotification.mo18605h(activity) + StringConstant.NEW_LINE + C19231g0.m13808I(internalTruecallerNotification.mo18608d(activity)));
            } else if (ordinal != 3) {
                if (ordinal != 4) {
                    if (ordinal != 45) {
                        switch (ordinal) {
                            case 6:
                                c18956c1 = new AbstractC19127x0(activity, internalTruecallerNotification) { // from class: com.truecaller.util.NotificationUtil$ShowUIAction

                                    /* renamed from: a */
                                    public final Context f15942a;

                                    /* renamed from: b */
                                    public final UiType f15943b;

                                    /* renamed from: c */
                                    public final AbstractC15539j2 f15944c;

                                    /* loaded from: classes15-dex2jar.jar:com/truecaller/util/NotificationUtil$ShowUIAction$UiType.class */
                                    public enum UiType {
                                        PROFILE_EDIT("profileEdit"),
                                        SEARCH("search"),
                                        HISTORY("history"),
                                        NOTIFICATIONS("notifications"),
                                        BLOCK("filterMy"),
                                        PREMIUM("premium"),
                                        SETTINGS("settings"),
                                        SETTINGS_GENERAL("settingsGeneral"),
                                        SETTINGS_UPDATE("settingsUpdate"),
                                        SETTINGS_CALLERID("settingsCallerId"),
                                        SETTINGS_PRIVACY("settingsPrivacy"),
                                        SETTINGS_ABOUT("settingsAbout"),
                                        SETTINGS_GENERAL_LANGUAGE("settingsGeneralLanguage");
                                        
                                        public final String name;

                                        UiType(String str) {
                                            this.name = str;
                                        }

                                        public static UiType getUiType(String str) {
                                            UiType[] values = values();
                                            for (int i = 0; i < 13; i++) {
                                                UiType uiType = values[i];
                                                if (uiType.getName().equals(str)) {
                                                    return uiType;
                                                }
                                            }
                                            return null;
                                        }

                                        public String getName() {
                                            return this.name;
                                        }
                                    }

                                    {
                                        this.f15942a = activity;
                                        this.f15943b = UiType.getUiType(internalTruecallerNotification.m34847j("v"));
                                        this.f15944c = ((AbstractC21187w1) activity.getApplicationContext()).mo10154s();
                                    }

                                    @Override // p193e.p194a.p1114o5.AbstractC19127x0
                                    public void execute() {
                                        switch (this.f15943b.ordinal()) {
                                            case 0:
                                                this.f15942a.startActivity(this.f15944c.mo12495X2().m15457a(this.f15942a));
                                                return;
                                            case 1:
                                            case 8:
                                            default:
                                                TruecallerInit.m34564Ya(this.f15942a, "search", null);
                                                return;
                                            case 2:
                                                TruecallerInit.m34564Ya(this.f15942a, "search", null);
                                                return;
                                            case 3:
                                                Context context = this.f15942a;
                                                context.startActivity(C15308d.m18942cB(context));
                                                return;
                                            case 4:
                                                this.f15942a.startActivity(new Intent(this.f15942a, BlockedEventsActivity.class));
                                                return;
                                            case 5:
                                                this.f15944c.mo12777C3().mo17167b(this.f15942a, PremiumLaunchContext.NOTIFICATION);
                                                return;
                                            case 6:
                                                Context context2 = this.f15942a;
                                                context2.startActivity(SettingsActivity.m34499ua(context2, SettingsCategory.SETTINGS_MAIN));
                                                return;
                                            case 7:
                                                Context context3 = this.f15942a;
                                                context3.startActivity(SettingsActivity.m34499ua(context3, SettingsCategory.SETTINGS_GENERAL));
                                                return;
                                            case 9:
                                                this.f15942a.startActivity(new Intent(this.f15942a, CallerIdSettingsActivity.class));
                                                return;
                                            case 10:
                                                Context context4 = this.f15942a;
                                                context4.startActivity(SettingsActivity.m34499ua(context4, SettingsCategory.SETTINGS_PRIVACY));
                                                return;
                                            case 11:
                                                Context context5 = this.f15942a;
                                                context5.startActivity(SettingsActivity.m34499ua(context5, SettingsCategory.SETTINGS_ABOUT));
                                                return;
                                            case 12:
                                                Context context6 = this.f15942a;
                                                context6.startActivity(SettingsActivity.m34498va(context6, SettingsCategory.SETTINGS_LANGUAGE, true, "show_lang_selector"));
                                                return;
                                        }
                                    }
                                };
                                break;
                            case 7:
                            case 8:
                            case 9:
                                c18956c1 = new C19124w0(activity, internalTruecallerNotification);
                                break;
                            default:
                                switch (ordinal) {
                                    case 11:
                                        c18956c1 = new C18952b1(activity, internalTruecallerNotification);
                                        break;
                                    case 12:
                                    case 13:
                                        break;
                                    case 14:
                                        c18956c1 = new AbstractC19127x0(activity, internalTruecallerNotification) { // from class: com.truecaller.util.NotificationUtil$ShowUIAction

                                            /* renamed from: a */
                                            public final Context f15942a;

                                            /* renamed from: b */
                                            public final UiType f15943b;

                                            /* renamed from: c */
                                            public final AbstractC15539j2 f15944c;

                                            /* loaded from: classes15-dex2jar.jar:com/truecaller/util/NotificationUtil$ShowUIAction$UiType.class */
                                            public enum UiType {
                                                PROFILE_EDIT("profileEdit"),
                                                SEARCH("search"),
                                                HISTORY("history"),
                                                NOTIFICATIONS("notifications"),
                                                BLOCK("filterMy"),
                                                PREMIUM("premium"),
                                                SETTINGS("settings"),
                                                SETTINGS_GENERAL("settingsGeneral"),
                                                SETTINGS_UPDATE("settingsUpdate"),
                                                SETTINGS_CALLERID("settingsCallerId"),
                                                SETTINGS_PRIVACY("settingsPrivacy"),
                                                SETTINGS_ABOUT("settingsAbout"),
                                                SETTINGS_GENERAL_LANGUAGE("settingsGeneralLanguage");
                                                
                                                public final String name;

                                                UiType(String str) {
                                                    this.name = str;
                                                }

                                                public static UiType getUiType(String str) {
                                                    UiType[] values = values();
                                                    for (int i = 0; i < 13; i++) {
                                                        UiType uiType = values[i];
                                                        if (uiType.getName().equals(str)) {
                                                            return uiType;
                                                        }
                                                    }
                                                    return null;
                                                }

                                                public String getName() {
                                                    return this.name;
                                                }
                                            }

                                            {
                                                this.f15942a = activity;
                                                this.f15943b = UiType.getUiType(internalTruecallerNotification.m34847j("v"));
                                                this.f15944c = ((AbstractC21187w1) activity.getApplicationContext()).mo10154s();
                                            }

                                            @Override // p193e.p194a.p1114o5.AbstractC19127x0
                                            public void execute() {
                                                switch (this.f15943b.ordinal()) {
                                                    case 0:
                                                        this.f15942a.startActivity(this.f15944c.mo12495X2().m15457a(this.f15942a));
                                                        return;
                                                    case 1:
                                                    case 8:
                                                    default:
                                                        TruecallerInit.m34564Ya(this.f15942a, "search", null);
                                                        return;
                                                    case 2:
                                                        TruecallerInit.m34564Ya(this.f15942a, "search", null);
                                                        return;
                                                    case 3:
                                                        Context context = this.f15942a;
                                                        context.startActivity(C15308d.m18942cB(context));
                                                        return;
                                                    case 4:
                                                        this.f15942a.startActivity(new Intent(this.f15942a, BlockedEventsActivity.class));
                                                        return;
                                                    case 5:
                                                        this.f15944c.mo12777C3().mo17167b(this.f15942a, PremiumLaunchContext.NOTIFICATION);
                                                        return;
                                                    case 6:
                                                        Context context2 = this.f15942a;
                                                        context2.startActivity(SettingsActivity.m34499ua(context2, SettingsCategory.SETTINGS_MAIN));
                                                        return;
                                                    case 7:
                                                        Context context3 = this.f15942a;
                                                        context3.startActivity(SettingsActivity.m34499ua(context3, SettingsCategory.SETTINGS_GENERAL));
                                                        return;
                                                    case 9:
                                                        this.f15942a.startActivity(new Intent(this.f15942a, CallerIdSettingsActivity.class));
                                                        return;
                                                    case 10:
                                                        Context context4 = this.f15942a;
                                                        context4.startActivity(SettingsActivity.m34499ua(context4, SettingsCategory.SETTINGS_PRIVACY));
                                                        return;
                                                    case 11:
                                                        Context context5 = this.f15942a;
                                                        context5.startActivity(SettingsActivity.m34499ua(context5, SettingsCategory.SETTINGS_ABOUT));
                                                        return;
                                                    case 12:
                                                        Context context6 = this.f15942a;
                                                        context6.startActivity(SettingsActivity.m34498va(context6, SettingsCategory.SETTINGS_LANGUAGE, true, "show_lang_selector"));
                                                        return;
                                                }
                                            }
                                        };
                                        break;
                                    default:
                                        c18956c1 = new C18956c1(activity, activity.getString(2131887863));
                                        break;
                                }
                        }
                    } else {
                        c18956c1 = new C18936a1(activity, internalTruecallerNotification, false);
                        C12864a2.m22582L("Dsan4-PressDeeplink");
                    }
                }
                c18956c1 = new C18936a1(activity, internalTruecallerNotification);
            } else {
                c18956c1 = new C19008d1(activity, internalTruecallerNotification);
            }
            c18956c1.execute();
        }
    }

    /* renamed from: e.a.e.j1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/j1$b.class */
    public class View$OnClickListenerC13269b implements View.OnClickListener {
        public View$OnClickListenerC13269b() {
            C13267j1.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String m34847j = C13267j1.this.f38569k.m34847j("wi");
            if (h.j(m34847j)) {
                return;
            }
            C13267j1.this.m21969V(false);
            AbstractC15549f mo12130y3 = ((AbstractC21187w1) C13267j1.this.getContext().getApplicationContext()).mo10154s().mo12130y3();
            int id = view.getId();
            if (id == 2131363664) {
                mo12130y3.mo18695a(m34847j, new AbstractC15549f.AbstractC15550a() { // from class: e.a.e.p
                    @Override // p193e.p194a.p936j3.AbstractC15549f.AbstractC15550a
                    /* renamed from: a */
                    public final void mo18696a(long j) {
                        C13267j1.m21968WA(C13267j1.this, false, j);
                    }
                });
            } else if (id != 2131363663) {
            } else {
                mo12130y3.mo18694b(m34847j, new AbstractC15549f.AbstractC15550a() { // from class: e.a.e.o
                    @Override // p193e.p194a.p936j3.AbstractC15549f.AbstractC15550a
                    /* renamed from: a */
                    public final void mo18696a(long j) {
                        C13267j1.m21968WA(C13267j1.this, true, j);
                    }
                });
            }
        }
    }

    /* renamed from: WA */
    public static void m21968WA(C13267j1 c13267j1, boolean z, long j) {
        if (j != 1) {
            c13267j1.m21969V(true);
            c13267j1.m21920TA(2131886717);
            return;
        }
        InternalTruecallerNotification internalTruecallerNotification = c13267j1.f38569k;
        InternalTruecallerNotification.NotificationActionHistoryItem.Action action = z ? InternalTruecallerNotification.NotificationActionHistoryItem.Action.DENIED : InternalTruecallerNotification.NotificationActionHistoryItem.Action.ACCEPTED;
        Objects.requireNonNull(internalTruecallerNotification);
        InternalTruecallerNotification.NotificationActionHistoryItem notificationActionHistoryItem = new InternalTruecallerNotification.NotificationActionHistoryItem();
        notificationActionHistoryItem.f14115a = Long.valueOf(new Date().getTime() / 1000);
        notificationActionHistoryItem.f14116b = action;
        notificationActionHistoryItem.f14117c = null;
        internalTruecallerNotification.f14114m.add(notificationActionHistoryItem);
        boolean z2 = TrueApp.f9585r;
        new C15569f(AbstractApplicationC8442a.m28551L()).m18620g(Collections.singletonList(c13267j1.f38569k));
        if (!c13267j1.m21921SA()) {
            return;
        }
        c13267j1.m21917We(c13267j1.getString(z ? 2131887110 : 2131887115, new Object[]{c13267j1.f38569k.m34846m()}));
        c13267j1.m21966YA();
        c13267j1.m21967XA();
        c13267j1.m21969V(true);
    }

    /* renamed from: V */
    public final void m21969V(boolean z) {
        if (m21921SA()) {
            this.f38563e.setEnabled(z);
            this.f38564f.setEnabled(z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0117  */
    /* renamed from: XA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21967XA() {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.C13267j1.m21967XA():void");
    }

    /* renamed from: YA */
    public final void m21966YA() {
        this.f38569k.m34838u(getContext());
        C19045j0.m14196t(this.f38565g, this.f38569k.f38329h);
        C19045j0.m14196t(this.f38566h, this.f38569k.f38330i);
        Long m34843p = this.f38569k.m34843p();
        this.f38568j.setVisibility(0);
        this.f38568j.setText(C8602m.m28247k(getContext(), TimeUnit.SECONDS.toMillis(m34843p.longValue())));
        int m34841r = this.f38569k.m34841r();
        if (h.m(this.f38569k.m34845n())) {
            C17891a1.C17902k.m15658M1(this).m8964B(this.f38569k.m34845n()).mo8097k(m34841r).mo8102f().m8427O(this.f38567i);
        } else {
            this.f38567i.setImageResource(m34841r);
        }
    }

    /* renamed from: ZA */
    public final void m21965ZA(Button button, String str, View.OnClickListener onClickListener) {
        button.setText(str);
        button.setOnClickListener(onClickListener);
        button.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C2752R.layout.view_notification_messages, viewGroup, false);
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        try {
            a aVar = new a(new StringReader(getActivity().getIntent().getStringExtra("arg_notification")));
            q a = v.a(aVar);
            Objects.requireNonNull(a);
            if (!(a instanceof s) && aVar.D0() != b.j) {
                throw new z("Did not consume the entire document.");
            }
            try {
                this.f38569k = new InternalTruecallerNotification(a.d());
                this.f38563e = (Button) view.findViewById(C2752R.C2754id.feedback_button_positive);
                this.f38564f = (Button) view.findViewById(C2752R.C2754id.feedback_button_negative);
                this.f38565g = (TextView) view.findViewById(2131364642);
                this.f38566h = (TextView) view.findViewById(C2752R.C2754id.listItemDetails);
                this.f38567i = (ImageView) view.findViewById(C2752R.C2754id.listItemIcon);
                this.f38568j = (TextView) view.findViewById(C2752R.C2754id.listItemTimestamp);
                this.f38566h.setTextSize(0, getResources().getDimension(C2752R.dimen.list_tertiary));
                if (h.m(this.f38569k.m34846m())) {
                    getActivity().getSupportActionBar().mo3542y(this.f38569k.m34846m());
                } else {
                    getActivity().getSupportActionBar().mo3543x(C2752R.string.TabBarMessages);
                }
                m21966YA();
                m21967XA();
            } catch (Exception e) {
                getActivity().finish();
            }
        } catch (d e2) {
            throw new z(e2);
        } catch (IOException e3) {
            throw new r(e3);
        } catch (NumberFormatException e4) {
            throw new z(e4);
        }
    }
}
