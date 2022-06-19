.class public final enum Lcom/truecaller/premium/data/feature/PremiumFeature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/premium/data/feature/PremiumFeature$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/data/feature/PremiumFeature;",
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0017\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0011\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/premium/data/feature/PremiumFeature;",
        "",
        "",
        "isFree",
        "Le/a/l/p2/d2/a;",
        "dto",
        "(Z)Le/a/l/p2/d2/a;",
        "",
        "id",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "a",
        "UNKNOWN",
        "CALLER_ID",
        "SPAM_BLOCKING",
        "CALL_RECORDING",
        "EXTENDED_SPAM_BLOCKING",
        "NO_ADS",
        "WHO_VIEWED_ME",
        "PREMIUM_BADGE",
        "CONTACT_REQUEST",
        "INCOGNITO_MODE",
        "GHOST_CALL",
        "ANNOUNCE_CALL",
        "PREMIUM_SUPPORT",
        "GOLD_CALLER_ID",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum ANNOUNCE_CALL:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum CALLER_ID:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum CALL_RECORDING:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum CONTACT_REQUEST:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final Companion:Lcom/truecaller/premium/data/feature/PremiumFeature$a;

.field public static final enum EXTENDED_SPAM_BLOCKING:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum GHOST_CALL:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum GOLD_CALLER_ID:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum INCOGNITO_MODE:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum NO_ADS:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum PREMIUM_BADGE:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum PREMIUM_SUPPORT:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum SPAM_BLOCKING:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum UNKNOWN:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public static final enum WHO_VIEWED_ME:Lcom/truecaller/premium/data/feature/PremiumFeature;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/truecaller/premium/data/feature/PremiumFeature;

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    const-string v4, "unknown"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->UNKNOWN:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "CALLER_ID"

    const/4 v3, 0x1

    const-string v4, "caller_id"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->CALLER_ID:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "SPAM_BLOCKING"

    const/4 v3, 0x2

    const-string v4, "spam_blocking"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->SPAM_BLOCKING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "CALL_RECORDING"

    const/4 v3, 0x3

    const-string v4, "call_recording"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->CALL_RECORDING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "EXTENDED_SPAM_BLOCKING"

    const/4 v3, 0x4

    const-string v4, "extended_spam_blocking"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->EXTENDED_SPAM_BLOCKING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "NO_ADS"

    const/4 v3, 0x5

    const-string v4, "no_ads"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->NO_ADS:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "WHO_VIEWED_ME"

    const/4 v3, 0x6

    const-string v4, "who_viewed_my_profile"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->WHO_VIEWED_ME:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "PREMIUM_BADGE"

    const/4 v3, 0x7

    const-string v4, "premium_badge"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->PREMIUM_BADGE:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "CONTACT_REQUEST"

    const/16 v3, 0x8

    const-string v4, "contact_request"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->CONTACT_REQUEST:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "INCOGNITO_MODE"

    const/16 v3, 0x9

    const-string v4, "incognito_mode"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->INCOGNITO_MODE:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "GHOST_CALL"

    const/16 v3, 0xa

    const-string v4, "ghost_call"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->GHOST_CALL:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "ANNOUNCE_CALL"

    const/16 v3, 0xb

    const-string v4, "announce_call"

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->ANNOUNCE_CALL:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "PREMIUM_SUPPORT"

    const/16 v3, 0xc

    const-string v4, "premium_support"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->PREMIUM_SUPPORT:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/feature/PremiumFeature;

    const-string v2, "GOLD_CALLER_ID"

    const/16 v3, 0xd

    const-string v4, "gold_caller_id"

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->GOLD_CALLER_ID:Lcom/truecaller/premium/data/feature/PremiumFeature;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/premium/data/feature/PremiumFeature;->$VALUES:[Lcom/truecaller/premium/data/feature/PremiumFeature;

    new-instance v0, Lcom/truecaller/premium/data/feature/PremiumFeature$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/premium/data/feature/PremiumFeature$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/premium/data/feature/PremiumFeature;->Companion:Lcom/truecaller/premium/data/feature/PremiumFeature$a;

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

    iput-object p3, p0, Lcom/truecaller/premium/data/feature/PremiumFeature;->id:Ljava/lang/String;

    return-void
.end method

.method public static synthetic dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto(Z)Le/a/l/p2/d2/a;

    move-result-object p0

    return-object p0
.end method

.method public static final fromString(Ljava/lang/String;)Lcom/truecaller/premium/data/feature/PremiumFeature;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/data/feature/PremiumFeature;->Companion:Lcom/truecaller/premium/data/feature/PremiumFeature$a;

    invoke-virtual {v0, p0}, Lcom/truecaller/premium/data/feature/PremiumFeature$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/feature/PremiumFeature;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/data/feature/PremiumFeature;
    .locals 1

    const-class v0, Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/data/feature/PremiumFeature;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/data/feature/PremiumFeature;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/data/feature/PremiumFeature;->$VALUES:[Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-virtual {v0}, [Lcom/truecaller/premium/data/feature/PremiumFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/data/feature/PremiumFeature;

    return-object v0
.end method


# virtual methods
.method public final dto(Z)Le/a/l/p2/d2/a;
    .locals 2

    .line 1
    new-instance v0, Le/a/l/p2/d2/a;

    iget-object v1, p0, Lcom/truecaller/premium/data/feature/PremiumFeature;->id:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Le/a/l/p2/d2/a;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/data/feature/PremiumFeature;->id:Ljava/lang/String;

    return-object v0
.end method
