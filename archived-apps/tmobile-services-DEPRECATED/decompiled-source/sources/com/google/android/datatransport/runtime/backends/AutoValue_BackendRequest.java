package com.google.android.datatransport.runtime.backends;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/AutoValue_BackendRequest.class */
final class AutoValue_BackendRequest extends BackendRequest {

    /* renamed from: a */
    private final Iterable<EventInternal> f6661a;

    /* renamed from: b */
    private final byte[] f6662b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder.class */
    public static final class Builder extends BackendRequest.Builder {

        /* renamed from: a */
        private Iterable<EventInternal> f6663a;

        /* renamed from: b */
        private byte[] f6664b;

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        /* renamed from: a */
        public BackendRequest mo15400a() {
            String str = "";
            if (this.f6663a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new AutoValue_BackendRequest(this.f6663a, this.f6664b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        /* renamed from: b */
        public BackendRequest.Builder mo15399b(Iterable<EventInternal> iterable) {
            if (iterable != null) {
                this.f6663a = iterable;
                return this;
            }
            throw new NullPointerException("Null events");
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        /* renamed from: c */
        public BackendRequest.Builder mo15398c(@Nullable byte[] bArr) {
            this.f6664b = bArr;
            return this;
        }
    }

    private AutoValue_BackendRequest(Iterable<EventInternal> iterable, @Nullable byte[] bArr) {
        this.f6661a = iterable;
        this.f6662b = bArr;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    /* renamed from: b */
    public Iterable<EventInternal> mo15402b() {
        return this.f6661a;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    @Nullable
    /* renamed from: c */
    public byte[] mo15401c() {
        return this.f6662b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.f6662b, r0 instanceof com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest ? ((com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest) r0).f6662b : r0.mo15401c()) != false) goto L_0x004c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.datatransport.runtime.backends.BackendRequest
            if (r0 == 0) goto L_0x004e
            r0 = r4
            com.google.android.datatransport.runtime.backends.BackendRequest r0 = (com.google.android.datatransport.runtime.backends.BackendRequest) r0
            r4 = r0
            r0 = r3
            java.lang.Iterable<com.google.android.datatransport.runtime.EventInternal> r0 = r0.f6661a
            r1 = r4
            java.lang.Iterable r1 = r1.mo15402b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004a
            r0 = r3
            byte[] r0 = r0.f6662b
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest
            if (r0 == 0) goto L_0x003a
            r0 = r4
            com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest r0 = (com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest) r0
            byte[] r0 = r0.f6662b
            r4 = r0
            goto L_0x003f
        L_0x003a:
            r0 = r4
            byte[] r0 = r0.mo15401c()
            r4 = r0
        L_0x003f:
            r0 = r6
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L_0x004a
            goto L_0x004c
        L_0x004a:
            r0 = 0
            r5 = r0
        L_0x004c:
            r0 = r5
            return r0
        L_0x004e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((this.f6661a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f6662b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f6661a + ", extras=" + Arrays.toString(this.f6662b) + "}";
    }
}
