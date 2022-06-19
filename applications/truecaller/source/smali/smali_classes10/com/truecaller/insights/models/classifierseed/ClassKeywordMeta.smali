.class public final Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ2\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\n\u001a\u00020\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0007R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0019\u001a\u0004\u0008\u001a\u0010\tR\u001c\u0010\n\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u0004\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;",
        "",
        "",
        "component1",
        "()I",
        "",
        "component2",
        "()Ljava/lang/Double;",
        "component3",
        "()Ljava/lang/Integer;",
        "classIdentifier",
        "probs",
        "tf",
        "copy",
        "(ILjava/lang/Double;Ljava/lang/Integer;)Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/Double;",
        "getProbs",
        "Ljava/lang/Integer;",
        "getTf",
        "I",
        "getClassIdentifier",
        "<init>",
        "(ILjava/lang/Double;Ljava/lang/Integer;)V",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final classIdentifier:I
    .annotation runtime Le/m/e/d0/b;
        value = "class"
    .end annotation
.end field

.field private final probs:Ljava/lang/Double;
    .annotation runtime Le/m/e/d0/b;
        value = "probs"
    .end annotation
.end field

.field private final tf:Ljava/lang/Integer;
    .annotation runtime Le/m/e/d0/b;
        value = "tf"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Double;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->classIdentifier:I

    iput-object p2, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->probs:Ljava/lang/Double;

    iput-object p3, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->tf:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;ILjava/lang/Double;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->classIdentifier:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->probs:Ljava/lang/Double;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->tf:Ljava/lang/Integer;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->copy(ILjava/lang/Double;Ljava/lang/Integer;)Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->classIdentifier:I

    return v0
.end method

.method public final component2()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->probs:Ljava/lang/Double;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->tf:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(ILjava/lang/Double;Ljava/lang/Integer;)Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;
    .locals 1

    new-instance v0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;-><init>(ILjava/lang/Double;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;

    iget v0, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->classIdentifier:I

    iget v1, p1, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->classIdentifier:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->probs:Ljava/lang/Double;

    iget-object v1, p1, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->probs:Ljava/lang/Double;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->tf:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->tf:Ljava/lang/Integer;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final getClassIdentifier()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->classIdentifier:I

    return v0
.end method

.method public final getProbs()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->probs:Ljava/lang/Double;

    return-object v0
.end method

.method public final getTf()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->tf:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->classIdentifier:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->probs:Ljava/lang/Double;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->tf:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ClassKeywordMeta(classIdentifier="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->classIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", probs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->probs:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->tf:Ljava/lang/Integer;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->L2(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
