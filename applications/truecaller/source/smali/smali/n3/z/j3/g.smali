.class public final Ln3/z/j3/g;
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
.field public final a:Ls1/g;

.field public final b:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/i0;

.field public final d:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Ls1/z/b/p;
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

.field public final g:Z


# direct methods
.method public constructor <init>(Lq3/a/i0;ILq3/a/x2/f;ZLs1/z/b/p;ZI)V
    .locals 2

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move p4, v1

    :cond_1
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    move p6, v1

    :cond_2
    const-string p7, "scope"

    .line 1
    invoke-static {p1, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "source"

    invoke-static {p3, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "onEach"

    invoke-static {p5, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/j3/g;->c:Lq3/a/i0;

    iput-object p3, p0, Ln3/z/j3/g;->d:Lq3/a/x2/f;

    iput-boolean p4, p0, Ln3/z/j3/g;->e:Z

    iput-object p5, p0, Ln3/z/j3/g;->f:Ls1/z/b/p;

    iput-boolean p6, p0, Ln3/z/j3/g;->g:Z

    .line 3
    sget-object p1, Ls1/h;->a:Ls1/h;

    new-instance p3, Ln3/z/j3/e;

    invoke-direct {p3, p0, p2}, Ln3/z/j3/e;-><init>(Ln3/z/j3/g;I)V

    invoke-static {p1, p3}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ln3/z/j3/g;->a:Ls1/g;

    .line 4
    new-instance p1, Ln3/z/j3/f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ln3/z/j3/f;-><init>(Ln3/z/j3/g;Ls1/w/d;)V

    .line 5
    new-instance p2, Lq3/a/x2/d1;

    invoke-direct {p2, p1}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 6
    iput-object p2, p0, Ln3/z/j3/g;->b:Lq3/a/x2/f;

    return-void
.end method
