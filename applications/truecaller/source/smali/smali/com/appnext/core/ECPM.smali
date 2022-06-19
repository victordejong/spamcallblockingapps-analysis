.class public Lcom/appnext/core/ECPM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private banner:Ljava/lang/String;

.field private ecpm:F

.field private ppr:F


# direct methods
.method public constructor <init>(FFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/appnext/core/ECPM;->ecpm:F

    .line 3
    iput p2, p0, Lcom/appnext/core/ECPM;->ppr:F

    .line 4
    iput-object p3, p0, Lcom/appnext/core/ECPM;->banner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBanner()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ECPM;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getEcpm()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/core/ECPM;->ecpm:F

    return v0
.end method

.method public getPpr()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/core/ECPM;->ppr:F

    return v0
.end method
