.class public final enum Lcom/mopub/common/LocationService$ValidLocationProvider;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidLocationProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/LocationService$ValidLocationProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

.field public static final enum NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

.field public static final synthetic b:[Lcom/mopub/common/LocationService$ValidLocationProvider;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/mopub/common/LocationService$ValidLocationProvider;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    const-string v3, "network"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/LocationService$ValidLocationProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/LocationService$ValidLocationProvider;->NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

    .line 2
    new-instance v1, Lcom/mopub/common/LocationService$ValidLocationProvider;

    const-string v3, "GPS"

    const/4 v4, 0x1

    const-string v5, "gps"

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/common/LocationService$ValidLocationProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mopub/common/LocationService$ValidLocationProvider;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/mopub/common/LocationService$ValidLocationProvider;->b:[Lcom/mopub/common/LocationService$ValidLocationProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
    iput-object p3, p0, Lcom/mopub/common/LocationService$ValidLocationProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/LocationService$ValidLocationProvider;
    .locals 1

    .line 1
    const-class v0, Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/LocationService$ValidLocationProvider;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/LocationService$ValidLocationProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/common/LocationService$ValidLocationProvider;->b:[Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-virtual {v0}, [Lcom/mopub/common/LocationService$ValidLocationProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/LocationService$ValidLocationProvider;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/LocationService$ValidLocationProvider;->a:Ljava/lang/String;

    return-object v0
.end method
