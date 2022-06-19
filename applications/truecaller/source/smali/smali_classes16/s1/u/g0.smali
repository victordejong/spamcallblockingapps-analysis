.class public final Ls1/u/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/e0/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/e0/k<",
        "Ljava/util/List<",
        "+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/sequences/SequencesKt__SequencesKt$Sequence$1",
        "Lkotlin/sequences/Sequence;",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/e0/k;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Ls1/e0/k;IIZZ)V
    .locals 0

    iput-object p1, p0, Ls1/u/g0;->a:Ls1/e0/k;

    iput p2, p0, Ls1/u/g0;->b:I

    iput p3, p0, Ls1/u/g0;->c:I

    iput-boolean p4, p0, Ls1/u/g0;->d:Z

    iput-boolean p5, p0, Ls1/u/g0;->e:Z

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "+TT;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/u/g0;->a:Ls1/e0/k;

    invoke-interface {v0}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Ls1/u/g0;->b:I

    iget v2, p0, Ls1/u/g0;->c:I

    iget-boolean v3, p0, Ls1/u/g0;->d:Z

    iget-boolean v4, p0, Ls1/u/g0;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Le/q/f/a/d/a;->q3(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
