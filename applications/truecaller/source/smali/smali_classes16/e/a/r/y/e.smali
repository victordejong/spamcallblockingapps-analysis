.class public final Le/a/r/y/e;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/r/y/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/r/y/k;",
        ">;",
        "Le/a/r/y/j;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/r/h;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/r/h;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/r/y/e;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/r/y/e;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/r/y/e;->f:Le/a/r/h;

    return-void
.end method


# virtual methods
.method public Cj()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/r/y/e;->f:Le/a/r/h;

    invoke-interface {v0}, Le/a/r/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/r/y/e;->f:Le/a/r/h;

    invoke-interface {v0}, Le/a/r/h;->c()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/r/y/e;->f:Le/a/r/h;

    invoke-interface {v0}, Le/a/r/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/y/k;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/r/y/k;->y7()V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v4, Le/a/r/y/d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/r/y/d;-><init>(Le/a/r/y/e;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_2
    :goto_0
    return-void
.end method
