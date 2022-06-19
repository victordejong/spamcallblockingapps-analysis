.class public final enum Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "OTHER",
        "HOME_PROMO",
        "SIDE_MENU",
        "DEEP_LINK",
        "personal-safety_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

.field public static final enum DEEP_LINK:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

.field public static final enum HOME_PROMO:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

.field public static final enum OTHER:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

.field public static final enum SIDE_MENU:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    new-instance v1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    const-string v2, "OTHER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->OTHER:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    const-string v2, "HOME_PROMO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->HOME_PROMO:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    const-string v2, "SIDE_MENU"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->SIDE_MENU:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    const-string v2, "DEEP_LINK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->DEEP_LINK:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->$VALUES:[Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;
    .locals 1

    const-class v0, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;
    .locals 1

    sget-object v0, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->$VALUES:[Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    invoke-virtual {v0}, [Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    return-object v0
.end method
