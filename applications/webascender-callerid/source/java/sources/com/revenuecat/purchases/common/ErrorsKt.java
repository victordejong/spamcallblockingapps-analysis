package com.revenuecat.purchases.common;

import com.revenuecat.purchases.PurchasesError;
import com.revenuecat.purchases.PurchasesErrorCode;
import com.revenuecat.purchases.common.HTTPClient;
import java.io.IOException;
import java.util.Objects;
import kotlin.NoWhenBranchMatchedException;
import kotlin.w.c.k;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/ErrorsKt.class */
public final class ErrorsKt {

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/ErrorsKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BackendErrorCode.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[BackendErrorCode.BackendInvalidPlatform.ordinal()] = 1;
            iArr[BackendErrorCode.BackendStoreProblem.ordinal()] = 2;
            iArr[BackendErrorCode.BackendCannotTransferPurchase.ordinal()] = 3;
            iArr[BackendErrorCode.BackendInvalidReceiptToken.ordinal()] = 4;
            iArr[BackendErrorCode.BackendInvalidAppStoreSharedSecret.ordinal()] = 5;
            iArr[BackendErrorCode.BackendInvalidPlayStoreCredentials.ordinal()] = 6;
            iArr[BackendErrorCode.BackendInvalidAuthToken.ordinal()] = 7;
            iArr[BackendErrorCode.BackendInvalidAPIKey.ordinal()] = 8;
            iArr[BackendErrorCode.BackendInvalidPaymentModeOrIntroPriceNotProvided.ordinal()] = 9;
            iArr[BackendErrorCode.BackendProductIdForGoogleReceiptNotProvided.ordinal()] = 10;
            iArr[BackendErrorCode.BackendEmptyAppUserId.ordinal()] = 11;
            iArr[BackendErrorCode.BackendPlayStoreQuotaExceeded.ordinal()] = 12;
            iArr[BackendErrorCode.BackendPlayStoreInvalidPackageName.ordinal()] = 13;
            iArr[BackendErrorCode.BackendPlayStoreGenericError.ordinal()] = 14;
            iArr[BackendErrorCode.BackendUserIneligibleForPromoOffer.ordinal()] = 15;
            iArr[BackendErrorCode.BackendInvalidAppleSubscriptionKey.ordinal()] = 16;
            iArr[BackendErrorCode.BackendInvalidSubscriberAttributes.ordinal()] = 17;
            iArr[BackendErrorCode.BackendInvalidSubscriberAttributesBody.ordinal()] = 18;
            iArr[BackendErrorCode.BackendBadRequest.ordinal()] = 19;
            iArr[BackendErrorCode.BackendInternalServerError.ordinal()] = 20;
        }
    }

    public static final PurchasesError billingResponseToPurchasesError(int i, String str) {
        PurchasesErrorCode purchasesErrorCode;
        k.f(str, "underlyingErrorMessage");
        switch (i) {
            case -3:
            case -1:
            case 2:
            case 6:
                purchasesErrorCode = PurchasesErrorCode.StoreProblemError;
                break;
            case -2:
            case 3:
            case 8:
                purchasesErrorCode = PurchasesErrorCode.PurchaseNotAllowedError;
                break;
            case 0:
                purchasesErrorCode = PurchasesErrorCode.UnknownError;
                break;
            case 1:
                purchasesErrorCode = PurchasesErrorCode.PurchaseCancelledError;
                break;
            case 4:
                purchasesErrorCode = PurchasesErrorCode.ProductNotAvailableForPurchaseError;
                break;
            case 5:
                purchasesErrorCode = PurchasesErrorCode.PurchaseInvalidError;
                break;
            case 7:
                purchasesErrorCode = PurchasesErrorCode.ProductAlreadyPurchasedError;
                break;
            default:
                purchasesErrorCode = PurchasesErrorCode.UnknownError;
                break;
        }
        return new PurchasesError(purchasesErrorCode, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004e, code lost:
        if (r7 != null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String getBillingResponseCodeName(int r3) {
        /*
            java.lang.Class<com.android.billingclient.api.c$a> r0 = com.android.billingclient.api.AbstractC0574c.AbstractC0575a.class
            java.lang.reflect.Field[] r0 = r0.getDeclaredFields()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "allPossibleBillingResponseCodes"
            kotlin.w.c.k.e(r0, r1)
            r0 = r4
            int r0 = r0.length
            r5 = r0
            r0 = 0
            r6 = r0
        L11:
            r0 = r6
            r1 = r5
            if (r0 >= r1) goto L3d
            r0 = r4
            r1 = r6
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            r1 = r7
            int r0 = r0.getInt(r1)
            r1 = r3
            if (r0 != r1) goto L2c
            r0 = 1
            r8 = r0
            goto L2f
        L2c:
            r0 = 0
            r8 = r0
        L2f:
            r0 = r8
            if (r0 == 0) goto L37
            goto L40
        L37:
            int r6 = r6 + 1
            goto L11
        L3d:
            r0 = 0
            r7 = r0
        L40:
            r0 = r7
            if (r0 == 0) goto L54
            r0 = r7
            java.lang.String r0 = r0.getName()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L54
            goto L5a
        L54:
            r0 = r3
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r7 = r0
        L5a:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.common.ErrorsKt.getBillingResponseCodeName(int):java.lang.String");
    }

    public static final PurchasesError toPurchasesError(BackendErrorCode backendErrorCode, String str) {
        k.f(backendErrorCode, "$this$toPurchasesError");
        k.f(str, "underlyingErrorMessage");
        return new PurchasesError(toPurchasesErrorCode(backendErrorCode), str);
    }

    public static final PurchasesError toPurchasesError(HTTPClient.Result result) {
        PurchasesError purchasesError;
        PurchasesError purchasesError2;
        k.f(result, "$this$toPurchasesError");
        JSONObject body = result.getBody();
        Integer num = null;
        Integer num2 = null;
        String str = "";
        if (body != null) {
            if (body.has("code")) {
                Object obj = body.get("code");
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Int");
                num2 = (Integer) obj;
            }
            str = "";
            num = num2;
            if (body.has("message")) {
                Object obj2 = body.get("message");
                Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.String");
                str = (String) obj2;
                num = num2;
            }
        }
        if (num != null) {
            BackendErrorCode valueOf = BackendErrorCode.Companion.valueOf(num.intValue());
            if (valueOf != null && (purchasesError2 = toPurchasesError(valueOf, str)) != null) {
                purchasesError = purchasesError2;
                return purchasesError;
            }
        }
        PurchasesErrorCode purchasesErrorCode = PurchasesErrorCode.UnknownBackendError;
        StringBuilder sb = new StringBuilder();
        sb.append("Backend Code: ");
        if (num == null) {
            num = "N/A";
        }
        sb.append(num);
        sb.append(" - ");
        sb.append(str);
        purchasesError = new PurchasesError(purchasesErrorCode, sb.toString());
        return purchasesError;
    }

    public static final PurchasesError toPurchasesError(Exception exc) {
        k.f(exc, "$this$toPurchasesError");
        return (!(exc instanceof JSONException) && !(exc instanceof IOException)) ? exc instanceof SecurityException ? new PurchasesError(PurchasesErrorCode.InsufficientPermissionsError, ((SecurityException) exc).getLocalizedMessage()) : new PurchasesError(PurchasesErrorCode.UnknownError, exc.getLocalizedMessage()) : new PurchasesError(PurchasesErrorCode.NetworkError, exc.getLocalizedMessage());
    }

    public static final PurchasesErrorCode toPurchasesErrorCode(BackendErrorCode backendErrorCode) {
        PurchasesErrorCode purchasesErrorCode;
        k.f(backendErrorCode, "$this$toPurchasesErrorCode");
        switch (WhenMappings.$EnumSwitchMapping$0[backendErrorCode.ordinal()]) {
            case 1:
                purchasesErrorCode = PurchasesErrorCode.UnknownError;
                break;
            case 2:
                purchasesErrorCode = PurchasesErrorCode.StoreProblemError;
                break;
            case 3:
                purchasesErrorCode = PurchasesErrorCode.ReceiptInUseByOtherSubscriberError;
                break;
            case 4:
                purchasesErrorCode = PurchasesErrorCode.InvalidReceiptError;
                break;
            case 5:
            case 6:
            case 7:
            case 8:
                purchasesErrorCode = PurchasesErrorCode.InvalidCredentialsError;
                break;
            case 9:
            case 10:
                purchasesErrorCode = PurchasesErrorCode.PurchaseInvalidError;
                break;
            case 11:
                purchasesErrorCode = PurchasesErrorCode.InvalidAppUserIdError;
                break;
            case 12:
                purchasesErrorCode = PurchasesErrorCode.StoreProblemError;
                break;
            case 13:
                purchasesErrorCode = PurchasesErrorCode.StoreProblemError;
                break;
            case 14:
                purchasesErrorCode = PurchasesErrorCode.StoreProblemError;
                break;
            case 15:
                purchasesErrorCode = PurchasesErrorCode.IneligibleError;
                break;
            case 16:
                purchasesErrorCode = PurchasesErrorCode.InvalidAppleSubscriptionKeyError;
                break;
            case 17:
            case 18:
                purchasesErrorCode = PurchasesErrorCode.InvalidSubscriberAttributesError;
                break;
            case 19:
            case 20:
                purchasesErrorCode = PurchasesErrorCode.UnexpectedBackendResponseError;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return purchasesErrorCode;
    }
}
