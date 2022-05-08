package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.BackendResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/AutoValue_BackendResponse.class */
final class AutoValue_BackendResponse extends BackendResponse {

    /* renamed from: a */
    private final BackendResponse.Status f6665a;

    /* renamed from: b */
    private final long f6666b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_BackendResponse(BackendResponse.Status status, long j) {
        if (status != null) {
            this.f6665a = status;
            this.f6666b = j;
            return;
        }
        throw new NullPointerException("Null status");
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    /* renamed from: b */
    public long mo15396b() {
        return this.f6666b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    /* renamed from: c */
    public BackendResponse.Status mo15395c() {
        return this.f6665a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendResponse)) {
            return false;
        }
        BackendResponse backendResponse = (BackendResponse) obj;
        if (!this.f6665a.equals(backendResponse.mo15395c()) || this.f6666b != backendResponse.mo15396b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f6665a.hashCode();
        long j = this.f6666b;
        return ((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f6665a + ", nextRequestWaitMillis=" + this.f6666b + "}";
    }
}
