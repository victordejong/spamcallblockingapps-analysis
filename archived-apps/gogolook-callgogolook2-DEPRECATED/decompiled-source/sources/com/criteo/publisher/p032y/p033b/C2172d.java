package com.criteo.publisher.p032y.p033b;

import android.content.Context;
import android.preference.PreferenceManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.p020a0.C1930r;
/* renamed from: com.criteo.publisher.y.b.d */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/y/b/d.class */
public class C2172d {
    @NonNull

    /* renamed from: a */
    public final C2176h f2503a;

    public C2172d(@NonNull Context context) {
        this(new C2176h(new C1930r(PreferenceManager.getDefaultSharedPreferences(context))));
    }

    @VisibleForTesting
    public C2172d(@NonNull C2176h hVar) {
        this.f2503a = hVar;
    }

    @Nullable
    /* renamed from: a */
    public AbstractC2171c m35530a() {
        AbstractC2175g a = this.f2503a.m35524a();
        Boolean bool = null;
        if (a == null) {
            return null;
        }
        String b = a.mo35526b();
        String c = a.mo35525c();
        if (!b.isEmpty()) {
            bool = Boolean.valueOf("1".equals(b));
        }
        return AbstractC2171c.m35534a(c, bool, a.mo35527a());
    }
}
