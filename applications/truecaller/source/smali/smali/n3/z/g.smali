.class public final Ln3/z/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ln3/z/x;

.field public b:Z

.field public final c:Ln3/z/g$a;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ln3/z/q;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ln3/b0/a/h$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/b0/a/h$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Ln3/b0/a/q;

.field public final h:Lq3/a/g0;

.field public final i:Lq3/a/g0;


# direct methods
.method public constructor <init>(Ln3/b0/a/h$e;Ln3/b0/a/q;Lq3/a/g0;Lq3/a/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b0/a/h$e<",
            "TT;>;",
            "Ln3/b0/a/q;",
            "Lq3/a/g0;",
            "Lq3/a/g0;",
            ")V"
        }
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateCallback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerDispatcher"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/g;->f:Ln3/b0/a/h$e;

    iput-object p2, p0, Ln3/z/g;->g:Ln3/b0/a/q;

    iput-object p3, p0, Ln3/z/g;->h:Lq3/a/g0;

    iput-object p4, p0, Ln3/z/g;->i:Lq3/a/g0;

    .line 2
    new-instance p1, Ln3/z/g$b;

    invoke-direct {p1, p0}, Ln3/z/g$b;-><init>(Ln3/z/g;)V

    iput-object p1, p0, Ln3/z/g;->a:Ln3/z/x;

    .line 3
    new-instance p2, Ln3/z/g$a;

    invoke-direct {p2, p0, p1, p3}, Ln3/z/g$a;-><init>(Ln3/z/g;Ln3/z/x;Lq3/a/g0;)V

    iput-object p2, p0, Ln3/z/g;->c:Ln3/z/g$a;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ln3/z/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    iget-object p1, p2, Ln3/z/g2;->i:Lq3/a/x2/a1;

    .line 6
    iput-object p1, p0, Ln3/z/g;->e:Lq3/a/x2/f;

    return-void
.end method
