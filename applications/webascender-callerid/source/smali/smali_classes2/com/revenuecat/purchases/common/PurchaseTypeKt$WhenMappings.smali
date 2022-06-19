.class public final synthetic Lcom/revenuecat/purchases/common/PurchaseTypeKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/revenuecat/purchases/common/PurchaseType;->values()[Lcom/revenuecat/purchases/common/PurchaseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/revenuecat/purchases/common/PurchaseTypeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/revenuecat/purchases/common/PurchaseType;->INAPP:Lcom/revenuecat/purchases/common/PurchaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/revenuecat/purchases/common/PurchaseType;->SUBS:Lcom/revenuecat/purchases/common/PurchaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/revenuecat/purchases/common/PurchaseType;->UNKNOWN:Lcom/revenuecat/purchases/common/PurchaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
