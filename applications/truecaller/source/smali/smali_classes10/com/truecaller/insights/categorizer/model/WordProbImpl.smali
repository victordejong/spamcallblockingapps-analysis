.class public final Lcom/truecaller/insights/categorizer/model/WordProbImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/a0/m;


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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J,\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R$\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00058\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0008R\u001c\u0010\t\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0004\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/truecaller/insights/categorizer/model/WordProbImpl;",
        "Le/a/c/g/a0/m;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "",
        "",
        "component2",
        "()Ljava/util/List;",
        "word",
        "probability",
        "copy",
        "(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/insights/categorizer/model/WordProbImpl;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getProbability",
        "Ljava/lang/String;",
        "getWord",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;)V",
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
.field private final probability:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-string v0, "word"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "probability"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->word:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->probability:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/categorizer/model/WordProbImpl;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/truecaller/insights/categorizer/model/WordProbImpl;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getWord()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getProbability()Ljava/util/List;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->copy(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/insights/categorizer/model/WordProbImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getWord()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getProbability()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/insights/categorizer/model/WordProbImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/truecaller/insights/categorizer/model/WordProbImpl;"
        }
    .end annotation

    const-string v0, "word"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "probability"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/insights/categorizer/model/WordProbImpl;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/categorizer/model/WordProbImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/categorizer/model/WordProbImpl;

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getProbability()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getProbability()Ljava/util/List;

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

.method public getProbability()Ljava/util/List;
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
    iget-object v0, p0, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->probability:Ljava/util/List;

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->word:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getWord()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getProbability()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "WordProbImpl(word="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", probability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;->getProbability()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
