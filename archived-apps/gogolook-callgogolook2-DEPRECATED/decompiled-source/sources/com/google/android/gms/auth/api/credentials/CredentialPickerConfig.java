package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.p227e.p229e.C6727d;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig.class */
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new C6727d();

    /* renamed from: a */
    public final int f6391a;

    /* renamed from: b */
    public final boolean f6392b;

    /* renamed from: c */
    public final boolean f6393c;

    /* renamed from: d */
    public final int f6394d;

    /* renamed from: com.google.android.gms.auth.api.credentials.CredentialPickerConfig$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialPickerConfig$a.class */
    public static class C3557a {

        /* renamed from: a */
        public boolean f6395a = false;

        /* renamed from: b */
        public boolean f6396b = true;

        /* renamed from: c */
        public int f6397c = 1;

        /* renamed from: a */
        public CredentialPickerConfig m32070a() {
            return new CredentialPickerConfig(this);
        }
    }

    public CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3, int i2) {
        this.f6391a = i;
        this.f6392b = z;
        this.f6393c = z2;
        int i3 = 3;
        if (i < 2) {
            if (!z3) {
                i3 = 1;
            }
            this.f6394d = i3;
            return;
        }
        this.f6394d = i2;
    }

    public CredentialPickerConfig(C3557a aVar) {
        this(2, aVar.f6395a, aVar.f6396b, false, aVar.f6397c);
    }

    /* renamed from: H */
    public final boolean m32073H() {
        return this.f6392b;
    }

    /* renamed from: I */
    public final boolean m32072I() {
        return this.f6393c;
    }

    @Deprecated
    /* renamed from: c */
    public final boolean m32071c() {
        return this.f6394d == 3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21212a(parcel, 1, m32073H());
        C7031b.m21212a(parcel, 2, m32072I());
        C7031b.m21212a(parcel, 3, m32071c());
        C7031b.m21225a(parcel, 4, this.f6394d);
        C7031b.m21225a(parcel, 1000, this.f6391a);
        C7031b.m21229a(parcel, a);
    }
}
