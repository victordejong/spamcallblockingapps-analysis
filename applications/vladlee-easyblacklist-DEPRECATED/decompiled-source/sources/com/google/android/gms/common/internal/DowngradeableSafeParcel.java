package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/DowngradeableSafeParcel.class */
public abstract class DowngradeableSafeParcel extends AbstractSafeParcelable implements ReflectedParcelable {

    /* renamed from: a */
    private static final Object f6751a = new Object();

    /* renamed from: b */
    private static ClassLoader f6752b = null;

    /* renamed from: c */
    private static Integer f6753c = null;

    /* renamed from: d */
    private boolean f6754d = false;

    public void setShouldDowngrade(boolean z) {
        this.f6754d = z;
    }
}
