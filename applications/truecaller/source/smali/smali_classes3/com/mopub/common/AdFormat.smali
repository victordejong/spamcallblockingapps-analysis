.class public final enum Lcom/mopub/common/AdFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/AdFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER:Lcom/mopub/common/AdFormat;

.field public static final enum INTERSTITIAL:Lcom/mopub/common/AdFormat;

.field public static final enum NATIVE:Lcom/mopub/common/AdFormat;

.field public static final enum REWARDED_AD:Lcom/mopub/common/AdFormat;

.field public static final synthetic a:[Lcom/mopub/common/AdFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/mopub/common/AdFormat;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    .line 2
    new-instance v1, Lcom/mopub/common/AdFormat;

    const-string v3, "INTERSTITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mopub/common/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    .line 3
    new-instance v3, Lcom/mopub/common/AdFormat;

    const-string v5, "NATIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mopub/common/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mopub/common/AdFormat;->NATIVE:Lcom/mopub/common/AdFormat;

    .line 4
    new-instance v5, Lcom/mopub/common/AdFormat;

    const-string v7, "REWARDED_AD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mopub/common/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mopub/common/AdFormat;->REWARDED_AD:Lcom/mopub/common/AdFormat;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mopub/common/AdFormat;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/mopub/common/AdFormat;->a:[Lcom/mopub/common/AdFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/AdFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/mopub/common/AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/AdFormat;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/AdFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/common/AdFormat;->a:[Lcom/mopub/common/AdFormat;

    invoke-virtual {v0}, [Lcom/mopub/common/AdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/AdFormat;

    return-object v0
.end method
