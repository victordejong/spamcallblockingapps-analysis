package com.google.firebase.analytics.connector.internal;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AbstractC3140a;
import com.google.firebase.components.AbstractC3159h;
import com.google.firebase.components.C3150b;
import com.google.firebase.components.C3167n;
import com.google.firebase.p071a.AbstractC3138d;
import com.google.firebase.p074d.C3181f;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar.class */
public class AnalyticsConnectorRegistrar implements AbstractC3159h {
    @Override // com.google.firebase.components.AbstractC3159h
    public List<C3150b<?>> getComponents() {
        return Arrays.asList(C3150b.m636a(AbstractC3140a.class).m623a(C3167n.m594a(FirebaseApp.class)).m623a(C3167n.m594a(Context.class)).m623a(C3167n.m594a(AbstractC3138d.class)).m624a(C3144a.f18967a).m622b().m621c(), C3181f.m569a("fire-analytics", "17.2.1"));
    }
}
