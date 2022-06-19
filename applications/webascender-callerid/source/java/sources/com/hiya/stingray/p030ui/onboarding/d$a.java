package com.hiya.stingray.p030ui.onboarding;

import android.os.Bundle;
import com.appsflyer.internal.referrer.Payload;
import com.hiya.stingray.manager.d3;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.onboarding.d$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/onboarding/d$a.class */
public final class d$a {
    private d$a() {
    }

    public /* synthetic */ d$a(g gVar) {
        this();
    }

    /* renamed from: b */
    public static /* synthetic */ d m1173b(d$a d_a, d3.b bVar, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return d_a.m1174a(bVar, z);
    }

    /* renamed from: a */
    public final d m1174a(d3.b bVar, boolean z) {
        k.g(bVar, Payload.TYPE);
        d dVar = new d();
        Bundle bundle = new Bundle();
        bundle.putSerializable("EXTRA_TYPE", bVar);
        bundle.putBoolean("EXTRA_SETTINGS", z);
        dVar.setArguments(bundle);
        return dVar;
    }
}
