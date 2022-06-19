package p193e.p194a.p852i.p867c0.p868o;

import android.text.Editable;
import android.text.TextWatcher;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.i.c0.o.c */
/* loaded from: classes3-dex2jar.jar:e/a/i/c0/o/c.class */
public final class C15066c implements TextWatcher {

    /* renamed from: a */
    public final String f43011a;

    /* renamed from: b */
    public final AbstractC15068e f43012b;

    public C15066c(String str, AbstractC15068e abstractC15068e) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(abstractC15068e, "callback");
        this.f43011a = str;
        this.f43012b = abstractC15068e;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        l.e(editable, "e");
        this.f43012b.m19184S(this.f43011a, editable.toString());
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
