.class public final Le/a/p5/s0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lq3/a/b3/c;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParam;"
        }
    .end annotation
.end field

.field public c:Lq3/a/p1;

.field public final d:Lq3/a/i0;

.field public final e:Ls1/z/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/q<",
            "TParam;",
            "Le/a/p5/s0/v<",
            "TParam;>;",
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
.method public constructor <init>(Lq3/a/i0;Ls1/z/b/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ls1/z/b/q<",
            "-TParam;-",
            "Le/a/p5/s0/v<",
            "TParam;>;-",
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

    const-string v0, "block"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p5/s0/v;->d:Lq3/a/i0;

    iput-object p2, p0, Le/a/p5/s0/v;->e:Ls1/z/b/q;

    .line 2
    new-instance p2, Lq3/a/b3/d;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lq3/a/b3/d;-><init>(Z)V

    .line 3
    iput-object p2, p0, Le/a/p5/s0/v;->a:Lq3/a/b3/c;

    .line 4
    new-instance v4, Le/a/p5/s0/u;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p2}, Le/a/p5/s0/u;-><init>(Le/a/p5/s0/v;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    .line 5
    iput-object p1, p0, Le/a/p5/s0/v;->c:Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)V"
        }
    .end annotation

    const-string v0, "param"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p5/s0/v;->a:Lq3/a/b3/c;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Le/a/p5/s0/v;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Le/a/p5/s0/v;->a:Lq3/a/b3/c;

    invoke-interface {p1}, Lq3/a/b3/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/p5/s0/v;->a:Lq3/a/b3/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->U3(Lq3/a/b3/c;Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
