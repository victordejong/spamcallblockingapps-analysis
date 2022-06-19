.class public final Le/a/a4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a4/a;


# instance fields
.field public final a:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "cpuContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a4/s;->a:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/a4/s;->a:Ls1/w/f;

    const-string v0, "context"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/a/t/a/u/a;

    invoke-direct {v1, p1}, Le/a/t/a/u/a;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "loader"

    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/util/concurrent/FutureTask;

    new-instance v0, Le/a/t/a/u/g;

    invoke-direct {v0, v1}, Le/a/t/a/u/g;-><init>(Le/a/t/a/u/j;)V

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object p1, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    .line 6
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v4, Le/a/t/a/u/h;

    const/4 p1, 0x0

    invoke-direct {v4, p1}, Le/a/t/a/u/h;-><init>(Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
