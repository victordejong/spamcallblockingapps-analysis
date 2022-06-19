.class public final enum Lcom/truecaller/premium/data/PremiumProductType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/premium/data/PremiumProductType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/data/PremiumProductType;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/premium/data/PremiumProductType;",
        "",
        "",
        "productType",
        "Ljava/lang/String;",
        "getProductType",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "a",
        "IN_APP",
        "SUBSCRIPTION",
        "premium-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/data/PremiumProductType;

.field public static final Companion:Lcom/truecaller/premium/data/PremiumProductType$a;

.field public static final enum IN_APP:Lcom/truecaller/premium/data/PremiumProductType;

.field public static final enum SUBSCRIPTION:Lcom/truecaller/premium/data/PremiumProductType;


# instance fields
.field private final productType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/premium/data/PremiumProductType;

    new-instance v1, Lcom/truecaller/premium/data/PremiumProductType;

    const-string v2, "IN_APP"

    const/4 v3, 0x0

    const-string v4, "consumable"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/PremiumProductType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/PremiumProductType;->IN_APP:Lcom/truecaller/premium/data/PremiumProductType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/data/PremiumProductType;

    const-string v2, "SUBSCRIPTION"

    const/4 v3, 0x1

    const-string v4, "subscription"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/data/PremiumProductType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/data/PremiumProductType;->SUBSCRIPTION:Lcom/truecaller/premium/data/PremiumProductType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/premium/data/PremiumProductType;->$VALUES:[Lcom/truecaller/premium/data/PremiumProductType;

    new-instance v0, Lcom/truecaller/premium/data/PremiumProductType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/premium/data/PremiumProductType$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/premium/data/PremiumProductType;->Companion:Lcom/truecaller/premium/data/PremiumProductType$a;

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

    iput-object p3, p0, Lcom/truecaller/premium/data/PremiumProductType;->productType:Ljava/lang/String;

    return-void
.end method

.method public static final fromString(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumProductType;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/data/PremiumProductType;->Companion:Lcom/truecaller/premium/data/PremiumProductType$a;

    invoke-virtual {v0, p0}, Lcom/truecaller/premium/data/PremiumProductType$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumProductType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumProductType;
    .locals 1

    const-class v0, Lcom/truecaller/premium/data/PremiumProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/data/PremiumProductType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/data/PremiumProductType;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/data/PremiumProductType;->$VALUES:[Lcom/truecaller/premium/data/PremiumProductType;

    invoke-virtual {v0}, [Lcom/truecaller/premium/data/PremiumProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/data/PremiumProductType;

    return-object v0
.end method


# virtual methods
.method public final getProductType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/data/PremiumProductType;->productType:Ljava/lang/String;

    return-object v0
.end method
