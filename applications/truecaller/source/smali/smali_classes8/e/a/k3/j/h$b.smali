.class public final Le/a/k3/j/h$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k3/j/h;->a(Ljava/lang/String;Ljava/lang/Integer;Le/a/k3/j/g$a;)Landroid/os/CancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.data.access.LocalContactSearcherImpl$search$1"
    f = "LocalContactSearcher.kt"
    l = {
        0x45,
        0x48,
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k3/j/h;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/Integer;

.field public final synthetic i:Landroid/os/CancellationSignal;

.field public final synthetic j:Le/a/k3/j/g$a;


# direct methods
.method public constructor <init>(Le/a/k3/j/h;Ljava/lang/String;Ljava/lang/Integer;Landroid/os/CancellationSignal;Le/a/k3/j/g$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k3/j/h$b;->f:Le/a/k3/j/h;

    iput-object p2, p0, Le/a/k3/j/h$b;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/k3/j/h$b;->h:Ljava/lang/Integer;

    iput-object p4, p0, Le/a/k3/j/h$b;->i:Landroid/os/CancellationSignal;

    iput-object p5, p0, Le/a/k3/j/h$b;->j:Le/a/k3/j/g$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k3/j/h$b;

    iget-object v1, p0, Le/a/k3/j/h$b;->f:Le/a/k3/j/h;

    iget-object v2, p0, Le/a/k3/j/h$b;->g:Ljava/lang/String;

    iget-object v3, p0, Le/a/k3/j/h$b;->h:Ljava/lang/Integer;

    iget-object v4, p0, Le/a/k3/j/h$b;->i:Landroid/os/CancellationSignal;

    iget-object v5, p0, Le/a/k3/j/h$b;->j:Le/a/k3/j/g$a;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/k3/j/h$b;-><init>(Le/a/k3/j/h;Ljava/lang/String;Ljava/lang/Integer;Landroid/os/CancellationSignal;Le/a/k3/j/g$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/k3/j/h$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/k3/j/h$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k3/j/h$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/k3/j/h$b;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

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
    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_5

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Le/a/k3/j/h$b;->g:Ljava/lang/String;

    invoke-static {p1}, Le/a/m0/a1$a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    iget-object v2, p0, Le/a/k3/j/h$b;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "limit"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v8, v2

    goto :goto_1

    :cond_4
    move-object v8, p1

    .line 6
    :goto_1
    iget-object p1, p0, Le/a/k3/j/h$b;->f:Le/a/k3/j/h;

    .line 7
    iget-object p1, p1, Le/a/k3/j/h;->f:Le/a/k3/d;

    .line 8
    invoke-interface {p1}, Le/a/k3/d;->a()Le/a/k3/c;

    move-result-object p1

    .line 9
    iget-object v2, p0, Le/a/k3/j/h$b;->f:Le/a/k3/j/h;

    .line 10
    iget-object v7, v2, Le/a/k3/j/h;->a:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 11
    iget-object v13, p0, Le/a/k3/j/h$b;->i:Landroid/os/CancellationSignal;

    invoke-virtual/range {v7 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 12
    new-instance v7, Le/a/k3/g;

    const-string v8, "it"

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v2, p1}, Le/a/k3/g;-><init>(Landroid/database/Cursor;Le/a/k3/c;)V
    :try_end_1
    .catch Landroid/os/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 13
    :try_start_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :goto_2
    invoke-virtual {v7}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {v7}, Le/a/k3/g;->b()Lcom/truecaller/data/entity/Contact;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v7}, Le/a/k3/g;->d()Ljava/lang/String;

    move-result-object v8

    .line 16
    new-instance v9, Ls1/k;

    invoke-direct {v9, v2, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-object v9, v6

    .line 17
    :goto_3
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 18
    :cond_6
    :try_start_3
    invoke-static {v7, v6}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 19
    invoke-static {p1}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Landroid/os/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    check-cast p1, Ljava/util/ArrayList;

    :try_start_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ls1/k;

    .line 22
    iget-object v8, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 23
    check-cast v8, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v8

    .line 24
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 25
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 26
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v7, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    move-object v2, v0

    .line 27
    :cond_9
    iget-object p1, p0, Le/a/k3/j/h$b;->f:Le/a/k3/j/h;

    iget-object v7, p0, Le/a/k3/j/h$b;->j:Le/a/k3/j/g$a;

    iput v5, p0, Le/a/k3/j/h$b;->e:I

    invoke-virtual {p1, v2, v7, p0}, Le/a/k3/j/h;->d(Ljava/util/List;Le/a/k3/j/g$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/OperationCanceledException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne p1, v1, :cond_a

    return-object v1

    :catchall_2
    move-exception p1

    .line 28
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 29
    iget-object v0, p0, Le/a/k3/j/h$b;->f:Le/a/k3/j/h;

    .line 30
    iget-object v0, v0, Le/a/k3/j/h;->d:Ls1/w/f;

    .line 31
    new-instance v2, Le/a/k3/j/h$b$a;

    invoke-direct {v2, p0, p1, v6}, Le/a/k3/j/h$b$a;-><init>(Le/a/k3/j/h$b;Ljava/lang/Throwable;Ls1/w/d;)V

    iput v3, p0, Le/a/k3/j/h$b;->e:I

    invoke-static {v0, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    .line 32
    :catch_0
    iget-object p1, p0, Le/a/k3/j/h$b;->f:Le/a/k3/j/h;

    iget-object v2, p0, Le/a/k3/j/h$b;->j:Le/a/k3/j/g$a;

    iput v4, p0, Le/a/k3/j/h$b;->e:I

    invoke-virtual {p1, v0, v2, p0}, Le/a/k3/j/h;->d(Ljava/util/List;Le/a/k3/j/g$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    .line 33
    :cond_a
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
