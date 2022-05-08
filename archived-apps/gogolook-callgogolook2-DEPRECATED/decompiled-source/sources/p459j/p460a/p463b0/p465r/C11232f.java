package p459j.p460a.p463b0.p465r;

import android.text.SpannableString;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.view.MetaphorBadgeLayout;
import gogolook.callgogolook2.view.SizedTextView;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14217x3;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010&\u001a\u00020'J\u0018\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010\u0012J\u001a\u0010,\u001a\u00020'2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010-\u001a\u0004\u0018\u00010.R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006/"}, m815d2 = {"Lgogolook/callgogolook2/main/contact/ContactRecyclerViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "parent", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", ContactRealmObject.CONTACT_ID, "", "getContactId", "()J", "setContactId", "(J)V", "horizontalPadding", "", "getHorizontalPadding", "()I", "horizontalPadding$delegate", "Lkotlin/Lazy;", "number", "", "getNumber", "()Ljava/lang/String;", "setNumber", "(Ljava/lang/String;)V", "stvSecondNumberInfoNumber", "Landroid/widget/TextView;", "getStvSecondNumberInfoNumber", "()Landroid/widget/TextView;", "setStvSecondNumberInfoNumber", "(Landroid/widget/TextView;)V", "stvSecondNumberInfoTeleCom", "getStvSecondNumberInfoTeleCom", "setStvSecondNumberInfoTeleCom", "uiUpdater", "Lgogolook/callgogolook2/loader/UIUpdater;", "getUiUpdater", "()Lgogolook/callgogolook2/loader/UIUpdater;", "setUiUpdater", "(Lgogolook/callgogolook2/loader/UIUpdater;)V", "initView", "", "setBaseData", "contactData", "Lgogolook/callgogolook2/realm/obj/contact/ContactRealmObject;", "filterIndex", "setData", UserProfile.KEY_CONTACT_INFO_VALUE, "Lgogolook/callgogolook2/gson/NumberInfo;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.r.f */
/* loaded from: classes2-dex2jar.jar:j/a/b0/r/f.class */
public final class C11232f extends RecyclerView.ViewHolder {

    /* renamed from: g */
    public static final /* synthetic */ AbstractC14906i[] f25193g;

    /* renamed from: a */
    public String f25194a;

    /* renamed from: b */
    public TextView f25195b;

    /* renamed from: c */
    public TextView f25196c;

    /* renamed from: d */
    public long f25197d;

    /* renamed from: e */
    public final AbstractC14974f f25198e = C14975g.m662a(C11233a.f25200a);

    /* renamed from: f */
    public C11086o f25199f = new C11235c();

    /* renamed from: j.a.b0.r.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/f$a.class */
    public static final class C11233a extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C11233a f25200a = new C11233a();

        public C11233a() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return C14217x3.m2201a(4.0f);
        }
    }

    /* renamed from: j.a.b0.r.f$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/f$b.class */
    public static final class View$OnClickListenerC11234b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f25201a;

        /* renamed from: b */
        public final /* synthetic */ ContactRealmObject f25202b;

        public View$OnClickListenerC11234b(View view, C11232f fVar, SpannableString spannableString, ContactRealmObject contactRealmObject) {
            this.f25201a = view;
            this.f25202b = contactRealmObject;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14217x3.m2145e(this.f25201a.getContext(), this.f25202b.getNumber(), 2);
        }
    }

    /* renamed from: j.a.b0.r.f$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/f$c.class */
    public static final class C11235c extends C11086o {
        public C11235c() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (str != null && numberInfo != null && TextUtils.equals(C11232f.this.m9971b(), str)) {
                C11232f.this.m9972a(str, numberInfo);
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11232f.class), "horizontalPadding", "getHorizontalPadding()I");
        C15131a0.m412a(sVar);
        f25193g = new AbstractC14906i[]{sVar};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11232f(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.contact_log_list_view_log_item, viewGroup, false));
        C15149k.m377b(viewGroup, "parent");
    }

    /* renamed from: a */
    public final int m9974a() {
        AbstractC14974f fVar = this.f25198e;
        AbstractC14906i iVar = f25193g[0];
        return ((Number) fVar.getValue()).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x016d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9973a(gogolook.callgogolook2.realm.obj.contact.ContactRealmObject r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p465r.C11232f.m9973a(gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, java.lang.String):void");
    }

    /* renamed from: a */
    public final void m9972a(String str, NumberInfo numberInfo) {
        if (!(str == null || str.length() == 0) && numberInfo != null) {
            try {
                if (!TextUtils.isEmpty(numberInfo.m28377S())) {
                    TextView textView = this.f25196c;
                    if (textView != null) {
                        textView.setVisibility(0);
                    }
                    TextView textView2 = this.f25196c;
                    if (textView2 != null) {
                        textView2.setText(numberInfo.m28377S());
                    }
                } else {
                    TextView textView3 = this.f25196c;
                    if (textView3 != null) {
                        textView3.setVisibility(8);
                    }
                }
                View view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                MetaphorBadgeLayout metaphorBadgeLayout = (MetaphorBadgeLayout) view.findViewById(R$id.mbl_metaphor);
                if (metaphorBadgeLayout != null) {
                    CallUtils.m26576a(metaphorBadgeLayout.m25911b(), (ImageView) null, RowInfo.m28255a(str, numberInfo, false), String.valueOf(this.f25197d), CallUtils.EnumC4993l.NDP);
                    return;
                }
                throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.view.MetaphorBadgeLayout");
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: b */
    public final String m9971b() {
        return this.f25194a;
    }

    /* renamed from: c */
    public final void m9970c() {
        int i;
        View view;
        int i2;
        View view2;
        if (this.f25195b == null) {
            if (C14017g4.m2835A()) {
                view2 = this.itemView;
                C15149k.m383a((Object) view2, "itemView");
                i2 = R$id.stvSecondaryNumberInfoSecondItem;
            } else {
                view2 = this.itemView;
                C15149k.m383a((Object) view2, "itemView");
                i2 = R$id.stvSecondaryNumberInfoFirstItem;
            }
            this.f25195b = (SizedTextView) view2.findViewById(i2);
        }
        if (this.f25196c == null) {
            if (C14017g4.m2835A()) {
                view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                i = R$id.stvSecondaryNumberInfoFirstItem;
            } else {
                view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                i = R$id.stvSecondaryNumberInfoSecondItem;
            }
            this.f25196c = (SizedTextView) view.findViewById(i);
            if (C14017g4.m2835A()) {
                TextView textView = this.f25196c;
                if (textView != null) {
                    textView.setBackgroundResource(R$drawable.bg_log_telecom);
                }
                TextView textView2 = this.f25196c;
                if (textView2 != null) {
                    textView2.setPadding(m9974a(), 0, m9974a(), 0);
                    return;
                }
                return;
            }
            TextView textView3 = this.f25196c;
            if (textView3 != null) {
                textView3.setBackgroundResource(0);
            }
            TextView textView4 = this.f25196c;
            if (textView4 != null) {
                textView4.setPadding(0, 0, 0, 0);
            }
        }
    }
}
