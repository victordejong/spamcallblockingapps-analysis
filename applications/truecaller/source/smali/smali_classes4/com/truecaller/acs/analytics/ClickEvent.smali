.class public final enum Lcom/truecaller/acs/analytics/ClickEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/acs/analytics/ClickEvent;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/acs/analytics/ClickEvent;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "VIEW_PROFILE",
        "VIEW_PROFILE_HEADER",
        "CHANGE_TAG",
        "CALL",
        "SMS",
        "SAVE_CONTACT",
        "EDIT_CONTACT",
        "BLOCK",
        "UNBLOCK",
        "EDIT_NAME",
        "SUGGEST_NAME",
        "FEEDBACK_POSITIVE",
        "FEEDBACK_NEGATIVE",
        "WARN_FRIENDS",
        "BUSINESS_POSITIVE",
        "BUSINESS_NEGATIVE",
        "acs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum BLOCK:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum BUSINESS_NEGATIVE:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum BUSINESS_POSITIVE:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum CALL:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum CHANGE_TAG:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum EDIT_CONTACT:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum EDIT_NAME:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum FEEDBACK_NEGATIVE:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum FEEDBACK_POSITIVE:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum SAVE_CONTACT:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum SMS:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum SUGGEST_NAME:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum UNBLOCK:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum VIEW_PROFILE:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum VIEW_PROFILE_HEADER:Lcom/truecaller/acs/analytics/ClickEvent;

.field public static final enum WARN_FRIENDS:Lcom/truecaller/acs/analytics/ClickEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/truecaller/acs/analytics/ClickEvent;

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "VIEW_PROFILE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->VIEW_PROFILE:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "VIEW_PROFILE_HEADER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->VIEW_PROFILE_HEADER:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "CHANGE_TAG"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->CHANGE_TAG:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "CALL"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->CALL:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "SMS"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->SMS:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "SAVE_CONTACT"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->SAVE_CONTACT:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "EDIT_CONTACT"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->EDIT_CONTACT:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "BLOCK"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->BLOCK:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "UNBLOCK"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->UNBLOCK:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "EDIT_NAME"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->EDIT_NAME:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "SUGGEST_NAME"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->SUGGEST_NAME:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "FEEDBACK_POSITIVE"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->FEEDBACK_POSITIVE:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "FEEDBACK_NEGATIVE"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->FEEDBACK_NEGATIVE:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "WARN_FRIENDS"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->WARN_FRIENDS:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "BUSINESS_POSITIVE"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->BUSINESS_POSITIVE:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/acs/analytics/ClickEvent;

    const-string v2, "BUSINESS_NEGATIVE"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/truecaller/acs/analytics/ClickEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->BUSINESS_NEGATIVE:Lcom/truecaller/acs/analytics/ClickEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/acs/analytics/ClickEvent;->$VALUES:[Lcom/truecaller/acs/analytics/ClickEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/acs/analytics/ClickEvent;
    .locals 1

    const-class v0, Lcom/truecaller/acs/analytics/ClickEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/acs/analytics/ClickEvent;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/acs/analytics/ClickEvent;
    .locals 1

    sget-object v0, Lcom/truecaller/acs/analytics/ClickEvent;->$VALUES:[Lcom/truecaller/acs/analytics/ClickEvent;

    invoke-virtual {v0}, [Lcom/truecaller/acs/analytics/ClickEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/acs/analytics/ClickEvent;

    return-object v0
.end method
