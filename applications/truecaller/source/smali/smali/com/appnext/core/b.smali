.class public final Lcom/appnext/core/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cD:Ljava/lang/String;

.field private cE:Ljava/lang/String;

.field private cF:I

.field private cG:I

.field private cat:Ljava/lang/String;

.field private cnt:I

.field private pbk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appnext/core/Ad;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/appnext/core/b;->cD:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/appnext/core/b;->cat:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/appnext/core/b;->cE:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/appnext/core/b;->pbk:Ljava/lang/String;

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/b;->cD:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/b;->cat:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getSpecificCategories()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/b;->cE:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/b;->pbk:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v0

    iput v0, p0, Lcom/appnext/core/b;->cF:I

    .line 11
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v0

    iput v0, p0, Lcom/appnext/core/b;->cG:I

    .line 12
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getCount()I

    move-result p1

    iput p1, p0, Lcom/appnext/core/b;->cnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AdKey$AdKey"

    .line 13
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 2
    :cond_2
    instance-of v2, p1, Lcom/appnext/core/b;

    if-eqz v2, :cond_4

    .line 3
    move-object v2, p1

    check-cast v2, Lcom/appnext/core/b;

    iget-object v2, v2, Lcom/appnext/core/b;->cD:Ljava/lang/String;

    iget-object v3, p0, Lcom/appnext/core/b;->cD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/appnext/core/b;

    iget-object v2, v2, Lcom/appnext/core/b;->cat:Ljava/lang/String;

    iget-object v3, p0, Lcom/appnext/core/b;->cat:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/appnext/core/b;

    iget-object v2, v2, Lcom/appnext/core/b;->cE:Ljava/lang/String;

    iget-object v3, p0, Lcom/appnext/core/b;->cE:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/appnext/core/b;

    iget-object v2, v2, Lcom/appnext/core/b;->pbk:Ljava/lang/String;

    iget-object v3, p0, Lcom/appnext/core/b;->pbk:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/appnext/core/b;

    iget v2, v2, Lcom/appnext/core/b;->cF:I

    iget v3, p0, Lcom/appnext/core/b;->cF:I

    if-ne v2, v3, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/appnext/core/b;

    iget v2, v2, Lcom/appnext/core/b;->cG:I

    iget v3, p0, Lcom/appnext/core/b;->cG:I

    if-ne v2, v3, :cond_3

    check-cast p1, Lcom/appnext/core/b;

    iget p1, p1, Lcom/appnext/core/b;->cnt:I

    iget v2, p0, Lcom/appnext/core/b;->cnt:I

    if-ne p1, v2, :cond_3

    return v0

    :cond_3
    return v1

    .line 7
    :cond_4
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appnext/core/b;->cD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/appnext/core/b;->cat:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/appnext/core/b;->cE:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/appnext/core/b;->pbk:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget v1, p0, Lcom/appnext/core/b;->cF:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lcom/appnext/core/b;->cG:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/appnext/core/b;->cnt:I

    add-int/2addr v0, v1

    return v0
.end method
