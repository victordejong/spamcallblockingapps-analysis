.class public final Lq3/a/y2/r;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "<anonymous parameter 0>",
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
.field public final synthetic b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "TE;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final synthetic d:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/z/b/l;Ljava/lang/Object;Ls1/w/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-TE;",
            "Ls1/s;",
            ">;TE;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/y2/r;->b:Ls1/z/b/l;

    iput-object p2, p0, Lq3/a/y2/r;->c:Ljava/lang/Object;

    iput-object p3, p0, Lq3/a/y2/r;->d:Ls1/w/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lq3/a/y2/r;->b:Ls1/z/b/l;

    iget-object v0, p0, Lq3/a/y2/r;->c:Ljava/lang/Object;

    iget-object v1, p0, Lq3/a/y2/r;->d:Ls1/w/f;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v2}, Ls1/a/a/a/v0/f/d;->N(Ls1/z/b/l;Ljava/lang/Object;Lq3/a/y2/f0;)Lq3/a/y2/f0;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->E1(Ls1/w/f;Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
