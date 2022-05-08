package androidx.preference;

import androidx.preference.Preference;
import com.google.android.gms.common.api.Api;
/* renamed from: androidx.preference.w */
/* loaded from: classes-dex2jar.jar:androidx/preference/w.class */
final class C1040w implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ PreferenceGroup f4382a;

    /* renamed from: b */
    final /* synthetic */ C1036t f4383b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1040w(C1036t tVar, PreferenceGroup preferenceGroup) {
        this.f4383b = tVar;
        this.f4382a = preferenceGroup;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        this.f4382a.m7429h(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        this.f4383b.mo7377a();
        return true;
    }
}
