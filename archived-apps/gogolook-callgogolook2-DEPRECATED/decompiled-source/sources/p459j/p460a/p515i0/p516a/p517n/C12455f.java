package p459j.p460a.p515i0.p516a.p517n;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.media2.exoplayer.external.text.webvtt.WebvttCueParser;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.block.BlockManageActivity;
import gogolook.callgogolook2.iap.p076ui.IapActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p515i0.p516a.C12419d;
import p459j.p460a.p515i0.p516a.p517n.C12441b;
import p459j.p460a.p515i0.p516a.p517n.C12458g;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14117p1;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p613z0.DialogC14597a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0014H\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001dH\u0016J\b\u0010\u001f\u001a\u00020\u001dH\u0002J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u0012H\u0016J\b\u0010\"\u001a\u00020\u001dH\u0002J\b\u0010#\u001a\u00020\u001dH\u0002J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u0012H\u0016J\u0010\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020'H\u0016J\b\u0010)\u001a\u00020\u001dH\u0002J\b\u0010*\u001a\u00020\u001dH\u0016J\u0010\u0010+\u001a\u00020\u001d2\u0006\u0010\u0006\u001a\u00020'H\u0016J\b\u0010,\u001a\u00020\u001dH\u0002R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006-"}, m815d2 = {"Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionPresenter;", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$Presenter;", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnUpdaterClickListener;", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnCtaClickListener;", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnInfoClickListener;", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter$OnTipShowListener;", "view", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$View;", "(Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$View;)V", "mainPrefsRepo", "Lgogolook/callgogolook2/whoscall_core/repository/PrefsRepository;", "getMainPrefsRepo", "()Lgogolook/callgogolook2/whoscall_core/repository/PrefsRepository;", "mainPrefsRepo$delegate", "Lkotlin/Lazy;", "protectionView", "getInfoList", "", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$NumberItemInfo;", "getOfflineDbSetting", "", WebvttCueParser.TAG_ITALIC, "", "getTooltipWindow", "Landroid/widget/PopupWindow;", "context", "Landroid/content/Context;", "content", "initStatusAndCheckTipShow", "", "onAutoUpdateClick", "onBusinessNumberInfoClick", "onCtaClick", "itemInfo", "onExpandDbClick", "onIapSpamHammerClick", "onInfoClick", "onManualUpdateTipShow", "anchorView", "Landroid/view/View;", "onPremiumTipShow", "onSpamHammerSettingClick", "onUpdateClick", "onUpdateSettingClick", "onWarningNumberInfoClick", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i0.a.n.f */
/* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/f.class */
public final class C12455f implements C12441b.AbstractC12445d, C12458g.AbstractC12463e, C12458g.AbstractC12460b, C12458g.AbstractC12461c, C12458g.AbstractC12462d {

    /* renamed from: c */
    public static final /* synthetic */ AbstractC14906i[] f28070c;

    /* renamed from: a */
    public final C12441b.AbstractC12446e f28071a;

    /* renamed from: b */
    public final AbstractC14974f f28072b = C14975g.m662a(C12457b.f28074a);

    /* renamed from: j.a.i0.a.n.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/f$a.class */
    public static final class View$OnClickListenerC12456a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ PopupWindow f28073a;

        public View$OnClickListenerC12456a(PopupWindow popupWindow) {
            this.f28073a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f28073a.dismiss();
        }
    }

    /* renamed from: j.a.i0.a.n.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/f$b.class */
    public static final class C12457b extends AbstractC15150l implements AbstractC15107a<C11507b> {

        /* renamed from: a */
        public static final C12457b f28074a = new C12457b();

        public C12457b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11507b invoke() {
            return C13978e.f31386a;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12455f.class), "mainPrefsRepo", "getMainPrefsRepo()Lgogolook/callgogolook2/whoscall_core/repository/PrefsRepository;");
        C15131a0.m412a(sVar);
        f28070c = new AbstractC14906i[]{sVar};
    }

    public C12455f(C12441b.AbstractC12446e eVar) {
        C15149k.m377b(eVar, "view");
        this.f28071a = eVar;
    }

    /* renamed from: a */
    public final PopupWindow m6123a(Context context, String str) {
        View inflate = LayoutInflater.from(context).inflate(R$layout.tooltip_layout, (ViewGroup) null);
        C15149k.m383a((Object) inflate, "LayoutInflater.from(cont…out.tooltip_layout, null)");
        TextView textView = (TextView) inflate.findViewById(R$id.tvContent);
        PopupWindow popupWindow = new PopupWindow(context);
        popupWindow.setContentView(inflate);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setHeight(-2);
        popupWindow.setWidth(context.getResources().getDimensionPixelSize(R$dimen.popup_menu_width));
        C15149k.m383a((Object) textView, "tvContent");
        textView.setText(str);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tvConfirm);
        if (textView2 != null) {
            textView2.setOnClickListener(new View$OnClickListenerC12456a(popupWindow));
        }
        return popupWindow;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        if (r5 != null) goto L_0x0037;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m6124a(int r4) {
        /*
            r3 = this;
            r0 = r3
            j.a.i0.a.n.b$e r0 = r0.f28071a
            android.content.Context r0 = r0.mo6137a()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0034
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L_0x0024
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L_0x001e
            r0 = 2131887762(0x7f120692, float:1.941014E38)
            r4 = r0
            goto L_0x0027
        L_0x001e:
            r0 = 2131887763(0x7f120693, float:1.9410142E38)
            r4 = r0
            goto L_0x0027
        L_0x0024:
            r0 = 2131887761(0x7f120691, float:1.9410138E38)
            r4 = r0
        L_0x0027:
            r0 = r5
            r1 = r4
            java.lang.String r0 = r0.getString(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0034
            goto L_0x0037
        L_0x0034:
            java.lang.String r0 = ""
            r5 = r0
        L_0x0037:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p515i0.p516a.p517n.C12455f.m6124a(int):java.lang.String");
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12458g.AbstractC12463e
    /* renamed from: a */
    public void mo6083a() {
        C14037j3.m2731a().mo2704a(new C14117p1());
        C12470h.m6077b();
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12458g.AbstractC12462d
    /* renamed from: a */
    public void mo6085a(View view) {
        C15149k.m377b(view, "anchorView");
        Context a = this.f28071a.mo6137a();
        if (a != null) {
            String string = a.getString(R$string.db_tooltip_manual_update);
            C15149k.m383a((Object) string, "it.getString(R.string.db_tooltip_manual_update)");
            m6123a(a, string).showAsDropDown(view, -C14217x3.m2201a(16.0f), C14217x3.m2201a(4.0f), 8388613);
            m6121d().m9459a("protection_has_shown_manual_update_tip", (String) true);
        }
        C12470h.m6073e();
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12458g.AbstractC12460b
    /* renamed from: a */
    public void mo6087a(C12441b.C12444c cVar) {
        C15149k.m377b(cVar, "itemInfo");
        int i = cVar.m6147i();
        if (i == C12441b.f28041c.m6158b()) {
            if (C14073m.m2624d()) {
                m6116i();
            } else {
                m6117h();
            }
        } else if (i == C12441b.f28041c.m6159a()) {
            m6118g();
        }
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12458g.AbstractC12463e
    /* renamed from: b */
    public void mo6082b() {
        Context a = this.f28071a.mo6137a();
        if (a != null) {
            C14217x3.m2156c(a, IapActivity.C4488b.m28094a(IapActivity.f10799k, a, "protection_auto_update", null, null, 12, null));
        }
        C12470h.m6079a(1);
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12458g.AbstractC12463e
    /* renamed from: b */
    public void mo6081b(View view) {
        C15149k.m377b(view, "view");
        Context a = this.f28071a.mo6137a();
        if (a != null) {
            this.f28071a.mo6136a(view, C14063l4.m2657h(), C15021m.m557c(a.getString(R$string.offline_update_manual), a.getString(R$string.offline_update_auto), a.getString(R$string.offline_update_onlywifi)));
        }
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12458g.AbstractC12461c
    /* renamed from: b */
    public void mo6086b(C12441b.C12444c cVar) {
        C15149k.m377b(cVar, "itemInfo");
        int i = cVar.m6147i();
        if (i == C12441b.f28041c.m6158b()) {
            m6115j();
        } else if (i == C12441b.f28041c.m6159a()) {
            m6119f();
        }
    }

    /* renamed from: c */
    public final List<C12441b.C12444c> m6122c() {
        Context a = this.f28071a.mo6137a();
        if (a == null) {
            return C15021m.m565a();
        }
        boolean z = C14063l4.m2639z();
        boolean f = C14073m.m2622f();
        boolean E = C14063l4.m2697E();
        ArrayList arrayList = new ArrayList();
        int i = z ? 2131100078 : 2131100077;
        int b = C12441b.f28041c.m6158b();
        int i2 = z ? R$drawable.ic_db_dangerous_red : R$drawable.ic_db_dangerous_green;
        String string = a.getString(R$string.db_warning_number_database);
        C15149k.m383a((Object) string, "context.getString(R.stri…_warning_number_database)");
        String string2 = a.getString(f ? R$string.db_dangerous_numbers : R$string.db_spam_numbers);
        C15149k.m383a((Object) string2, "context.getString(\n     …R.string.db_spam_numbers)");
        String valueOf = f ? String.valueOf(C14063l4.m2647r()) : String.valueOf(C14063l4.m2649p());
        String string3 = f ? a.getString(R$string.db_spam_numbers) : "";
        C15149k.m383a((Object) string3, "if (isSpamHammerVisible)…                  else \"\"");
        String valueOf2 = f ? String.valueOf(C14063l4.m2649p()) : "";
        String string4 = a.getString(C14073m.m2624d() ? R$string.db_spam_hammer_setting_cta : R$string.db_spam_hammer_iap_cta);
        C15149k.m383a((Object) string4, "context.getString(\n     …g.db_spam_hammer_iap_cta)");
        arrayList.add(new C12441b.C12444c(b, z, i2, string, i, string2, valueOf, string3, valueOf2, string4, f, false, f));
        int a2 = C12441b.f28041c.m6159a();
        int i3 = z ? R$drawable.ic_db_business_red : R$drawable.ic_db_business_green;
        String string5 = a.getString(R$string.db_business_number_database);
        C15149k.m383a((Object) string5, "context.getString(R.stri…business_number_database)");
        String string6 = a.getString(E ? R$string.db_premium_numbers : R$string.db_basic_numbers);
        C15149k.m383a((Object) string6, "context.getString(\n     ….string.db_basic_numbers)");
        int q = C14063l4.m2648q();
        String string7 = E ? "" : a.getString(R$string.db_premium_numbers);
        C15149k.m383a((Object) string7, "if (isPremiumDbAvailable…tring.db_premium_numbers)");
        int a3 = C12419d.m6214a(true);
        String string8 = a.getString(R$string.db_expand_db_iap_cta);
        C15149k.m383a((Object) string8, "context.getString(R.string.db_expand_db_iap_cta)");
        arrayList.add(new C12441b.C12444c(a2, z, i3, string5, i, string6, String.valueOf(q), string7, String.valueOf(a3), string8, !E, !E, !E));
        return arrayList;
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12458g.AbstractC12462d
    /* renamed from: c */
    public void mo6084c(View view) {
        C15149k.m377b(view, "anchorView");
        Context a = this.f28071a.mo6137a();
        if (a != null) {
            String string = a.getString(R$string.db_tooltip_auto_update);
            C15149k.m383a((Object) string, "it.getString(R.string.db_tooltip_auto_update)");
            m6123a(a, string).showAsDropDown(view, C14217x3.m2201a(16.0f), C14217x3.m2201a(4.0f), 8388613);
            m6121d().m9459a("protection_has_shown_premium_auto_update_tip", (String) true);
        }
        C12470h.m6073e();
    }

    /* renamed from: d */
    public final C11507b m6121d() {
        AbstractC14974f fVar = this.f28072b;
        AbstractC14906i iVar = f28070c[0];
        return (C11507b) fVar.getValue();
    }

    /* renamed from: e */
    public void m6120e() {
        boolean E = C14063l4.m2697E();
        this.f28071a.mo6134a(new C12441b.C12443b(C14063l4.m2639z(), !C14063l4.m2640y()));
        this.f28071a.mo6129c(E);
        this.f28071a.mo6130b(m6124a(C14063l4.m2657h()));
        this.f28071a.mo6128d(m6122c());
        if (E) {
            if (!m6121d().m9462a("protection_has_shown_premium_auto_update_tip", (Boolean) false)) {
                this.f28071a.mo6127n();
            }
        } else if (!m6121d().m9462a("protection_has_shown_manual_update_tip", (Boolean) false)) {
            this.f28071a.mo6126s();
        }
    }

    /* renamed from: f */
    public final void m6119f() {
        Context a = this.f28071a.mo6137a();
        if (a != null) {
            DialogC14597a aVar = new DialogC14597a(a);
            aVar.setTitle(R$string.db_business_number_database);
            DialogC14597a.m1043a(aVar, R$string.db_business_number_database_info, false, null, 6, null);
            aVar.setCanceledOnTouchOutside(true);
            aVar.show();
        }
        C12470h.m6075c();
    }

    /* renamed from: g */
    public final void m6118g() {
        Context a = this.f28071a.mo6137a();
        if (a != null) {
            C14217x3.m2156c(a, IapActivity.C4488b.m28094a(IapActivity.f10799k, a, "protection_expand_db", null, null, 12, null));
        }
        C12470h.m6079a(3);
    }

    /* renamed from: h */
    public final void m6117h() {
        Context a = this.f28071a.mo6137a();
        if (a != null) {
            C14217x3.m2156c(a, IapActivity.C4488b.m28094a(IapActivity.f10799k, a, "protection_spam_hammer", null, null, 12, null));
        }
        C12470h.m6079a(11);
    }

    /* renamed from: i */
    public final void m6116i() {
        Context a = this.f28071a.mo6137a();
        if (a != null) {
            C14217x3.m2156c(a, new Intent(a, BlockManageActivity.class));
        }
        C12470h.m6079a(2);
    }

    /* renamed from: j */
    public final void m6115j() {
        Context a = this.f28071a.mo6137a();
        if (a != null) {
            DialogC14597a aVar = new DialogC14597a(a);
            aVar.setTitle(R$string.db_warning_number_database);
            DialogC14597a.m1043a(aVar, R$string.db_warning_number_database_info, false, null, 6, null);
            aVar.setCanceledOnTouchOutside(true);
            aVar.show();
        }
        C12470h.m6074d();
    }
}
