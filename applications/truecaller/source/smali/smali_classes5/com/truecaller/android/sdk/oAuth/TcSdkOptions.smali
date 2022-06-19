.class public Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    }
.end annotation


# static fields
.field public static final BUTTON_SHAPE_RECTANGLE:I = 0x100

.field public static final BUTTON_SHAPE_ROUNDED:I = 0x80

.field public static final CTA_TEXT_ACCEPT:I = 0x2

.field public static final CTA_TEXT_CONFIRM:I = 0x3

.field public static final CTA_TEXT_CONTINUE:I = 0x1

.field public static final CTA_TEXT_PROCEED:I = 0x0

.field public static final FOOTER_TYPE_ANOTHER_METHOD:I = 0x4

.field public static final FOOTER_TYPE_ANOTHER_MOBILE_NO:I = 0x2

.field public static final FOOTER_TYPE_LATER:I = 0x10

.field public static final FOOTER_TYPE_MANUALLY:I = 0x8

.field public static final FOOTER_TYPE_SKIP:I = 0x1

.field public static final LOGIN_TEXT_PREFIX_FOR_NEW_UPDATES:I = 0xc

.field public static final LOGIN_TEXT_PREFIX_TO_CHECKOUT:I = 0x4

.field public static final LOGIN_TEXT_PREFIX_TO_COMPLETE_YOUR_BOOKING:I = 0x5

.field public static final LOGIN_TEXT_PREFIX_TO_COMPLETE_YOUR_PURCHASE:I = 0x3

.field public static final LOGIN_TEXT_PREFIX_TO_CONTINUE:I = 0x1

.field public static final LOGIN_TEXT_PREFIX_TO_CONTINUE_READING:I = 0xa

.field public static final LOGIN_TEXT_PREFIX_TO_CONTINUE_WITH_YOUR_BOOKING:I = 0x7

.field public static final LOGIN_TEXT_PREFIX_TO_GET_DETAILS:I = 0x8

.field public static final LOGIN_TEXT_PREFIX_TO_GET_STARTED:I = 0x0

.field public static final LOGIN_TEXT_PREFIX_TO_GET_UPDATES:I = 0xd

.field public static final LOGIN_TEXT_PREFIX_TO_PLACE_ORDER:I = 0x2

.field public static final LOGIN_TEXT_PREFIX_TO_PROCEED:I = 0xb

.field public static final LOGIN_TEXT_PREFIX_TO_PROCEED_WITH_YOUR_BOOKING:I = 0x6

.field public static final LOGIN_TEXT_PREFIX_TO_SUBSCRIBE:I = 0xe

.field public static final LOGIN_TEXT_PREFIX_TO_SUBSCRIBE_AND_GET_UPDATES:I = 0xf

.field public static final LOGIN_TEXT_PREFIX_TO_VIEW_MORE:I = 0x9

.field public static final OPTION_VERIFY_ALL_USERS:I = 0x40

.field public static final OPTION_VERIFY_ONLY_TC_USERS:I = 0x20

.field public static final SDK_CONSENT_TITLE_GET_STARTED:I = 0x5

.field public static final SDK_CONSENT_TITLE_LOG_IN:I = 0x0

.field public static final SDK_CONSENT_TITLE_REGISTER:I = 0x4

.field public static final SDK_CONSENT_TITLE_SIGN_IN:I = 0x2

.field public static final SDK_CONSENT_TITLE_SIGN_UP:I = 0x1

.field public static final SDK_CONSENT_TITLE_VERIFY:I = 0x3


# instance fields
.field public final callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

.field public final clientId:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public final sdkFlag:I

.field public final sdkOptionsDataBundle:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;


# direct methods
.method public constructor <init>(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->access$000(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->context:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->access$100(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->clientId:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->access$200(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->sdkFlag:I

    .line 5
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->access$300(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    .line 6
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->access$400(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v2

    .line 7
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->access$500(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v3

    .line 8
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->access$600(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v4

    .line 9
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->access$700(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v5

    .line 10
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->access$800(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;-><init>(IIIII)V

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->sdkOptionsDataBundle:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    return-void
.end method
