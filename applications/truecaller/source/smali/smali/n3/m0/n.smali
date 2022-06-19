.class public final Ln3/m0/n;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Throwable;",
        "Ls1/s;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "throwable",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ln3/m0/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/m0/o<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/m0/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/o<",
            "TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ln3/m0/n;->b:Ln3/m0/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Ln3/m0/n;->b:Ln3/m0/o;

    .line 3
    iget-object p1, p1, Ln3/m0/o;->b:Ln3/m0/c0/t/w/c;

    .line 4
    invoke-virtual {p1}, Ln3/m0/c0/t/w/a;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_2

    iget-object p1, p0, Ln3/m0/n;->b:Ln3/m0/o;

    .line 6
    iget-object p1, p1, Ln3/m0/o;->b:Ln3/m0/c0/t/w/c;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Ln3/m0/c0/t/w/a;->cancel(Z)Z

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Ln3/m0/n;->b:Ln3/m0/o;

    .line 9
    iget-object v0, v0, Ln3/m0/o;->b:Ln3/m0/c0/t/w/c;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ln3/m0/c0/t/w/c;->j(Ljava/lang/Throwable;)Z

    .line 11
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
