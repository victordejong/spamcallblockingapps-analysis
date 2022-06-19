.class public interface abstract Le/a/c/g/a0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\nR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/insights/categorizer/model/MultiClassClassifierModel;",
        "",
        "barrierValue",
        "",
        "getBarrierValue",
        "()D",
        "classMetas",
        "",
        "Lcom/truecaller/insights/categorizer/model/ClassMeta;",
        "getClassMetas",
        "()Ljava/util/List;",
        "probabilities",
        "Lcom/truecaller/insights/categorizer/model/WordToClassProb;",
        "getProbabilities",
        "version",
        "",
        "getVersion",
        "()I",
        "insights-categorizer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getBarrierValue()D
.end method

.method public abstract getClassMetas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/c/g/a0/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProbabilities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/c/g/a0/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method
