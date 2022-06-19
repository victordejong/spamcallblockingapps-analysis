.class public final enum Lcom/truecaller/premium/data/SubscriptionStatusReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/premium/data/SubscriptionStatusReason$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/data/SubscriptionStatusReason;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0015\u0008\u0086\u0001\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/premium/data/SubscriptionStatusReason;",
        "",
        "",
        "isOnHold",
        "()Z",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "a",
        "NONE",
        "SUBSCRIPTION_RECOVERED",
        "SUBSCRIPTION_RENEWED",
        "SUBSCRIPTION_CANCELED",
        "SUBSCRIPTION_PURCHASED",
        "SUBSCRIPTION_ON_HOLD",
        "SUBSCRIPTION_IN_GRACE_PERIOD",
        "SUBSCRIPTION_RESTARTED",
        "SUBSCRIPTION_PRICE_CHANGE_CONFIRMED",
        "SUBSCRIPTION_DEFERRED",
        "SUBSCRIPTION_PAUSED",
        "SUBSCRIPTION_PAUSE_SCHEDULE_CHANGED",
        "SUBSCRIPTION_REVOKED",
        "SUBSCRIPTION_EXPIRED",
        "premium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final Companion:Lcom/truecaller/premium/data/SubscriptionStatusReason$a;

.field public static final enum NONE:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_CANCELED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_DEFERRED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_EXPIRED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_IN_GRACE_PERIOD:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_ON_HOLD:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_PAUSED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_PAUSE_SCHEDULE_CHANGED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_PRICE_CHANGE_CONFIRMED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_PURCHASED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_RECOVERED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_RENEWED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_RESTARTED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

.field public static final enum SUBSCRIPTION_REVOKED:Lcom/truecaller/premium/data/SubscriptionStatusReason;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/truecaller/premium/data/SubscriptionStatusReason;

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->NONE:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_RECOVERED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_RECOVERED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_RENEWED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_RENEWED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_CANCELED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_CANCELED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_PURCHASED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_PURCHASED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_ON_HOLD"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_ON_HOLD:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_IN_GRACE_PERIOD"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_IN_GRACE_PERIOD:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_RESTARTED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_RESTARTED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_PRICE_CHANGE_CONFIRMED"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_PRICE_CHANGE_CONFIRMED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_DEFERRED"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_DEFERRED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_PAUSED"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_PAUSED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_PAUSE_SCHEDULE_CHANGED"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_PAUSE_SCHEDULE_CHANGED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_REVOKED"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_REVOKED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const-string v2, "SUBSCRIPTION_EXPIRED"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_EXPIRED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/premium/data/SubscriptionStatusReason;->$VALUES:[Lcom/truecaller/premium/data/SubscriptionStatusReason;

    new-instance v0, Lcom/truecaller/premium/data/SubscriptionStatusReason$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/premium/data/SubscriptionStatusReason$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/premium/data/SubscriptionStatusReason;->Companion:Lcom/truecaller/premium/data/SubscriptionStatusReason$a;

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

.method public static final fromString(Ljava/lang/String;)Lcom/truecaller/premium/data/SubscriptionStatusReason;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/data/SubscriptionStatusReason;->Companion:Lcom/truecaller/premium/data/SubscriptionStatusReason$a;

    invoke-virtual {v0, p0}, Lcom/truecaller/premium/data/SubscriptionStatusReason$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/data/SubscriptionStatusReason;
    .locals 1

    const-class v0, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/data/SubscriptionStatusReason;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/data/SubscriptionStatusReason;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/data/SubscriptionStatusReason;->$VALUES:[Lcom/truecaller/premium/data/SubscriptionStatusReason;

    invoke-virtual {v0}, [Lcom/truecaller/premium/data/SubscriptionStatusReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/data/SubscriptionStatusReason;

    return-object v0
.end method


# virtual methods
.method public final isOnHold()Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/premium/data/SubscriptionStatusReason;

    .line 1
    sget-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_IN_GRACE_PERIOD:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_ON_HOLD:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
