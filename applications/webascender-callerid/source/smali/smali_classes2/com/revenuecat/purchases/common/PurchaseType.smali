.class public final enum Lcom/revenuecat/purchases/common/PurchaseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revenuecat/purchases/common/PurchaseType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/revenuecat/purchases/common/PurchaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revenuecat/purchases/common/PurchaseType;

.field public static final Companion:Lcom/revenuecat/purchases/common/PurchaseType$Companion;

.field public static final enum INAPP:Lcom/revenuecat/purchases/common/PurchaseType;

.field public static final enum SUBS:Lcom/revenuecat/purchases/common/PurchaseType;

.field public static final enum UNKNOWN:Lcom/revenuecat/purchases/common/PurchaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/revenuecat/purchases/common/PurchaseType;

    new-instance v1, Lcom/revenuecat/purchases/common/PurchaseType;

    const-string v2, "SUBS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/revenuecat/purchases/common/PurchaseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/revenuecat/purchases/common/PurchaseType;->SUBS:Lcom/revenuecat/purchases/common/PurchaseType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/PurchaseType;

    const-string v2, "INAPP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/revenuecat/purchases/common/PurchaseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/revenuecat/purchases/common/PurchaseType;->INAPP:Lcom/revenuecat/purchases/common/PurchaseType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/common/PurchaseType;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/revenuecat/purchases/common/PurchaseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/revenuecat/purchases/common/PurchaseType;->UNKNOWN:Lcom/revenuecat/purchases/common/PurchaseType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/revenuecat/purchases/common/PurchaseType;->$VALUES:[Lcom/revenuecat/purchases/common/PurchaseType;

    new-instance v0, Lcom/revenuecat/purchases/common/PurchaseType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/revenuecat/purchases/common/PurchaseType$Companion;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/revenuecat/purchases/common/PurchaseType;->Companion:Lcom/revenuecat/purchases/common/PurchaseType$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/revenuecat/purchases/common/PurchaseType;
    .locals 1

    const-class v0, Lcom/revenuecat/purchases/common/PurchaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/revenuecat/purchases/common/PurchaseType;

    return-object p0
.end method

.method public static values()[Lcom/revenuecat/purchases/common/PurchaseType;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/common/PurchaseType;->$VALUES:[Lcom/revenuecat/purchases/common/PurchaseType;

    invoke-virtual {v0}, [Lcom/revenuecat/purchases/common/PurchaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revenuecat/purchases/common/PurchaseType;

    return-object v0
.end method
