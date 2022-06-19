.class public final Le/a/a/r0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/r0/c;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/o5/f0;

.field public final c:Le/a/f4/g/r;

.field public final d:Le/a/p5/u;

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(Lo3/a;Le/a/o5/f0;Le/a/f4/g/r;Le/a/p5/u;Ljavax/inject/Provider;I)V
    .locals 1
    .param p6    # I
        .annotation runtime Ljavax/inject/Named;
            value = "conv_spam_s_b_s"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Le/a/o5/f0;",
            "Le/a/f4/g/r;",
            "Le/a/p5/u;",
            "Ljavax/inject/Provider<",
            "Le/a/a/i0;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "readMessageStorage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/r0/d;->a:Lo3/a;

    iput-object p2, p0, Le/a/a/r0/d;->b:Le/a/o5/f0;

    iput-object p3, p0, Le/a/a/r0/d;->c:Le/a/f4/g/r;

    iput-object p4, p0, Le/a/a/r0/d;->d:Le/a/p5/u;

    iput-object p5, p0, Le/a/a/r0/d;->e:Ljavax/inject/Provider;

    iput p6, p0, Le/a/a/r0/d;->f:I

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/a/r0/d$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/a/r0/d$b;

    iget v1, v0, Le/a/a/r0/d$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/r0/d$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/r0/d$b;

    invoke-direct {v0, p0, p1}, Le/a/a/r0/d$b;-><init>(Le/a/a/r0/d;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/a/r0/d$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/r0/d$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/a/r0/d$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/d;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/a/r0/d$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/a/r0/d$b;->e:I

    invoke-virtual {p0, v0}, Le/a/a/r0/d;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    iget-object v1, v0, Le/a/a/r0/d;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "settings.get()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/a/i0;

    if-eqz p1, :cond_4

    const/4 v3, 0x2

    :cond_4
    invoke-interface {v1, v3}, Le/a/a/i0;->h3(I)V

    .line 6
    iget-object v0, v0, Le/a/a/r0/d;->b:Le/a/o5/f0;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.truecaller.messaging.spam.SEARCH_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/o5/f0;->j(Landroid/content/Intent;)V

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/a/r0/d$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/a/r0/d$d;

    iget v1, v0, Le/a/a/r0/d$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/r0/d$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/r0/d$d;

    invoke-direct {v0, p0, p1}, Le/a/a/r0/d$d;-><init>(Le/a/a/r0/d;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/a/r0/d$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/r0/d$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/a/r0/d$d;->g:Ljava/lang/Object;

    check-cast v0, Le/a/a/r0/d;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/r0/d;->e:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/i0;

    const/16 v2, 0x96

    invoke-interface {p1, v2}, Le/a/a/i0;->C(I)I

    move-result p1

    .line 5
    iget-object v2, p0, Le/a/a/r0/d;->a:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/w;

    .line 6
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 7
    iput-object p0, v0, Le/a/a/r0/d$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/a/r0/d$d;->e:I

    invoke-interface {v2, v4, v0}, Le/a/a/g/w;->f(Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Le/a/a/g/j0/a;

    if-eqz p1, :cond_8

    .line 8
    :try_start_0
    new-instance v1, Le/a/a/r0/d$a;

    invoke-direct {v1, p1}, Le/a/a/r0/d$a;-><init>(Landroid/database/Cursor;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->e1(Ls1/z/b/a;)Ls1/e0/k;

    move-result-object v1

    .line 9
    sget-object v2, Le/a/a/r0/d$e;->b:Le/a/a/r0/d$e;

    invoke-static {v1, v2}, Ls1/e0/x;->i(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v1

    .line 10
    new-instance v2, Le/a/a/r0/d$c;

    invoke-direct {v2, v0}, Le/a/a/r0/d$c;-><init>(Le/a/a/r0/d;)V

    invoke-static {v1, v2}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v1

    .line 11
    sget-object v2, Le/a/a/r0/e;->h:Ls1/a/k;

    invoke-static {v1, v2}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v1

    const-string v2, "$this$distinct"

    .line 12
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v2, Ls1/e0/y;->b:Ls1/e0/y;

    const-string v4, "$this$distinctBy"

    .line 14
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "selector"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v4, Ls1/e0/c;

    invoke-direct {v4, v1, v2}, Ls1/e0/c;-><init>(Ls1/e0/k;Ls1/z/b/l;)V

    .line 16
    iget v1, v0, Le/a/a/r0/d;->f:I

    new-instance v2, Le/a/a/r0/d$f;

    invoke-direct {v2, v0}, Le/a/a/r0/d$f;-><init>(Le/a/a/r0/d;)V

    const-string v0, "$this$chunked"

    .line 17
    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$this$windowed"

    .line 18
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {v4, v1, v1, v3, v3}, Le/q/f/a/d/a;->r3(Ls1/e0/k;IIZZ)Ls1/e0/k;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 20
    sget-object v1, Le/a/a/r0/d$g;->b:Le/a/a/r0/d$g;

    invoke-static {v0, v1}, Ls1/e0/x;->p(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 21
    check-cast v0, Ls1/e0/b0;

    .line 22
    new-instance v1, Ls1/e0/b0$a;

    invoke-direct {v1, v0}, Ls1/e0/b0$a;-><init>(Ls1/e0/b0;)V

    const/4 v0, 0x0

    move v2, v0

    .line 23
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ls1/e0/b0$a;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Ls1/e0/b0$a;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v0

    .line 24
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 25
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Ls1/u/i;->M0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 26
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {p1, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :catchall_0
    move-exception v0

    .line 29
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 30
    :cond_8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
