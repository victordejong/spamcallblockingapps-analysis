package p193e.p194a.p717f.p718a.p719a.p720o;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.appcompat.app.AlertController;
import com.truecaller.incallui.C4013R;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1266t4.AbstractC20560c;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p717f.C13724r;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import p193e.p194a.p851h5.AbstractC14965w;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.v;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.f.a.a.o.b */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/a/o/b.class */
public final class C13545b implements AbstractC13544a, AbstractC13551d {

    /* renamed from: a */
    public Context f39292a;

    /* renamed from: b */
    public final AbstractC13550c f39293b;

    /* renamed from: e.a.f.a.a.o.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/o/b$a.class */
    public static final class DialogInterface$OnClickListenerC13546a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ EditText f39295b;

        public DialogInterface$OnClickListenerC13546a(EditText editText) {
            C13545b.this = r4;
            this.f39295b = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC13550c abstractC13550c = C13545b.this.f39293b;
            String obj = this.f39295b.getText().toString();
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.CharSequence");
            String obj2 = v.g0(obj).toString();
            C13553f c13553f = (C13553f) abstractC13550c;
            Objects.requireNonNull(c13553f);
            l.e(obj2, "message");
            c13553f.f39305e.mo21182y(obj2);
        }
    }

    /* renamed from: e.a.f.a.a.o.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/o/b$b.class */
    public static final class DialogInterface$OnClickListenerC13547b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC13547b f39296a = new DialogInterface$OnClickListenerC13547b();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: e.a.f.a.a.o.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/o/b$c.class */
    public static final class DialogInterface$OnDismissListenerC13548c implements DialogInterface.OnDismissListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f39297a;

        public DialogInterface$OnDismissListenerC13548c(EditText editText) {
            this.f39297a = editText;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            C19286f.m13679Y(this.f39297a, false, 0L, 2);
        }
    }

    /* renamed from: e.a.f.a.a.o.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/o/b$d.class */
    public static final class DialogInterface$OnClickListenerC13549d implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ List f39299b;

        public DialogInterface$OnClickListenerC13549d(List list) {
            C13545b.this = r4;
            this.f39299b = list;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC13550c abstractC13550c = C13545b.this.f39293b;
            int intValue = ((Number) this.f39299b.get(i)).intValue();
            C13553f c13553f = (C13553f) abstractC13550c;
            String mo21200g = c13553f.f39305e.mo21200g();
            if (mo21200g != null) {
                Integer valueOf = intValue != C4013R.string.incallui_reject_message_custom_option ? Integer.valueOf(intValue) : null;
                if (valueOf == null) {
                    ((AbstractC20560c) ((AbstractC19854f) c13553f.f39308h.f39767a.get()).mo11854a()).mo11034d().mo11828g();
                    AbstractC13551d abstractC13551d = (AbstractC13551d) c13553f.f57683a;
                    if (abstractC13551d == null) {
                        return;
                    }
                    abstractC13551d.mo21634T();
                    return;
                }
                C13724r c13724r = (C13724r) c13553f.f39306f;
                if (((AbstractC19230g) c13724r.f39755b.get()).mo13794c() && ((AbstractC14965w) c13724r.f39756c.get()).mo19347j()) {
                    d.w2(c13553f, (f) null, (j0) null, new C13552e(c13553f, mo21200g, valueOf, null), 3, (Object) null);
                    return;
                }
                AbstractC13762c abstractC13762c = c13553f.f39305e;
                String mo13768b = c13553f.f39307g.mo13768b(valueOf.intValue(), new Object[0]);
                l.d(mo13768b, "resourceProvider.getString(content)");
                abstractC13762c.mo21182y(mo13768b);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Inject
    public C13545b(AbstractC13550c abstractC13550c) {
        l.e(abstractC13550c, "presenter");
        this.f39293b = abstractC13550c;
        ((AbstractC20576b) abstractC13550c).f57683a = this;
    }

    @Override // p193e.p194a.p717f.p718a.p719a.p720o.AbstractC13551d
    /* renamed from: S */
    public void mo21635S() {
        Context context = this.f39292a;
        if (context != null) {
            List T = i.T(new Integer[]{Integer.valueOf(C4013R.string.incallui_reject_message_first_option), Integer.valueOf(C4013R.string.incallui_reject_message_second_option), Integer.valueOf(C4013R.string.incallui_reject_message_third_option), Integer.valueOf(C4013R.string.incallui_reject_message_custom_option)});
            g$a g_a = new g$a(context, C4013R.style.InCallUI_AlertDialog);
            g_a.m3666c(C4013R.array.incallui_button_message_options, new DialogInterface$OnClickListenerC13549d(T));
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p717f.p718a.p719a.p720o.AbstractC13551d
    /* renamed from: T */
    public void mo21634T() {
        Context context = this.f39292a;
        if (context != null) {
            EditText editText = new EditText(context);
            editText.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            int i = C4013R.color.incallui_color_white;
            Object obj = C26467a.f74235a;
            editText.setTextColor(C26467a.C26471d.m1787a(context, i));
            C19286f.m13679Y(editText, true, 0L, 2);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.addView(editText);
            linearLayout.setPadding(60, 0, 60, 0);
            g$a g_a = new g$a(context, C4013R.style.InCallUI_AlertDialog);
            g_a.m3656m(C4013R.string.incallui_reject_message_custom_option);
            AlertController.C0037b c0037b = g_a.f70854a;
            c0037b.f171u = linearLayout;
            c0037b.f170t = 0;
            g_a.m3660i(C4013R.string.incallui_reject_message_custom_send, new DialogInterface$OnClickListenerC13546a(editText));
            g_a.m3662g(C4013R.string.StrCancel, DialogInterface$OnClickListenerC13547b.f39296a);
            g_a.f70854a.f165o = new DialogInterface$OnDismissListenerC13548c(editText);
            g_a.m3652q();
        }
    }
}
