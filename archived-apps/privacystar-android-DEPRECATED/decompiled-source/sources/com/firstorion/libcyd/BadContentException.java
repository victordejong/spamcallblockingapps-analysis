package com.firstorion.libcyd;

import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/BadContentException.class */
final class BadContentException extends Exception {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BadContentException(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BadContentException(String str, JSONException jSONException) {
        super(str, jSONException);
    }
}
