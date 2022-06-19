.class public final enum Lcom/razorpay/NetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/razorpay/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/razorpay/NetworkType;

.field public static final enum BLUETOOTH:Lcom/razorpay/NetworkType;

.field public static final enum CELLULAR:Lcom/razorpay/NetworkType;

.field public static final enum UNKNOWN:Lcom/razorpay/NetworkType;

.field public static final enum WIFI:Lcom/razorpay/NetworkType;


# instance fields
.field private mNetworkTypeName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/razorpay/NetworkType;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    const-string v3, "wifi"

    invoke-direct {v0, v1, v2, v3}, Lcom/razorpay/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/razorpay/NetworkType;->WIFI:Lcom/razorpay/NetworkType;

    .line 2
    new-instance v1, Lcom/razorpay/NetworkType;

    const-string v3, "CELLULAR"

    const/4 v4, 0x1

    const-string v5, "cellular"

    invoke-direct {v1, v3, v4, v5}, Lcom/razorpay/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/razorpay/NetworkType;->CELLULAR:Lcom/razorpay/NetworkType;

    .line 3
    new-instance v3, Lcom/razorpay/NetworkType;

    const-string v5, "BLUETOOTH"

    const/4 v6, 0x2

    const-string v7, "bluetooth"

    invoke-direct {v3, v5, v6, v7}, Lcom/razorpay/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/razorpay/NetworkType;->BLUETOOTH:Lcom/razorpay/NetworkType;

    .line 4
    new-instance v5, Lcom/razorpay/NetworkType;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    const-string v9, "unknown"

    invoke-direct {v5, v7, v8, v9}, Lcom/razorpay/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/razorpay/NetworkType;->UNKNOWN:Lcom/razorpay/NetworkType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/razorpay/NetworkType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/razorpay/NetworkType;->$VALUES:[Lcom/razorpay/NetworkType;

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

    .line 2
    iput-object p3, p0, Lcom/razorpay/NetworkType;->mNetworkTypeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/razorpay/NetworkType;
    .locals 1

    .line 1
    const-class v0, Lcom/razorpay/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/razorpay/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/razorpay/NetworkType;
    .locals 1

    .line 1
    sget-object v0, Lcom/razorpay/NetworkType;->$VALUES:[Lcom/razorpay/NetworkType;

    invoke-virtual {v0}, [Lcom/razorpay/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/razorpay/NetworkType;

    return-object v0
.end method


# virtual methods
.method public final getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/NetworkType;->mNetworkTypeName:Ljava/lang/String;

    return-object v0
.end method
