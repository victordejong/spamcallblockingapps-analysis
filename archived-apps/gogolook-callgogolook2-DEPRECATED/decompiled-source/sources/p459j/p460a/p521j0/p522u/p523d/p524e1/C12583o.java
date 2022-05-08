package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.text.Spannable;
import android.text.SpannableString;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14147s;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.u.d.e1.o */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/o.class */
public final class C12583o extends C12591r {

    /* renamed from: h */
    public final boolean f28345h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12583o(RowInfo rowInfo, String str, boolean z, boolean z2) {
        super(rowInfo, str, z);
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(str, "number");
        this.f28345h = z2;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.C12591r, p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: a */
    public Spannable mo5828a(String str, boolean z) {
        Spannable spannable;
        C15149k.m377b(str, LogsGroupRealmObject.DISPLAY_NAME);
        RowInfo.Secondary h = m5856h();
        if (h == null || !h.hasUsefulInfo) {
            String a = C14108o4.m2500a(m5857g(), m5858f());
            CharSequence b = C14147s.m2357b(m5857g(), m5858f(), str, z);
            if (!C14017g4.m2835A() || C14217x3.m2160b(a)) {
                boolean z2 = true;
                if (b != null) {
                    z2 = b.length() == 0;
                }
                spannable = !z2 ? SpannableString.valueOf(b) : this.f28345h ? SpannableString.valueOf(C14206w4.m2225a((int) R$string.calldialog_no_result_found)) : super.mo5828a(str, z);
            } else {
                spannable = C14123p4.m2438a(C14206w4.m2224a((int) R$string.calldialog_noinfo_brcarrier_incoming, a), a, C14167t.m2315a(2131099793));
            }
        } else {
            spannable = C14123p4.m2438a(m5856h().name, m5856h().highlightWord, m5856h().highlightColor);
        }
        return spannable;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.C12591r, p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j
    /* renamed from: e */
    public int mo5859e() {
        RowInfo.Secondary h = m5856h();
        int i = 1;
        if (h != null) {
            i = 1;
            if (h.hasUsefulInfo) {
                i = 2;
            }
        }
        return i;
    }
}
