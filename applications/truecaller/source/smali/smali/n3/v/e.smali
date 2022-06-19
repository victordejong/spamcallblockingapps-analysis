.class public final Ln3/v/e;
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
.field public a:Lq3/a/p1;

.field public b:Lq3/a/p1;

.field public final c:Ln3/v/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Ln3/v/g0<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:J

.field public final f:Lq3/a/i0;

.field public final g:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/v/h;Ls1/z/b/p;JLq3/a/i0;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/v/h<",
            "TT;>;",
            "Ls1/z/b/p<",
            "-",
            "Ln3/v/g0<",
            "TT;>;-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;J",
            "Lq3/a/i0;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "liveData"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDone"

    invoke-static {p6, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/v/e;->c:Ln3/v/h;

    iput-object p2, p0, Ln3/v/e;->d:Ls1/z/b/p;

    iput-wide p3, p0, Ln3/v/e;->e:J

    iput-object p5, p0, Ln3/v/e;->f:Lq3/a/i0;

    iput-object p6, p0, Ln3/v/e;->g:Ls1/z/b/a;

    return-void
.end method
