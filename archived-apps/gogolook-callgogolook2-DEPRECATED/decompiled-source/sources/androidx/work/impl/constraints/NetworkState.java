package androidx.work.impl.constraints;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/NetworkState.class */
public class NetworkState {
    public boolean mIsConnected;
    public boolean mIsMetered;
    public boolean mIsNotRoaming;
    public boolean mIsValidated;

    public NetworkState(boolean z, boolean z2, boolean z3, boolean z4) {
        this.mIsConnected = z;
        this.mIsValidated = z2;
        this.mIsMetered = z3;
        this.mIsNotRoaming = z4;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkState)) {
            return false;
        }
        NetworkState networkState = (NetworkState) obj;
        if (!(this.mIsConnected == networkState.mIsConnected && this.mIsValidated == networkState.mIsValidated && this.mIsMetered == networkState.mIsMetered && this.mIsNotRoaming == networkState.mIsNotRoaming)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.mIsConnected ? 1 : 0;
        int i2 = i;
        if (this.mIsValidated) {
            i2 = i + 16;
        }
        int i3 = i2;
        if (this.mIsMetered) {
            i3 = i2 + 256;
        }
        int i4 = i3;
        if (this.mIsNotRoaming) {
            i4 = i3 + 4096;
        }
        return i4;
    }

    public boolean isConnected() {
        return this.mIsConnected;
    }

    public boolean isMetered() {
        return this.mIsMetered;
    }

    public boolean isNotRoaming() {
        return this.mIsNotRoaming;
    }

    public boolean isValidated() {
        return this.mIsValidated;
    }

    @NonNull
    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.mIsConnected), Boolean.valueOf(this.mIsValidated), Boolean.valueOf(this.mIsMetered), Boolean.valueOf(this.mIsNotRoaming));
    }
}
