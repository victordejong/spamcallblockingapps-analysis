package com.google.firebase.iid;

import com.google.android.gms.common.internal.Objects;
import java.security.KeyPair;
/* renamed from: com.google.firebase.iid.aw */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/aw.class */
final class C3209aw {

    /* renamed from: a */
    private final KeyPair f19103a;

    /* renamed from: b */
    private final long f19104b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3209aw(KeyPair keyPair, long j) {
        this.f19103a = keyPair;
        this.f19104b = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final KeyPair m511a() {
        return this.f19103a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3209aw)) {
            return false;
        }
        C3209aw awVar = (C3209aw) obj;
        return this.f19104b == awVar.f19104b && this.f19103a.getPublic().equals(awVar.f19103a.getPublic()) && this.f19103a.getPrivate().equals(awVar.f19103a.getPrivate());
    }

    public final int hashCode() {
        return Objects.hashCode(this.f19103a.getPublic(), this.f19103a.getPrivate(), Long.valueOf(this.f19104b));
    }
}
