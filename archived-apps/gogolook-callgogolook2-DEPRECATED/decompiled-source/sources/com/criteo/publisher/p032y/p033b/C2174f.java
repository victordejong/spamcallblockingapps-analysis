package com.criteo.publisher.p032y.p033b;

import androidx.annotation.NonNull;
import com.criteo.publisher.p020a0.C1930r;
/* renamed from: com.criteo.publisher.y.b.f */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/y/b/f.class */
public class C2174f implements AbstractC2175g {

    /* renamed from: a */
    public final C1930r f2505a;

    public C2174f(C1930r rVar) {
        this.f2505a = rVar;
    }

    @Override // com.criteo.publisher.p032y.p033b.AbstractC2175g
    @NonNull
    /* renamed from: a */
    public Integer mo35527a() {
        return 2;
    }

    @Override // com.criteo.publisher.p032y.p033b.AbstractC2175g
    @NonNull
    /* renamed from: b */
    public String mo35526b() {
        int a = this.f2505a.m35997a("IABTCF_gdprApplies", -1);
        return a != -1 ? String.valueOf(a) : "";
    }

    @Override // com.criteo.publisher.p032y.p033b.AbstractC2175g
    @NonNull
    /* renamed from: c */
    public String mo35525c() {
        return this.f2505a.m35996a("IABTCF_TCString", "");
    }

    /* renamed from: d */
    public boolean m35528d() {
        return !mo35526b().isEmpty() || !mo35525c().isEmpty();
    }
}
