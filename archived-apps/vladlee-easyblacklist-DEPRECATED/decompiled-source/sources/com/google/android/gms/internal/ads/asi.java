package com.google.android.gms.internal.ads;

import android.os.Environment;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asi.class */
final class asi implements Callable<Boolean> {
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Boolean call() {
        return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
    }
}
