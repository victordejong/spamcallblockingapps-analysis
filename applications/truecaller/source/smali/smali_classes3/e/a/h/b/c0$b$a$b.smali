.class public final Le/a/h/b/c0$b$a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/c0$b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Le/a/h/b/y0/a/d;",
        ">;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.DialerPresenter$listenToSearchTokenChanges$1$1$1$localSearchFlow$1"
    f = "DialerPresenter.kt"
    l = {
        0x48d,
        0x493,
        0x495,
        0x496,
        0x498
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/h/b/c0$b$a;

.field public final synthetic h:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Le/a/h/b/c0$b$a;Ls1/z/c/y;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/c0$b$a$b;->g:Le/a/h/b/c0$b$a;

    iput-object p2, p0, Le/a/h/b/c0$b$a$b;->h:Ls1/z/c/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/h/b/c0$b$a$b;

    iget-object v1, p0, Le/a/h/b/c0$b$a$b;->g:Le/a/h/b/c0$b$a;

    iget-object v2, p0, Le/a/h/b/c0$b$a$b;->h:Ls1/z/c/y;

    invoke-direct {v0, v1, v2, p2}, Le/a/h/b/c0$b$a$b;-><init>(Le/a/h/b/c0$b$a;Ls1/z/c/y;Ls1/w/d;)V

    iput-object p1, v0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/h/b/c0$b$a$b;

    iget-object v1, p0, Le/a/h/b/c0$b$a$b;->g:Le/a/h/b/c0$b$a;

    iget-object v2, p0, Le/a/h/b/c0$b$a$b;->h:Ls1/z/c/y;

    invoke-direct {v0, v1, v2, p2}, Le/a/h/b/c0$b$a$b;-><init>(Le/a/h/b/c0$b$a;Ls1/z/c/y;Ls1/w/d;)V

    iput-object p1, v0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/h/b/c0$b$a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/c0$b$a$b;->f:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    iget-object v1, p0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v1, p0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lq3/a/x2/g;

    .line 4
    iget-object p1, p0, Le/a/h/b/c0$b$a$b;->g:Le/a/h/b/c0$b$a;

    iget-object v8, p1, Le/a/h/b/c0$b$a;->h:Le/a/h/b/c0$b;

    iget-object v8, v8, Le/a/h/b/c0$b;->h:Le/a/h/b/c0;

    iget-object v8, v8, Le/a/h/b/c0;->f:Le/a/h/b/y;

    .line 5
    iget-object v8, v8, Le/a/h/b/y;->W:Le/a/h/b/y0/a/b;

    .line 6
    iget-object p1, p1, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    const/16 v9, 0x64

    .line 7
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 8
    iget-object v9, p0, Le/a/h/b/c0$b$a$b;->g:Le/a/h/b/c0$b$a;

    iget-object v9, v9, Le/a/h/b/c0$b$a;->h:Le/a/h/b/c0$b;

    iget-object v9, v9, Le/a/h/b/c0$b;->h:Le/a/h/b/c0;

    iget-object v9, v9, Le/a/h/b/c0;->g:Ls1/z/c/c0;

    iget-object v9, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v9, Landroid/os/CancellationSignal;

    iput-object v1, p0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    iput v6, p0, Le/a/h/b/c0$b$a$b;->f:I

    .line 9
    invoke-interface {v8, p1, v10, v9, p0}, Le/a/h/b/y0/a/b;->b(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/CancellationSignal;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 10
    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 11
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {p1, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 13
    check-cast v8, Le/a/h/b/y0/a/e;

    .line 14
    new-instance v9, Le/a/h/b/y0/a/a;

    .line 15
    iget-object v10, v8, Le/a/h/b/y0/a/e;->a:Lcom/truecaller/data/entity/Contact;

    .line 16
    iget-object v11, v8, Le/a/h/b/y0/a/e;->b:Ljava/lang/String;

    .line 17
    iget-object v8, v8, Le/a/h/b/y0/a/e;->c:Lcom/truecaller/blocking/FilterMatch;

    .line 18
    invoke-direct {v9, v10, v11, v7, v8}, Le/a/h/b/y0/a/a;-><init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/Long;Lcom/truecaller/blocking/FilterMatch;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_7
    iget-object p1, p0, Le/a/h/b/c0$b$a$b;->h:Ls1/z/c/y;

    const/4 v8, 0x0

    iput-boolean v8, p1, Ls1/z/c/y;->a:Z

    .line 20
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 21
    iget-object p1, p0, Le/a/h/b/c0$b$a$b;->g:Le/a/h/b/c0$b$a;

    iget-object p1, p1, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    sget-object v2, Le/a/h/b/y0/a/d$d;->a:Le/a/h/b/y0/a/d$d;

    .line 22
    new-instance v6, Ls1/k;

    invoke-direct {v6, p1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iput-object v1, p0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/h/b/c0$b$a$b;->f:I

    invoke-interface {v1, v6, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 24
    :cond_8
    :goto_3
    iget-object p1, p0, Le/a/h/b/c0$b$a$b;->g:Le/a/h/b/c0$b$a;

    iget-object v2, p1, Le/a/h/b/c0$b$a;->h:Le/a/h/b/c0$b;

    iget-object v2, v2, Le/a/h/b/c0$b;->h:Le/a/h/b/c0;

    iget-object v2, v2, Le/a/h/b/c0;->f:Le/a/h/b/y;

    .line 25
    iget-object v2, v2, Le/a/h/b/y;->W:Le/a/h/b/y0/a/b;

    .line 26
    iget-object p1, p1, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    iput-object v1, p0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/h/b/c0$b$a$b;->f:I

    const-wide/16 v4, 0x3e8

    .line 27
    invoke-interface {v2, p1, v4, v5, p0}, Le/a/h/b/y0/a/b;->a(Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 28
    :cond_9
    :goto_4
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 29
    iget-object v2, p0, Le/a/h/b/c0$b$a$b;->g:Le/a/h/b/c0$b$a;

    iget-object v2, v2, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    new-instance v4, Le/a/h/b/y0/a/d$c;

    invoke-direct {v4, p1}, Le/a/h/b/y0/a/d$c;-><init>(Lcom/truecaller/data/entity/Contact;)V

    .line 30
    new-instance p1, Ls1/k;

    invoke-direct {p1, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    iput-object v7, p0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/h/b/c0$b$a$b;->f:I

    invoke-interface {v1, p1, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 32
    :cond_a
    iget-object p1, p0, Le/a/h/b/c0$b$a$b;->g:Le/a/h/b/c0$b$a;

    iget-object p1, p1, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    new-instance v3, Le/a/h/b/y0/a/d$a;

    invoke-direct {v3, v6}, Le/a/h/b/y0/a/d$a;-><init>(Ljava/util/List;)V

    .line 33
    new-instance v4, Ls1/k;

    invoke-direct {v4, p1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    iput-object v7, p0, Le/a/h/b/c0$b$a$b;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/h/b/c0$b$a$b;->f:I

    invoke-interface {v1, v4, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 35
    :cond_b
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
