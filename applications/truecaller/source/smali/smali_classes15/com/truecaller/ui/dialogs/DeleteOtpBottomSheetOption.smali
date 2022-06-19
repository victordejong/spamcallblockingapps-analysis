.class public final enum Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "TRY_INBOX_CLEANER",
        "JUST_DELETE_OTP",
        "DISMISS_PROMPT",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

.field public static final enum DISMISS_PROMPT:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

.field public static final enum JUST_DELETE_OTP:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

.field public static final enum TRY_INBOX_CLEANER:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    new-instance v1, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    const-string v2, "TRY_INBOX_CLEANER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;->TRY_INBOX_CLEANER:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    const-string v2, "JUST_DELETE_OTP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;->JUST_DELETE_OTP:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    const-string v2, "DISMISS_PROMPT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;->DISMISS_PROMPT:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;->$VALUES:[Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;
    .locals 1

    const-class v0, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;
    .locals 1

    sget-object v0, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;->$VALUES:[Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    invoke-virtual {v0}, [Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    return-object v0
.end method
