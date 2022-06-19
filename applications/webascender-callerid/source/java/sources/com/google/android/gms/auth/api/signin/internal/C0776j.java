package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC0816d;
import com.google.android.gms.common.api.AbstractC0818e;
import com.google.android.gms.common.api.C0820f;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C0834f;
import com.google.android.gms.common.p024l.C0945a;
/* renamed from: com.google.android.gms.auth.api.signin.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/j.class */
public final class C0776j {

    /* renamed from: a */
    private static C0945a f3269a = new C0945a("GoogleSignInCommon", new String[0]);

    /* renamed from: a */
    public static Intent m3759a(Context context, GoogleSignInOptions googleSignInOptions) {
        f3269a.m3222a("getSignInIntent()", new Object[0]);
        Parcelable signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    /* renamed from: b */
    public static AbstractC0818e<Status> m3758b(AbstractC0816d abstractC0816d, Context context, boolean z) {
        f3269a.m3222a("Signing out", new Object[0]);
        m3757c(context);
        return z ? C0820f.m3643b(Status.j, abstractC0816d) : abstractC0816d.m3664h(new k(abstractC0816d));
    }

    /* renamed from: c */
    private static void m3757c(Context context) {
        C0778q.m3751c(context).m3753a();
        for (AbstractC0816d abstractC0816d : AbstractC0816d.m3663i()) {
            abstractC0816d.m3658n();
        }
        C0834f.m3603a();
    }

    /* renamed from: d */
    public static AbstractC0818e<Status> m3756d(AbstractC0816d abstractC0816d, Context context, boolean z) {
        f3269a.m3222a("Revoking access", new Object[0]);
        String m3767e = C0773c.m3770b(context).m3767e();
        m3757c(context);
        return z ? RunnableC0775g.m3760a(m3767e) : abstractC0816d.m3664h(new l(abstractC0816d));
    }
}
