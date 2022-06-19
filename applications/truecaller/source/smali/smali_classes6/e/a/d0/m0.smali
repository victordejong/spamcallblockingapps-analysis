.class public final Le/a/d0/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/l0;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/g;

.field public b:Lq3/a/p1;

.field public final c:Ls1/g;

.field public final d:Ls1/w/f;

.field public final e:Le/a/o/c;

.field public final f:Le/a/f/b;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/o/c;Le/a/f/b;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUi"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/m0;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/d0/m0;->e:Le/a/o/c;

    iput-object p3, p0, Le/a/d0/m0;->f:Le/a/f/b;

    .line 2
    sget-object p1, Le/a/d0/m0$d;->b:Le/a/d0/m0$d;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d0/m0;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/d0/m0$c;

    invoke-direct {p1, p0}, Le/a/d0/m0$c;-><init>(Le/a/d0/m0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d0/m0;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/d0/v;Le/a/d0/y;Ljava/lang/String;Le/a/d0/o0;)V
    .locals 6

    const-string p3, "callState"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callerIdCallback"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/d0/m0;->e()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/d0/m0;->e:Le/a/o/c;

    invoke-interface {p1}, Le/a/o/c;->J()V

    .line 3
    iget-object p1, p0, Le/a/d0/m0;->e:Le/a/o/c;

    invoke-interface {p1}, Le/a/o/c;->s()V

    .line 4
    new-instance v3, Le/a/d0/n0;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p2, p4, p1}, Le/a/d0/n0;-><init>(Le/a/d0/m0;Le/a/d0/y;Le/a/d0/o0;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Le/a/e3/e/b;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d0/m0;->e:Le/a/o/c;

    invoke-interface {v0}, Le/a/o/c;->i()Lq3/a/x2/a1;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/CallContextMessage;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/d0/m0;->e:Le/a/o/c;

    .line 3
    iget-object p1, p1, Le/a/e3/e/b;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v1, v0, p1}, Le/a/o/c;->h(Lcom/truecaller/data/entity/CallContextMessage;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Le/a/d0/v;Ljava/lang/String;Le/a/d0/o0;)V
    .locals 6

    const-string v0, "callState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    new-instance v3, Le/a/d0/m0$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p3, p2, p1}, Le/a/d0/m0$a;-><init>(Le/a/d0/m0;Le/a/d0/o0;Ljava/lang/String;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public d(Le/a/d0/v;Ljava/lang/String;)V
    .locals 6

    const-string v0, "callState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "normalizedNumber"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/d0/m0;->e()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    new-instance v3, Le/a/d0/m0$b;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p2, p1}, Le/a/d0/m0$b;-><init>(Le/a/d0/m0;Ljava/lang/String;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d0/m0;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/p1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d0/m0;->e:Le/a/o/c;

    invoke-interface {v0}, Le/a/o/c;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d0/m0;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d0/m0;->d:Ls1/w/f;

    .line 2
    iget-object v1, p0, Le/a/d0/m0;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/p1;

    .line 3
    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
