.class public final enum Lcom/truecaller/premium/data/ProductKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/premium/data/ProductKind$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/data/ProductKind;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/premium/data/ProductKind;",
        "",
        "",
        "rank",
        "I",
        "getRank",
        "()I",
        "",
        "kind",
        "Ljava/lang/String;",
        "getKind",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;I)V",
        "Companion",
        "a",
        "SUBSCRIPTION_BASIC_MONTHLY",
        "SUBSCRIPTION_MONTHLY",
        "SUBSCRIPTION_QUARTERLY",
        "SUBSCRIPTION_HALFYEARLY",
        "SUBSCRIPTION_YEARLY",
        "SUBSCRIPTION_WELCOME_OFFER_YEARLY",
        "SUBSCRIPTION_GOLD",
        "CONSUMABLE_YEARLY",
        "CONSUMABLE_GOLD_YEARLY",
        "CONSUMABLE_MONTHLY",
        "CONSUMABLE_QUARTERLY",
        "CONSUMABLE_HALFYEARLY",
        "NONE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/data/ProductKind;

.field public static final enum CONSUMABLE_GOLD_YEARLY:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum CONSUMABLE_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum CONSUMABLE_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum CONSUMABLE_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum CONSUMABLE_YEARLY:Lcom/truecaller/premium/data/ProductKind;

.field public static final Companion:Lcom/truecaller/premium/data/ProductKind$a;

.field public static final enum NONE:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum SUBSCRIPTION_BASIC_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum SUBSCRIPTION_GOLD:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum SUBSCRIPTION_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum SUBSCRIPTION_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum SUBSCRIPTION_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum SUBSCRIPTION_WELCOME_OFFER_YEARLY:Lcom/truecaller/premium/data/ProductKind;

.field public static final enum SUBSCRIPTION_YEARLY:Lcom/truecaller/premium/data/ProductKind;


# instance fields
.field private final kind:Ljava/lang/String;

.field private final rank:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/truecaller/premium/data/ProductKind;

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "SUBSCRIPTION_BASIC_MONTHLY"

    const/4 v3, 0x0

    const-string v4, "subsbasicmonthly"

    .line 1
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_BASIC_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "SUBSCRIPTION_MONTHLY"

    const/4 v3, 0x1

    const-string v4, "subsmonthly"

    .line 2
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "SUBSCRIPTION_QUARTERLY"

    const/4 v3, 0x2

    const-string v4, "subsquarterly"

    .line 3
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "SUBSCRIPTION_HALFYEARLY"

    const/4 v3, 0x3

    const-string v4, "subshalfyearly"

    .line 4
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "SUBSCRIPTION_YEARLY"

    const/4 v3, 0x4

    const-string v4, "subsyearly"

    .line 5
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "SUBSCRIPTION_WELCOME_OFFER_YEARLY"

    const/4 v3, 0x5

    const-string v4, "subswelcomeyearly"

    .line 6
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_WELCOME_OFFER_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "SUBSCRIPTION_GOLD"

    const/4 v3, 0x6

    const-string v4, "goldyearly"

    .line 7
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_GOLD:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "CONSUMABLE_YEARLY"

    const/4 v3, 0x7

    const-string v4, "consumableyearly"

    .line 8
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "CONSUMABLE_GOLD_YEARLY"

    const/16 v3, 0x8

    const-string v4, "consumablegoldyearly"

    .line 9
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_GOLD_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "CONSUMABLE_MONTHLY"

    const/16 v3, 0x9

    const-string v4, "consumablemonthly"

    const/16 v5, 0xa

    .line 10
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "CONSUMABLE_QUARTERLY"

    const-string v4, "consumablequarterly"

    const/16 v6, 0xb

    .line 11
    invoke-direct {v1, v2, v5, v4, v6}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "CONSUMABLE_HALFYEARLY"

    const-string v4, "consumablehalfyearly"

    const/16 v5, 0xc

    .line 12
    invoke-direct {v1, v2, v6, v4, v5}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v6

    new-instance v1, Lcom/truecaller/premium/data/ProductKind;

    const-string v2, "NONE"

    const-string v4, "none"

    .line 13
    invoke-direct {v1, v2, v5, v4, v3}, Lcom/truecaller/premium/data/ProductKind;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/data/ProductKind;->NONE:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v5

    sput-object v0, Lcom/truecaller/premium/data/ProductKind;->$VALUES:[Lcom/truecaller/premium/data/ProductKind;

    new-instance v0, Lcom/truecaller/premium/data/ProductKind$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/premium/data/ProductKind$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/premium/data/ProductKind;->Companion:Lcom/truecaller/premium/data/ProductKind$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/premium/data/ProductKind;->kind:Ljava/lang/String;

    iput p4, p0, Lcom/truecaller/premium/data/ProductKind;->rank:I

    return-void
.end method

.method public static final fromString(Ljava/lang/String;)Lcom/truecaller/premium/data/ProductKind;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/data/ProductKind;->Companion:Lcom/truecaller/premium/data/ProductKind$a;

    invoke-virtual {v0, p0}, Lcom/truecaller/premium/data/ProductKind$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/ProductKind;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/data/ProductKind;
    .locals 1

    const-class v0, Lcom/truecaller/premium/data/ProductKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/data/ProductKind;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/data/ProductKind;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/data/ProductKind;->$VALUES:[Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v0}, [Lcom/truecaller/premium/data/ProductKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/data/ProductKind;

    return-object v0
.end method


# virtual methods
.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/data/ProductKind;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getRank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/premium/data/ProductKind;->rank:I

    return v0
.end method
