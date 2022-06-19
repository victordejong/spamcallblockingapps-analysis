.class public final Lp3/a/n1/f0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Lp3/a/r0$d;

.field public final synthetic b:Lp3/a/n1/f0;


# direct methods
.method public constructor <init>(Lp3/a/n1/f0;Lp3/a/r0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/f0$e;->b:Lp3/a/n1/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "savedListener"

    .line 2
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/f0$e;->a:Lp3/a/r0$d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "runnable is null"

    .line 1
    sget-object v1, Lp3/a/n1/f0;->s:Ljava/util/logging/Logger;

    .line 2
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Attempting DNS resolution of "

    .line 3
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lp3/a/n1/f0$e;->b:Lp3/a/n1/f0;

    .line 4
    iget-object v4, v4, Lp3/a/n1/f0;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6
    :try_start_0
    iget-object v6, p0, Lp3/a/n1/f0$e;->b:Lp3/a/n1/f0;

    invoke-static {v6}, Lp3/a/n1/f0;->e(Lp3/a/n1/f0;)Lp3/a/v;

    move-result-object v6

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 8
    sget-object v8, Lp3/a/a;->b:Lp3/a/a;

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using proxy address "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v2, v3

    goto :goto_2

    .line 12
    :cond_2
    iget-object v1, p0, Lp3/a/n1/f0$e;->b:Lp3/a/n1/f0;

    invoke-virtual {v1, v5}, Lp3/a/n1/f0;->f(Z)Lp3/a/n1/f0$c;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    iget-object v2, v1, Lp3/a/n1/f0$c;->a:Lp3/a/g1;

    if-eqz v2, :cond_4

    .line 14
    iget-object v3, p0, Lp3/a/n1/f0$e;->a:Lp3/a/r0$d;

    invoke-virtual {v3, v2}, Lp3/a/r0$d;->a(Lp3/a/g1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    iget-object v1, v1, Lp3/a/n1/f0$c;->a:Lp3/a/g1;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    .line 16
    :goto_0
    iget-object v1, p0, Lp3/a/n1/f0$e;->b:Lp3/a/n1/f0;

    .line 17
    iget-object v1, v1, Lp3/a/n1/f0;->j:Lp3/a/k1;

    .line 18
    new-instance v2, Lp3/a/n1/f0$e$a;

    invoke-direct {v2, p0, v4}, Lp3/a/n1/f0$e$a;-><init>(Lp3/a/n1/f0$e;Z)V

    .line 19
    :goto_1
    iget-object v3, v1, Lp3/a/k1;->b:Ljava/util/Queue;

    invoke-static {v2, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v1}, Lp3/a/k1;->a()V

    return-void

    .line 21
    :cond_4
    :try_start_2
    iget-object v2, v1, Lp3/a/n1/f0$c;->b:Ljava/util/List;

    if-eqz v2, :cond_5

    move-object v7, v2

    .line 22
    :cond_5
    iget-object v2, v1, Lp3/a/n1/f0$c;->c:Lp3/a/r0$b;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_6

    move-object v3, v2

    :cond_6
    move-object v2, v1

    move-object v1, v7

    .line 23
    :goto_2
    :try_start_3
    iget-object v6, p0, Lp3/a/n1/f0$e;->a:Lp3/a/r0$d;

    .line 24
    new-instance v7, Lp3/a/r0$e;

    invoke-direct {v7, v1, v8, v3}, Lp3/a/r0$e;-><init>(Ljava/util/List;Lp3/a/a;Lp3/a/r0$b;)V

    .line 25
    invoke-virtual {v6, v7}, Lp3/a/r0$d;->b(Lp3/a/r0$e;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_7

    .line 26
    iget-object v1, v2, Lp3/a/n1/f0$c;->a:Lp3/a/g1;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    .line 27
    :goto_3
    iget-object v1, p0, Lp3/a/n1/f0$e;->b:Lp3/a/n1/f0;

    .line 28
    iget-object v1, v1, Lp3/a/n1/f0;->j:Lp3/a/k1;

    .line 29
    new-instance v2, Lp3/a/n1/f0$e$a;

    invoke-direct {v2, p0, v4}, Lp3/a/n1/f0$e$a;-><init>(Lp3/a/n1/f0$e;Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_8

    :catch_0
    move-exception v1

    move-object v3, v2

    goto :goto_4

    :catchall_1
    move-exception v2

    goto :goto_9

    :catch_1
    move-exception v2

    move-object v3, v1

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    :goto_4
    move-object v2, v1

    .line 30
    :goto_5
    :try_start_4
    iget-object v1, p0, Lp3/a/n1/f0$e;->a:Lp3/a/r0$d;

    sget-object v6, Lp3/a/g1;->p:Lp3/a/g1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to resolve host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lp3/a/n1/f0$e;->b:Lp3/a/n1/f0;

    .line 31
    iget-object v8, v8, Lp3/a/n1/f0;->f:Ljava/lang/String;

    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v6

    invoke-virtual {v6, v2}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lp3/a/r0$d;->a(Lp3/a/g1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_8

    .line 34
    iget-object v1, v3, Lp3/a/n1/f0$c;->a:Lp3/a/g1;

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move v4, v5

    .line 35
    :goto_6
    iget-object v1, p0, Lp3/a/n1/f0$e;->b:Lp3/a/n1/f0;

    .line 36
    iget-object v1, v1, Lp3/a/n1/f0;->j:Lp3/a/k1;

    .line 37
    new-instance v2, Lp3/a/n1/f0$e$a;

    invoke-direct {v2, p0, v4}, Lp3/a/n1/f0$e$a;-><init>(Lp3/a/n1/f0$e;Z)V

    goto :goto_1

    :goto_7
    move-object v2, v3

    :goto_8
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_9
    if-eqz v1, :cond_9

    .line 38
    iget-object v1, v1, Lp3/a/n1/f0$c;->a:Lp3/a/g1;

    if-nez v1, :cond_9

    goto :goto_a

    :cond_9
    move v4, v5

    .line 39
    :goto_a
    iget-object v1, p0, Lp3/a/n1/f0$e;->b:Lp3/a/n1/f0;

    .line 40
    iget-object v1, v1, Lp3/a/n1/f0;->j:Lp3/a/k1;

    .line 41
    new-instance v3, Lp3/a/n1/f0$e$a;

    invoke-direct {v3, p0, v4}, Lp3/a/n1/f0$e$a;-><init>(Lp3/a/n1/f0$e;Z)V

    .line 42
    iget-object v4, v1, Lp3/a/k1;->b:Ljava/util/Queue;

    invoke-static {v3, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v1}, Lp3/a/k1;->a()V

    .line 44
    throw v2
.end method
