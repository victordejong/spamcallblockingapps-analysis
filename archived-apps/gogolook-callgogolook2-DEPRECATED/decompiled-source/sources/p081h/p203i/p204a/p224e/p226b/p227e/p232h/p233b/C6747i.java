package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6858e;
import p081h.p203i.p204a.p224e.p235d.p243o.C7051a;
/* renamed from: h.i.a.e.b.e.h.b.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/i.class */
public final class C6747i {

    /* renamed from: a */
    public static C7051a f16637a = new C7051a("GoogleSignInCommon", new String[0]);

    /* renamed from: a */
    public static Intent m21956a(Context context, GoogleSignInOptions googleSignInOptions) {
        f16637a.m21191a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    /* renamed from: a */
    public static AbstractC6829g<Status> m21955a(AbstractC6825f fVar, Context context, boolean z) {
        f16637a.m21191a("Revoking access", new Object[0]);
        String d = C6740b.m21973a(context).m21964d();
        m21957a(context);
        return z ? RunnableC6743e.m21961a(d) : fVar.mo21641b((AbstractC6825f) new C6748j(fVar));
    }

    /* renamed from: a */
    public static void m21957a(Context context) {
        C6751m.m21953a(context).m21954a();
        for (AbstractC6825f fVar : AbstractC6825f.m21826i()) {
            fVar.mo21635h();
        }
        C6858e.m21747d();
    }
}
