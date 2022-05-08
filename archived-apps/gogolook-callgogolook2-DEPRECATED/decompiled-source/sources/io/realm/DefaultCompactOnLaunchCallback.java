package io.realm;
/* loaded from: classes3-dex2jar.jar:io/realm/DefaultCompactOnLaunchCallback.class */
public class DefaultCompactOnLaunchCallback implements CompactOnLaunchCallback {
    @Override // io.realm.CompactOnLaunchCallback
    public boolean shouldCompact(long j, long j2) {
        return j > 52428800 && ((double) j2) / ((double) j) < 0.5d;
    }
}
