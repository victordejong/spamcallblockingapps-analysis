.class public final Ln3/z/h;
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
.field public final a:Ln3/z/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ln3/z/j3/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/j3/g<",
            "Ls1/u/w<",
            "Ln3/z/c1<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field public final d:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ln3/z/c1<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Lq3/a/i0;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/f<",
            "+",
            "Ln3/z/c1<",
            "TT;>;>;",
            "Lq3/a/i0;",
            ")V"
        }
    .end annotation

    const-string v0, "src"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/z/z;

    invoke-direct {v0}, Ln3/z/z;-><init>()V

    iput-object v0, p0, Ln3/z/h;->a:Ln3/z/z;

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Ln3/z/h;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v1, Ln3/z/j3/g;

    .line 5
    new-instance v2, Ln3/z/h$b;

    const/4 v11, 0x0

    invoke-direct {v2, p0, p1, v11}, Ln3/z/h$b;-><init>(Ln3/z/h;Lq3/a/x2/f;Ls1/w/d;)V

    .line 6
    new-instance v6, Lq3/a/x2/d1;

    invoke-direct {v6, v2}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 7
    new-instance v8, Ln3/z/h$c;

    invoke-direct {v8, v0}, Ln3/z/h$c;-><init>(Ln3/z/z;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x8

    move-object v3, v1

    move-object v4, p2

    .line 8
    invoke-direct/range {v3 .. v10}, Ln3/z/j3/g;-><init>(Lq3/a/i0;ILq3/a/x2/f;ZLs1/z/b/p;ZI)V

    iput-object v1, p0, Ln3/z/h;->c:Ln3/z/j3/g;

    .line 9
    new-instance p1, Ln3/z/h$a;

    invoke-direct {p1, p0, v11}, Ln3/z/h$a;-><init>(Ln3/z/h;Ls1/w/d;)V

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->A1(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    iput-object p1, p0, Ln3/z/h;->d:Lq3/a/x2/f;

    return-void
.end method
