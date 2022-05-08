package com.mopub.nativeads;

import androidx.annotation.NonNull;
import com.mopub.mobileads.MoPubError;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeErrorCode.class */
public enum NativeErrorCode implements MoPubError {
    AD_SUCCESS("ad successfully loaded."),
    EMPTY_AD_RESPONSE("Server returned empty response."),
    INVALID_RESPONSE("Unable to parse response from server."),
    IMAGE_DOWNLOAD_FAILURE("Unable to download images associated with ad."),
    INVALID_REQUEST_URL("Invalid request url."),
    UNEXPECTED_RESPONSE_CODE("Received unexpected response code from server."),
    SERVER_ERROR_RESPONSE_CODE("Server returned erroneous response code."),
    CONNECTION_ERROR("Network is unavailable."),
    UNSPECIFIED("Unspecified error occurred."),
    NETWORK_INVALID_REQUEST("Third-party network received invalid request."),
    NETWORK_TIMEOUT("Third-party network failed to respond in a timely manner."),
    NETWORK_NO_FILL("Third-party network failed to provide an ad."),
    NETWORK_INVALID_STATE("Third-party network failed due to invalid internal state."),
    NATIVE_RENDERER_CONFIGURATION_ERROR("A required renderer was not registered for the CustomEventNative."),
    NATIVE_ADAPTER_CONFIGURATION_ERROR("CustomEventNative was configured incorrectly."),
    NATIVE_ADAPTER_NOT_FOUND("Unable to find CustomEventNative.");
    

    /* renamed from: a */
    public final String f9238a;

    /* renamed from: com.mopub.nativeads.NativeErrorCode$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeErrorCode$a.class */
    public static /* synthetic */ class C4000a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9239a = new int[NativeErrorCode.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f9239a[NativeErrorCode.NETWORK_TIMEOUT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9239a[NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9239a[NativeErrorCode.AD_SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    NativeErrorCode(String str) {
        this.f9238a = str;
    }

    @Override // com.mopub.mobileads.MoPubError
    public int getIntCode() {
        int i = C4000a.f9239a[ordinal()];
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 10000 : 0;
        }
        return 1;
    }

    @Override // java.lang.Enum
    @NonNull
    public final String toString() {
        return this.f9238a;
    }
}
