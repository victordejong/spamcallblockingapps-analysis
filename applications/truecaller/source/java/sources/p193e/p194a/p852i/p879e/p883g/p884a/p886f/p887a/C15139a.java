package p193e.p194a.p852i.p879e.p883g.p884a.p886f.p887a;

import android.text.Editable;
import android.text.TextWatcher;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p852i.p879e.p883g.p884a.p886f.p888b.AbstractC15142h;
import s1.z.c.l;
/* renamed from: e.a.i.e.g.a.f.a.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/g/a/f/a/a.class */
public final class C15139a implements TextWatcher {

    /* renamed from: a */
    public final String f43112a;

    /* renamed from: b */
    public final AbstractC15142h f43113b;

    public C15139a(String str, AbstractC15142h abstractC15142h) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(abstractC15142h, "callback");
        this.f43112a = str;
        this.f43113b = abstractC15142h;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        l.e(editable, "e");
        this.f43113b.m19127S(this.f43112a, editable.toString());
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
