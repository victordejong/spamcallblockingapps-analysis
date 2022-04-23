package com.crashlytics.android.core;

import java.io.InputStream;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0102i;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsPinningInfoProvider.class */
class CrashlyticsPinningInfoProvider implements AbstractC0102i {
    private final PinningInfoProvider pinningInfo;

    public CrashlyticsPinningInfoProvider(PinningInfoProvider pinningInfoProvider) {
        this.pinningInfo = pinningInfoProvider;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0102i
    public String getKeyStorePassword() {
        return this.pinningInfo.getKeyStorePassword();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0102i
    public InputStream getKeyStoreStream() {
        return this.pinningInfo.getKeyStoreStream();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0102i
    public long getPinCreationTimeInMillis() {
        return -1L;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0102i
    public String[] getPins() {
        return this.pinningInfo.getPins();
    }
}
