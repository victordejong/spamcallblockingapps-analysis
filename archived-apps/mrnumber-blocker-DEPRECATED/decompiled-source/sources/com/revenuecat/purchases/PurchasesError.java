package com.revenuecat.purchases;

import kotlin.w.c.g;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PurchasesError.class */
public final class PurchasesError {
    private final PurchasesErrorCode code;
    private final String message;
    private final String underlyingErrorMessage;

    public PurchasesError(PurchasesErrorCode purchasesErrorCode, String str) {
        k.f(purchasesErrorCode, "code");
        this.code = purchasesErrorCode;
        this.underlyingErrorMessage = str;
        this.message = purchasesErrorCode.getDescription();
    }

    public /* synthetic */ PurchasesError(PurchasesErrorCode purchasesErrorCode, String str, int i, g gVar) {
        this(purchasesErrorCode, (i & 2) != 0 ? null : str);
    }

    public final PurchasesErrorCode getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getUnderlyingErrorMessage() {
        return this.underlyingErrorMessage;
    }

    public String toString() {
        return "PurchasesError(code=" + this.code + ", underlyingErrorMessage=" + this.underlyingErrorMessage + ", message='" + this.message + "')";
    }
}
