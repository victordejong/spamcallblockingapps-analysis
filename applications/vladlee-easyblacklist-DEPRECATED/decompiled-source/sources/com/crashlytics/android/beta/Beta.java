package com.crashlytics.android.beta;

import java.util.Collections;
import java.util.Map;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0035p;
import p000a.p001a.p002a.p003a.p004a.p006b.C0043x;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/beta/Beta.class */
public class Beta extends AbstractC0147l<Boolean> implements AbstractC0035p {
    public static final String TAG = "Beta";

    public static Beta getInstance() {
        return (Beta) C0137d.m10161a(Beta.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p000a.p001a.p002a.p003a.AbstractC0147l
    public Boolean doInBackground() {
        C0137d.m10155c().mo10135a(TAG, "Beta kit initializing...");
        return Boolean.TRUE;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0035p
    public Map<C0043x.EnumC0044a, String> getDeviceIdentifiers() {
        return Collections.emptyMap();
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0147l
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0147l
    public String getVersion() {
        return "1.2.10.27";
    }
}
