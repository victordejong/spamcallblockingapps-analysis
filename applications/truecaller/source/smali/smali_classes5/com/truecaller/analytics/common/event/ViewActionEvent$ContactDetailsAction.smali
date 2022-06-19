.class public final enum Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/analytics/common/event/ViewActionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContactDetailsAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "CALL_HISTORY",
        "UNBLOCK",
        "TAG",
        "COPY",
        "COPY_NAME",
        "COPY_NUMBER",
        "SHARE",
        "MAP",
        "EMAIL",
        "FACEBOOK",
        "BROWSER",
        "SKYPE",
        "GOOGLE_PLUS",
        "TWITTER",
        "SWISH",
        "common-analytics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum BROWSER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum CALL_HISTORY:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum COPY:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum COPY_NAME:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum COPY_NUMBER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum EMAIL:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum FACEBOOK:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum GOOGLE_PLUS:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum MAP:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum SHARE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum SKYPE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum SWISH:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum TAG:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum TWITTER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

.field public static final enum UNBLOCK:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "CALL_HISTORY"

    const/4 v3, 0x0

    const-string v4, "callHistory"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->CALL_HISTORY:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "UNBLOCK"

    const/4 v3, 0x1

    const-string v4, "unblockQuery"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->UNBLOCK:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "TAG"

    const/4 v3, 0x2

    const-string v4, "tag"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->TAG:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "COPY"

    const/4 v3, 0x3

    const-string v4, "copy"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->COPY:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "COPY_NAME"

    const/4 v3, 0x4

    const-string v4, "copyName"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->COPY_NAME:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "COPY_NUMBER"

    const/4 v3, 0x5

    const-string v4, "copyNumber"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->COPY_NUMBER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "SHARE"

    const/4 v3, 0x6

    const-string v4, "share"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->SHARE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "MAP"

    const/4 v3, 0x7

    const-string v4, "map"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->MAP:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "EMAIL"

    const/16 v3, 0x8

    const-string v4, "email"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->EMAIL:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "FACEBOOK"

    const/16 v3, 0x9

    const-string v4, "facebook"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->FACEBOOK:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "BROWSER"

    const/16 v3, 0xa

    const-string v4, "browser"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->BROWSER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "SKYPE"

    const/16 v3, 0xb

    const-string v4, "skype"

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->SKYPE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "GOOGLE_PLUS"

    const/16 v3, 0xc

    const-string v4, "googlePlus"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->GOOGLE_PLUS:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "TWITTER"

    const/16 v3, 0xd

    const-string v4, "twitter"

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->TWITTER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "SWISH"

    const/16 v3, 0xe

    const-string v4, "swish"

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->SWISH:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->$VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;
    .locals 1

    const-class v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;
    .locals 1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->$VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    invoke-virtual {v0}, [Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->value:Ljava/lang/String;

    return-object v0
.end method
