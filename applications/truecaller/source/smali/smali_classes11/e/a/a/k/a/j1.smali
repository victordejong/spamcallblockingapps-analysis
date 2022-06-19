.class public final Le/a/a/k/a/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/i1;


# instance fields
.field public final a:Le/a/a/i0;

.field public final b:Le/a/b0/e/r/a;

.field public final c:Le/a/u3/g;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/a/s1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ls1/w/f;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/a/i0;Le/a/b0/e/r/a;Le/a/u3/g;Lo3/a;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/i0;",
            "Le/a/b0/e/r/a;",
            "Le/a/u3/g;",
            "Lo3/a<",
            "Le/a/a/k/a/s1;",
            ">;",
            "Ls1/w/f;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messageSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stubManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/j1;->a:Le/a/a/i0;

    iput-object p2, p0, Le/a/a/k/a/j1;->b:Le/a/b0/e/r/a;

    iput-object p3, p0, Le/a/a/k/a/j1;->c:Le/a/u3/g;

    iput-object p4, p0, Le/a/a/k/a/j1;->d:Lo3/a;

    iput-object p5, p0, Le/a/a/k/a/j1;->e:Ls1/w/f;

    iput-object p6, p0, Le/a/a/k/a/j1;->f:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Le/a/a/k/a/u1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listenerRef"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/k/a/j1;->g()I

    move-result v0

    invoke-virtual {p0}, Le/a/a/k/a/j1;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/a/k/a/j1;->e:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/a/k/a/j1$a;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/a/k/a/j1$a;-><init>(Le/a/a/k/a/j1;Ljava/lang/ref/WeakReference;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a/j1;->c:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->L()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/k/a/j1;->c:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->J()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    :goto_0
    return v0
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a/j1;->a:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->J3(I)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/k/a/j1;->g()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/k/a/j1;->b()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a/j1;->a:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->S1()I

    move-result v0

    invoke-virtual {p0, v0}, Le/a/a/k/a/j1;->e(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a/j1;->a:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->O2()I

    move-result v0

    return v0
.end method
