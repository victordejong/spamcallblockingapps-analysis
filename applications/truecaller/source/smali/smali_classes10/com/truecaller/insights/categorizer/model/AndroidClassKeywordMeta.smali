.class public final Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/a0/c;


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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0081\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J2\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\t\u001a\u00020\u00028\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0004R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00058\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0007R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0019\u001a\u0004\u0008\u001b\u0010\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;",
        "Le/a/c/g/a0/c;",
        "",
        "component1",
        "()I",
        "",
        "component2",
        "()Ljava/lang/Double;",
        "component3",
        "classIdentifier",
        "probs",
        "tf",
        "copy",
        "(ILjava/lang/Double;Ljava/lang/Double;)Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getClassIdentifier",
        "Ljava/lang/Double;",
        "getProbs",
        "getTf",
        "<init>",
        "(ILjava/lang/Double;Ljava/lang/Double;)V",
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

.field private final tf:Ljava/lang/Double;


# direct methods
.method public constructor <init>(ILjava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->classIdentifier:I

    iput-object p2, p0, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->probs:Ljava/lang/Double;

    iput-object p3, p0, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->tf:Ljava/lang/Double;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getClassIdentifier()I

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getProbs()Ljava/lang/Double;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getTf()Ljava/lang/Double;

    move-result-object p3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->copy(ILjava/lang/Double;Ljava/lang/Double;)Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getClassIdentifier()I

    move-result v0

    return v0
.end method

.method public final component2()Ljava/lang/Double;
    .locals 1

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getProbs()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/Double;
    .locals 1

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getTf()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final copy(ILjava/lang/Double;Ljava/lang/Double;)Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;
    .locals 1

    new-instance v0, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;-><init>(ILjava/lang/Double;Ljava/lang/Double;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getClassIdentifier()I

    move-result v0

    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getClassIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getProbs()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getProbs()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getTf()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getTf()Ljava/lang/Double;

    move-result-object p1

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

.method public getClassIdentifier()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->classIdentifier:I

    return v0
.end method

.method public getProbs()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->probs:Ljava/lang/Double;

    return-object v0
.end method

.method public getTf()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->tf:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getClassIdentifier()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getProbs()Ljava/lang/Double;

    move-result-object v1

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

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getTf()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AndroidClassKeywordMeta(classIdentifier="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getClassIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", probs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getProbs()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;->getTf()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
