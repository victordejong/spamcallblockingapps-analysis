package p081h.p115c.p116a;

import androidx.annotation.NonNull;
/* renamed from: h.c.a.e */
/* loaded from: classes-dex2jar.jar:h/c/a/e.class */
public enum EnumC5731e {
    NETWORK_ERROR("Network fail"),
    BAD_REQUEST("Bad request or error parameters"),
    INTERNAL_SERVER_ERROR("Ad server error"),
    INVALID_JSON("The ad contains invalid json format"),
    WEBVIEW_ERROR("Webview receives error during loading resources"),
    NO_AVAILABLE_ACTIVITY_FOR_INTENT("No available activity for such intent"),
    UNKNOWN_ERROR("Unknown error");
    

    /* renamed from: a */
    public final String f14352a;

    EnumC5731e(String str) {
        this.f14352a = str;
    }

    @Override // java.lang.Enum
    @NonNull
    public final String toString() {
        return this.f14352a;
    }
}
