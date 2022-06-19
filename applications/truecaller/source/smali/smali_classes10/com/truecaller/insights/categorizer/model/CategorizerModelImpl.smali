.class public final Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/a0/a;


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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0081\u0008\u0018\u00002\u00020\u0001B+\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ:\u0010\u000e\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\nJ\u001a\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\"\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0005R\"\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00028\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0019\u001a\u0004\u0008\u001b\u0010\u0005R\u001c\u0010\r\u001a\u00020\u00088\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u001c\u001a\u0004\u0008\u001d\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;",
        "Le/a/c/g/a0/a;",
        "",
        "Lcom/truecaller/insights/categorizer/model/WordProbImpl;",
        "component1",
        "()Ljava/util/List;",
        "",
        "component2",
        "",
        "component3",
        "()I",
        "probabilities",
        "meta",
        "version",
        "copy",
        "(Ljava/util/List;Ljava/util/List;I)Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getProbabilities",
        "getMeta",
        "I",
        "getVersion",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;I)V",
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
.field private final meta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final probabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/insights/categorizer/model/WordProbImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final version:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/categorizer/model/WordProbImpl;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "probabilities"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->probabilities:Ljava/util/List;

    iput-object p2, p0, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->meta:Ljava/util/List;

    iput p3, p0, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->version:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getProbabilities()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getMeta()Ljava/util/List;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getVersion()I

    move-result p3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->copy(Ljava/util/List;Ljava/util/List;I)Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/categorizer/model/WordProbImpl;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getProbabilities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getMeta()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final component3()I
    .locals 1

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getVersion()I

    move-result v0

    return v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;I)Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/categorizer/model/WordProbImpl;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;I)",
            "Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;"
        }
    .end annotation

    const-string v0, "probabilities"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getProbabilities()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getProbabilities()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getMeta()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getMeta()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getVersion()I

    move-result v0

    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getVersion()I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getMeta()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->meta:Ljava/util/List;

    return-object v0
.end method

.method public getProbabilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/categorizer/model/WordProbImpl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->probabilities:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getProbabilities()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getMeta()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getVersion()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CategorizerModelImpl(probabilities="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getProbabilities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getMeta()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
