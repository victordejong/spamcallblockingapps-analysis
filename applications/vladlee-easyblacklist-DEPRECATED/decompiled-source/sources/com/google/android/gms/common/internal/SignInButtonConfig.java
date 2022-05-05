package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/SignInButtonConfig.class */
public class SignInButtonConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInButtonConfig> CREATOR = new zao();

    /* renamed from: a */
    private final int f6808a;

    /* renamed from: b */
    private final int f6809b;

    /* renamed from: c */
    private final int f6810c;
    @Deprecated

    /* renamed from: d */
    private final Scope[] f6811d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignInButtonConfig(int i, int i2, int i3, Scope[] scopeArr) {
        this.f6808a = i;
        this.f6809b = i2;
        this.f6810c = i3;
        this.f6811d = scopeArr;
    }

    public SignInButtonConfig(int i, int i2, Scope[] scopeArr) {
        this(1, i, i2, null);
    }

    public int getButtonSize() {
        return this.f6809b;
    }

    public int getColorScheme() {
        return this.f6810c;
    }

    @Deprecated
    public Scope[] getScopes() {
        return this.f6811d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6808a);
        SafeParcelWriter.writeInt(parcel, 2, getButtonSize());
        SafeParcelWriter.writeInt(parcel, 3, getColorScheme());
        SafeParcelWriter.writeTypedArray(parcel, 4, getScopes(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
