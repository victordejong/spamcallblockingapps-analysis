package androidx.core.app;

import android.app.RemoteInput;
import android.os.Bundle;
import java.util.Set;
/* renamed from: androidx.core.app.m */
/* loaded from: classes-dex2jar.jar:androidx/core/app/m.class */
public final class C0619m {

    /* renamed from: a */
    private final String f2872a;

    /* renamed from: b */
    private final CharSequence f2873b;

    /* renamed from: c */
    private final CharSequence[] f2874c;

    /* renamed from: d */
    private final boolean f2875d;

    /* renamed from: e */
    private final Bundle f2876e;

    /* renamed from: f */
    private final Set<String> f2877f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static RemoteInput[] m8703a(C0619m[] mVarArr) {
        if (mVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[mVarArr.length];
        for (int i = 0; i < mVarArr.length; i++) {
            C0619m mVar = mVarArr[i];
            remoteInputArr[i] = new RemoteInput.Builder(mVar.f2872a).setLabel(mVar.f2873b).setChoices(mVar.f2874c).setAllowFreeFormInput(mVar.f2875d).addExtras(mVar.f2876e).build();
        }
        return remoteInputArr;
    }

    /* renamed from: a */
    public final String m8704a() {
        return this.f2872a;
    }

    /* renamed from: b */
    public final CharSequence m8702b() {
        return this.f2873b;
    }

    /* renamed from: c */
    public final CharSequence[] m8701c() {
        return this.f2874c;
    }

    /* renamed from: d */
    public final Set<String> m8700d() {
        return this.f2877f;
    }

    /* renamed from: e */
    public final boolean m8699e() {
        return this.f2875d;
    }

    /* renamed from: f */
    public final Bundle m8698f() {
        return this.f2876e;
    }
}
