.class public final Ln3/z/j3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/j3/c$a;,
        Ln3/z/j3/c$b;,
        Ln3/z/j3/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ln3/z/j3/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/j3/c<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/i0;

.field public final c:I

.field public final d:Z

.field public final e:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "TT;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/i0;IZLs1/z/b/p;ZLq3/a/x2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "IZ",
            "Ls1/z/b/p<",
            "-TT;-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z",
            "Lq3/a/x2/f<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEach"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upstream"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/j3/c;->b:Lq3/a/i0;

    iput p2, p0, Ln3/z/j3/c;->c:I

    iput-boolean p3, p0, Ln3/z/j3/c;->d:Z

    iput-object p4, p0, Ln3/z/j3/c;->e:Ls1/z/b/p;

    iput-boolean p5, p0, Ln3/z/j3/c;->f:Z

    iput-object p6, p0, Ln3/z/j3/c;->g:Lq3/a/x2/f;

    .line 2
    new-instance p1, Ln3/z/j3/c$a;

    invoke-direct {p1, p0}, Ln3/z/j3/c$a;-><init>(Ln3/z/j3/c;)V

    iput-object p1, p0, Ln3/z/j3/c;->a:Ln3/z/j3/c$a;

    return-void
.end method
