package p193e.p194a.p613c0;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Arrays;
import java.util.Locale;
import p193e.p194a.p1011l.p1025p2.AbstractC17140o0;
import p193e.p194a.p372b0.p412h.C8447c;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.c0.m */
/* loaded from: classes4-dex2jar.jar:e/a/c0/m.class */
public final class View$OnClickListenerC10919m implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C10902a f32427a;

    /* renamed from: b */
    public final /* synthetic */ EditText f32428b;

    /* renamed from: c */
    public final /* synthetic */ C10921o f32429c;

    /* renamed from: d */
    public final /* synthetic */ TextView f32430d;

    public View$OnClickListenerC10919m(C10902a c10902a, EditText editText, C10921o c10921o, TextView textView, String str) {
        this.f32427a = c10902a;
        this.f32428b = editText;
        this.f32429c = c10921o;
        this.f32430d = textView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        EditText editText = this.f32428b;
        l.d(editText, "variantNumber");
        Editable text = editText.getText();
        String obj = text != null ? text.toString() : null;
        if (obj == null) {
            obj = "";
        }
        String obj2 = v.g0(obj).toString();
        C8447c c8447c = this.f32427a.f32375g;
        if (c8447c == null) {
            l.l("abTestConfigSettings");
            throw null;
        }
        c8447c.putString(this.f32429c.f32431d.f32396b, obj2);
        TextView textView = this.f32430d;
        l.d(textView, "variantValue");
        String format = String.format(Locale.ENGLISH, "Value: >%s<", Arrays.copyOf(new Object[]{this.f32429c.m25510b()}, 1));
        l.d(format, "java.lang.String.format(locale, format, *args)");
        textView.setText(format);
        AbstractC17140o0 abstractC17140o0 = this.f32427a.f32377i;
        if (abstractC17140o0 != null) {
            abstractC17140o0.mo16475c();
        } else {
            l.l("premiumProductsRepository");
            throw null;
        }
    }
}
