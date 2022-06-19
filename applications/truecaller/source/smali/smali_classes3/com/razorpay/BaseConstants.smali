.class public Lcom/razorpay/BaseConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lproguard/annotation/Keep;
.end annotation

.annotation build Lproguard/annotation/KeepClassMembers;
.end annotation


# static fields
.field public static final BASE_REQUEST_CODE_INTENT:I = 0x14

.field public static final BHIM_PACKAGE_NAME:Ljava/lang/String; = "in.org.npci.upiapp"

.field public static final CANCEL_PARAM:Ljava/lang/String; = "/cancel?"

.field public static final CRED_PACKAGE:Ljava/lang/String; = "com.dreamplug.androidapp"

.field public static final CRED_PKG:Ljava/lang/String; = "com.dreamplug.androidapp"

.field public static final CRED_URL_SCHEMA:Ljava/lang/String; = "credpay"

.field public static final DEFAULT_PROGRESS_COLOR:Ljava/lang/String; = "#4aa3df"

.field public static final DEFAULT_SENDER:Ljava/lang/String; = "razorpay"

.field public static final DEVELOPMENT:Ljava/lang/String; = "development"

.field public static final GOOGLEPAY_CLASSNAME:Ljava/lang/String; = "com.google.android.apps.nbu.paisa.inapp.client.api.PaymentsClient"

.field public static final GOOGLE_PAY_PKG:Ljava/lang/String; = "com.google.android.apps.nbu.paisa.user"

.field public static final INCOMPATIBLE_PLUGIN:I = 0x7

.field public static final INVALID_OPTIONS:I = 0x3

.field public static final KEY_ID_PARAM:Ljava/lang/String; = "key_id="

.field public static final KEY_MISSING_EXCEPTION:Ljava/lang/String; = "Please set your Razorpay API key in AndroidManifest.xml"

.field public static final METADATA_KEY:Ljava/lang/String; = "com.razorpay.ApiKey"

.field public static final METADATA_PLUGIN_PREFIX:Ljava/lang/String; = "com.razorpay.plugin."

.field public static final NATIVE_OTP_URL:Ljava/lang/String; = "payments/create/checkout/json"

.field public static final NETWORK_ERROR:I = 0x2

.field public static final PARSING_ERROR:I = 0x4

.field public static final PAYMENT_CANCELED:I = 0x0

.field public static final PAYMENT_ERROR:I = 0x5

.field public static final PAYMENT_PREFERENCES_CACHE_KEY:Ljava/lang/String; = "rzp_payment_preferences"

.field public static final PRODUCTION:Ljava/lang/String; = "production"

.field public static final RZP_PAYMENTS_ENDPOINT:Ljava/lang/String; = "https://api.razorpay.com/v1/payments/"

.field public static final RZP_PROGRESS_COLOR:Ljava/lang/String; = "#0783B4"

.field public static final RZP_URL:Ljava/lang/String; = "https://api.razorpay.com"

.field public static final SMS_CONSENT_REQUEST:I = 0x3e9

.field public static final STATUS_PARAM:Ljava/lang/String; = "/status?"

.field public static final TLS_ERROR:I = 0x6

.field public static final TLS_ERROR_MESSAGE:Ljava/lang/String; = "TLSv1  is not supported for security reasons"

.field public static final TRUE_CALLER_PKG:Ljava/lang/String; = "com.truecaller"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final UPI_REQUEST_CODE:I = 0x63

.field public static final UPI_URL_SCHEMA:Ljava/lang/String; = "upi://pay"

.field public static final VALIDATION_AMOUNT_ERROR:Ljava/lang/String; = "Amount should be in paise. Minimum value is 100, which is equal to Re.1"

.field public static final VALIDATION_CARD_CVV_DIGITS:Ljava/lang/String; = "Card cvv can only have digits 0-9"

.field public static final VALIDATION_CARD_CVV_LENGTH:Ljava/lang/String; = "Card cvv needs to be in 3 or 4 digits"

.field public static final VALIDATION_CARD_DIGITS_ONLY:Ljava/lang/String; = "Card number can only have digits 0-9"

.field public static final VALIDATION_CARD_EXPIRTY_DIGITS:Ljava/lang/String; = "Card expiry month can only have digits 0-9"

.field public static final VALIDATION_CARD_EXPIRY_YEAR:Ljava/lang/String; = "Card expiry year needs to be two digits"

.field public static final VALIDATION_CARD_LESS_DIGITS:Ljava/lang/String; = "Card number cannot have lesser than 13 digits or more than 19 digits"

.field public static final VALIDATION_CARD_VALIDITY_ERROR:Ljava/lang/String; = "Card expiry month needs to be between 01-12"

.field public static final VALIDATION_CONTACT_LENGTH_ERROR:Ljava/lang/String; = "Contact length should be between [10-15]"

.field public static final VALIDATION_CONTACT_MISSING:Ljava/lang/String; = "Please add contact element for this payment method"

.field public static final VALIDATION_CONTACT_PLUS_ERROR:Ljava/lang/String; = "Contact can only include + in the start and following characters: + - ( ) 0-9 space"

.field public static final VALIDATION_CURRENCY_ERROR:Ljava/lang/String; = "Currency should be 3 characters. Default value is INR"

.field public static final VALIDATION_EMAIL_FAILED:Ljava/lang/String; = "e-Mail validation failed"

.field public static final VALIDATION_EMAIL_LENGTH:Ljava/lang/String; = "e-Mail cannot be longer than 255 characters"

.field public static final VALIDATION_METHOD_EMPTY:Ljava/lang/String; = "method is a required field"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
