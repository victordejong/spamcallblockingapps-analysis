package p459j.p460a.p463b0.p464q;

import android.text.SpannableString;
import android.text.style.StyleSpan;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.gson.UserProfile;
import p459j.p460a.p582w0.C14093n4;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.q.l */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/l.class */
public final class C11174l {

    /* renamed from: a */
    public static final int f25089a = 0;

    /* renamed from: c */
    public static final C11174l f25091c = new C11174l();

    /* renamed from: b */
    public static final int f25090b = 1;

    /* renamed from: a */
    public final int m10141a() {
        return f25089a;
    }

    /* renamed from: a */
    public final SpannableString m10140a(boolean z, int i, CharSequence charSequence, RowInfo rowInfo) {
        C15149k.m377b(charSequence, "text");
        C15149k.m377b(rowInfo, UserProfile.KEY_CONTACT_INFO_VALUE);
        SpannableString spannableString = new SpannableString(charSequence);
        String b = C14093n4.m2575b(charSequence.toString());
        if (z && b != null) {
            if (i == f25089a) {
                if (rowInfo.m28224h().type == RowInfo.Primary.Type.NUMBER) {
                    spannableString.setSpan(new StyleSpan(1), 0, b.length(), 33);
                }
            } else if (i == f25090b && rowInfo.m28223i().type == RowInfo.Secondary.Type.NUMBER) {
                spannableString.setSpan(new StyleSpan(1), 0, b.length(), 33);
            }
        }
        return spannableString;
    }

    /* renamed from: b */
    public final int m10139b() {
        return f25090b;
    }
}
