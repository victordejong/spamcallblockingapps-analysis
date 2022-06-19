.class public final Ln3/z/j3/i;
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
.field public final a:Lq3/a/p1;

.field public final b:Lq3/a/i0;

.field public final c:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Ln3/z/j3/c$c$b<",
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


# direct methods
.method public constructor <init>(Lq3/a/i0;Lq3/a/x2/f;Ls1/z/b/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Lq3/a/x2/f<",
            "+TT;>;",
            "Ls1/z/b/p<",
            "-",
            "Ln3/z/j3/c$c$b<",
            "TT;>;-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendUpsteamMessage"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/j3/i;->b:Lq3/a/i0;

    iput-object p2, p0, Ln3/z/j3/i;->c:Lq3/a/x2/f;

    iput-object p3, p0, Ln3/z/j3/i;->d:Ls1/z/b/p;

    .line 2
    sget-object v3, Lq3/a/j0;->b:Lq3/a/j0;

    new-instance v4, Ln3/z/j3/i$a;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p2}, Ln3/z/j3/i$a;-><init>(Ln3/z/j3/i;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Ln3/z/j3/i;->a:Lq3/a/p1;

    return-void
.end method
