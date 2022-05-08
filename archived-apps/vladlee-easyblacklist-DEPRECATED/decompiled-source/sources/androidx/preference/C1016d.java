package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import androidx.preference.C1001ac;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.preference.d */
/* loaded from: classes-dex2jar.jar:androidx/preference/d.class */
final class C1016d extends Preference {

    /* renamed from: a */
    private long f4331a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1016d(Context context, List<Preference> list, long j) {
        super(context);
        m7485a(C1001ac.C1006e.f4158a);
        m7461d(C1001ac.C1004c.f4151a);
        m7465c(C1001ac.C1007f.f4163b);
        m7469b(999);
        ArrayList arrayList = new ArrayList();
        String str = null;
        for (Preference preference : list) {
            CharSequence v = preference.m7448v();
            boolean z = preference instanceof PreferenceGroup;
            if (z && !TextUtils.isEmpty(v)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.m7487J())) {
                if (z) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(v)) {
                str = str == null ? v : m7491D().getString(C1001ac.C1007f.f4166e, str, v);
            }
        }
        mo7473a((CharSequence) str);
        this.f4331a = j + 1000000;
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7401a(C1000ab abVar) {
        super.mo7401a(abVar);
        abVar.m7405a(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.preference.Preference
    /* renamed from: i_ */
    public final long mo7400i_() {
        return this.f4331a;
    }
}
