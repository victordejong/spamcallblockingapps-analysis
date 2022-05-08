package com.criteo.publisher.p032y.p033b;

import androidx.annotation.NonNull;
import com.criteo.publisher.p020a0.C1930r;
import com.criteo.utils.PreferenceDataUtils;
/* renamed from: com.criteo.publisher.y.b.e */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/y/b/e.class */
public class C2173e implements AbstractC2175g {

    /* renamed from: a */
    public final C1930r f2504a;

    public C2173e(@NonNull C1930r rVar) {
        this.f2504a = rVar;
    }

    @Override // com.criteo.publisher.p032y.p033b.AbstractC2175g
    @NonNull
    /* renamed from: a */
    public Integer mo35527a() {
        return 1;
    }

    @Override // com.criteo.publisher.p032y.p033b.AbstractC2175g
    @NonNull
    /* renamed from: b */
    public String mo35526b() {
        return this.f2504a.m35996a(PreferenceDataUtils.SUBJECT_TO_GDPR, "");
    }

    @Override // com.criteo.publisher.p032y.p033b.AbstractC2175g
    @NonNull
    /* renamed from: c */
    public String mo35525c() {
        return this.f2504a.m35996a(PreferenceDataUtils.CONSENT_STRING, "");
    }

    /* renamed from: d */
    public boolean m35529d() {
        return !mo35526b().isEmpty() || !mo35525c().isEmpty();
    }
}
