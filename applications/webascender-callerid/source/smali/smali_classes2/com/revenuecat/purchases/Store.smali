.class public final enum Lcom/revenuecat/purchases/Store;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/revenuecat/purchases/Store;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revenuecat/purchases/Store;

.field public static final enum APP_STORE:Lcom/revenuecat/purchases/Store;

.field public static final enum MAC_APP_STORE:Lcom/revenuecat/purchases/Store;

.field public static final enum PLAY_STORE:Lcom/revenuecat/purchases/Store;

.field public static final enum PROMOTIONAL:Lcom/revenuecat/purchases/Store;

.field public static final enum STRIPE:Lcom/revenuecat/purchases/Store;

.field public static final enum UNKNOWN_STORE:Lcom/revenuecat/purchases/Store;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/revenuecat/purchases/Store;

    new-instance v1, Lcom/revenuecat/purchases/Store;

    const-string v2, "APP_STORE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/revenuecat/purchases/Store;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/revenuecat/purchases/Store;->APP_STORE:Lcom/revenuecat/purchases/Store;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/Store;

    const-string v2, "MAC_APP_STORE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/revenuecat/purchases/Store;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/revenuecat/purchases/Store;->MAC_APP_STORE:Lcom/revenuecat/purchases/Store;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/Store;

    const-string v2, "PLAY_STORE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/revenuecat/purchases/Store;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/revenuecat/purchases/Store;->PLAY_STORE:Lcom/revenuecat/purchases/Store;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/Store;

    const-string v2, "STRIPE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/revenuecat/purchases/Store;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/revenuecat/purchases/Store;->STRIPE:Lcom/revenuecat/purchases/Store;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/Store;

    const-string v2, "PROMOTIONAL"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/revenuecat/purchases/Store;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/revenuecat/purchases/Store;->PROMOTIONAL:Lcom/revenuecat/purchases/Store;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/Store;

    const-string v2, "UNKNOWN_STORE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/revenuecat/purchases/Store;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/revenuecat/purchases/Store;->UNKNOWN_STORE:Lcom/revenuecat/purchases/Store;

    aput-object v1, v0, v3

    sput-object v0, Lcom/revenuecat/purchases/Store;->$VALUES:[Lcom/revenuecat/purchases/Store;

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

.method public static valueOf(Ljava/lang/String;)Lcom/revenuecat/purchases/Store;
    .locals 1

    const-class v0, Lcom/revenuecat/purchases/Store;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/revenuecat/purchases/Store;

    return-object p0
.end method

.method public static values()[Lcom/revenuecat/purchases/Store;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/Store;->$VALUES:[Lcom/revenuecat/purchases/Store;

    invoke-virtual {v0}, [Lcom/revenuecat/purchases/Store;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revenuecat/purchases/Store;

    return-object v0
.end method
