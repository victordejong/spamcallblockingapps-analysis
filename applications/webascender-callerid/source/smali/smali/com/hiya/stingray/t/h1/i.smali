.class public final Lcom/hiya/stingray/t/h1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/h1/i$a;
    }
.end annotation


# instance fields
.field private final a:D

.field private final b:D

.field private final c:Ljava/lang/String;

.field private final d:Lcom/hiya/stingray/t/h1/i$a;


# direct methods
.method public constructor <init>(DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/hiya/stingray/t/h1/i;->a:D

    iput-wide p3, p0, Lcom/hiya/stingray/t/h1/i;->b:D

    iput-object p5, p0, Lcom/hiya/stingray/t/h1/i;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/hiya/stingray/t/h1/i;->d:Lcom/hiya/stingray/t/h1/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/location/Address;Lcom/hiya/stingray/t/h1/i$a;)V
    .locals 8

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-static {p1}, Lcom/hiya/stingray/t/h1/j;->b(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/t/h1/i;-><init>(DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;)V

    return-void
.end method

.method public static synthetic b(Lcom/hiya/stingray/t/h1/i;DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;ILjava/lang/Object;)Lcom/hiya/stingray/t/h1/i;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/hiya/stingray/t/h1/i;->a:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/hiya/stingray/t/h1/i;->b:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p5, p0, Lcom/hiya/stingray/t/h1/i;->c:Ljava/lang/String;

    :cond_2
    move-object v5, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p6, p0, Lcom/hiya/stingray/t/h1/i;->d:Lcom/hiya/stingray/t/h1/i$a;

    :cond_3
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/hiya/stingray/t/h1/i;->a(DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;)Lcom/hiya/stingray/t/h1/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;)Lcom/hiya/stingray/t/h1/i;
    .locals 8

    const-string v0, "source"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hiya/stingray/t/h1/i;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/t/h1/i;-><init>(DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;)V

    return-object v0
.end method

.method public final c()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/t/h1/i;->a:D

    return-wide v0
.end method

.method public final d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/t/h1/i;->b:D

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/stingray/t/h1/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/stingray/t/h1/i;

    iget-wide v0, p0, Lcom/hiya/stingray/t/h1/i;->a:D

    iget-wide v2, p1, Lcom/hiya/stingray/t/h1/i;->a:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/hiya/stingray/t/h1/i;->b:D

    iget-wide v2, p1, Lcom/hiya/stingray/t/h1/i;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/i;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/i;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/i;->d:Lcom/hiya/stingray/t/h1/i$a;

    iget-object p1, p1, Lcom/hiya/stingray/t/h1/i;->d:Lcom/hiya/stingray/t/h1/i$a;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Lcom/hiya/stingray/t/h1/i$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/i;->d:Lcom/hiya/stingray/t/h1/i$a;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/hiya/stingray/t/h1/i;->a:D

    invoke-static {v0, v1}, Lc;->a(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/hiya/stingray/t/h1/i;->b:D

    invoke-static {v1, v2}, Lc;->a(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/i;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/i;->d:Lcom/hiya/stingray/t/h1/i$a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectablePlace(latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hiya/stingray/t/h1/i;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hiya/stingray/t/h1/i;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/i;->d:Lcom/hiya/stingray/t/h1/i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
