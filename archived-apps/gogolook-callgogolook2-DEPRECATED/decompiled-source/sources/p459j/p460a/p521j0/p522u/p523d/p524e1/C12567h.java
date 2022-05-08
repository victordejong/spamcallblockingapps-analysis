package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.text.Spannable;
import android.text.SpannableString;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p459j.p460a.p582w0.C14147s;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.u.d.e1.h */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/h.class */
public final class C12567h extends C12591r {

    /* renamed from: h */
    public final boolean f28313h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12567h(RowInfo rowInfo, String str, boolean z, boolean z2) {
        super(rowInfo, str, z);
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(str, "number");
        this.f28313h = z2;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.C12591r, p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    public Spannable mo5828a(String str, boolean z) {
        C15149k.m377b(str, LogsGroupRealmObject.DISPLAY_NAME);
        SpannableString spannableString = null;
        if (this.f28313h) {
            CharSequence b = C14147s.m2357b(m5857g(), m5858f(), str, z);
            spannableString = null;
            if (b != null) {
                if (!(b.length() > 0)) {
                    b = null;
                }
                spannableString = null;
                if (b != null) {
                    spannableString = SpannableString.valueOf(b);
                }
            }
        }
        return spannableString;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.C12591r, p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: d */
    public boolean mo5827d() {
        return !this.f28313h;
    }
}
