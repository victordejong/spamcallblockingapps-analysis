package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
/* renamed from: androidx.fragment.app.g */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/g.class */
public abstract class AbstractC0272g {
    @Deprecated
    /* renamed from: b */
    public Fragment m5782b(Context context, String str, Bundle bundle) {
        return Fragment.instantiate(context, str, bundle);
    }

    /* renamed from: c */
    public abstract View m5781c(int i);

    /* renamed from: d */
    public abstract boolean m5780d();
}
