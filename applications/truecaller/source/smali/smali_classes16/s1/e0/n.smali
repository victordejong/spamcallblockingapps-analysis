.class public final Ls1/e0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/e0/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/e0/k<",
        "TT;>;"
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
.field public final synthetic a:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Ls1/z/b/p;)V
    .locals 0

    iput-object p1, p0, Ls1/e0/n;->a:Ls1/z/b/p;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/e0/n;->a:Ls1/z/b/p;

    const-string v1, "block"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ls1/e0/l;

    invoke-direct {v1}, Ls1/e0/l;-><init>()V

    .line 4
    invoke-static {v0, v1, v1}, Le/q/f/a/d/a;->Z(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object v0

    .line 5
    iput-object v0, v1, Ls1/e0/l;->c:Ls1/w/d;

    return-object v1
.end method
