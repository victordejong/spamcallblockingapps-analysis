package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import gogolook.callgogolook2.R$bool;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p474c0.AbstractC11516a;
/* renamed from: j.a.c0.h.m */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/m.class */
public class C12186m extends AbstractC12180l {

    /* renamed from: b */
    public final int f27340b;

    public C12186m(Context context, int i) {
        super(context);
        this.f27340b = i;
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: a */
    public String mo6865a() {
        return "buglesub_" + String.valueOf(this.f27340b);
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: a */
    public void mo6864a(int i, int i2) {
        if (i == -1) {
            m6863a(AbstractC12178k.m6912b(), "delivery_reports", R$string.delivery_reports_pref_key, R$bool.delivery_reports_pref_default);
            m6863a(AbstractC12178k.m6912b(), "group_messaging", R$string.group_mms_pref_key, R$bool.group_mms_pref_default);
            if (AbstractC12181l0.m6886t().mo6877c() == 1) {
                m6862a(AbstractC12178k.m6912b(), "mms_phone_number", R$string.mms_phone_number_pref_key, (String) null);
            }
        }
    }

    /* renamed from: a */
    public final void m6863a(AbstractC12178k kVar, String str, int i, int i2) {
        Resources resources = AbstractC11516a.m9413n().mo9412a().getResources();
        boolean z = resources.getBoolean(i2);
        boolean a = kVar.mo6906a(str, z);
        if (a != z) {
            mo6902b(resources.getString(i), a);
        }
    }

    /* renamed from: a */
    public final void m6862a(AbstractC12178k kVar, String str, int i, String str2) {
        Resources resources = AbstractC11516a.m9413n().mo9412a().getResources();
        String a = kVar.mo6907a(str, str2);
        if (!TextUtils.equals(a, str2)) {
            mo6903b(resources.getString(i), a);
        }
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12180l
    /* renamed from: b */
    public void mo6861b(String str) {
        super.mo6861b(str);
        C12151d.m6999b(str.startsWith("buglesub_"));
    }
}
