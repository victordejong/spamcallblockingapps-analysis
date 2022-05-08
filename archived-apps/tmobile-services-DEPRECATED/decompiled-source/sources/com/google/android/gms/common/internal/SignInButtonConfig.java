package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/SignInButtonConfig.class */
public class SignInButtonConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInButtonConfig> CREATOR = new zao();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7525f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final int f7526g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final int f7527h;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: i */
    private final Scope[] f7528i;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public SignInButtonConfig(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) Scope[] scopeArr) {
        this.f7525f = i;
        this.f7526g = i2;
        this.f7527h = i3;
        this.f7528i = scopeArr;
    }

    public SignInButtonConfig(int i, int i2, Scope[] scopeArr) {
        this(1, i, i2, null);
    }

    /* renamed from: B */
    public int m14511B() {
        return this.f7526g;
    }

    /* renamed from: I */
    public int m14510I() {
        return this.f7527h;
    }

    @Deprecated
    /* renamed from: W */
    public Scope[] m14509W() {
        return this.f7528i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7525f);
        SafeParcelWriter.m14453k(parcel, 2, m14511B());
        SafeParcelWriter.m14453k(parcel, 3, m14510I());
        SafeParcelWriter.m14444t(parcel, 4, m14509W(), i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
