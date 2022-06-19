.class public Lcom/appnext/core/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x703749fdc8408c22L


# instance fields
.field private adID:I

.field private adJSON:Ljava/lang/String;

.field private placementID:Ljava/lang/String;

.field private sid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/appnext/core/h;->adID:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/appnext/core/h;->adJSON:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/appnext/core/h;->placementID:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/appnext/core/h;->sid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/core/h;->adID:I

    return v0
.end method

.method public getAdJSON()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/h;->adJSON:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/h;->placementID:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/h;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public setAdID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/appnext/core/h;->adID:I

    return-void
.end method

.method public setAdJSON(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/h;->adJSON:Ljava/lang/String;

    return-void
.end method

.method public setPlacementID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/h;->placementID:Ljava/lang/String;

    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/h;->sid:Ljava/lang/String;

    return-void
.end method
