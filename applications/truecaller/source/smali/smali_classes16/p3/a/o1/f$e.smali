.class public Lp3/a/o1/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/o1/o/m/b$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Lp3/a/o1/g;

.field public b:Lp3/a/o1/o/m/b;

.field public c:Z

.field public final synthetic d:Lp3/a/o1/f;


# direct methods
.method public constructor <init>(Lp3/a/o1/f;Lp3/a/o1/o/m/b;)V
    .locals 3

    .line 1
    new-instance v0, Lp3/a/o1/g;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lp3/a/o1/f;

    invoke-direct {v0, v1, v2}, Lp3/a/o1/g;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lp3/a/o1/f$e;->c:Z

    .line 4
    iput-object p2, p0, Lp3/a/o1/f$e;->b:Lp3/a/o1/o/m/b;

    .line 5
    iput-object v0, p0, Lp3/a/o1/f$e;->a:Lp3/a/o1/g;

    return-void
.end method

.method public constructor <init>(Lp3/a/o1/f;Lp3/a/o1/o/m/b;Lp3/a/o1/g;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lp3/a/o1/f$e;->c:Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lp3/a/o1/f$e;->b:Lp3/a/o1/o/m/b;

    .line 9
    iput-object p1, p0, Lp3/a/o1/f$e;->a:Lp3/a/o1/g;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "Exception closing frame reader"

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "OkHttpClientTransport"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, p0, Lp3/a/o1/f$e;->b:Lp3/a/o1/o/m/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v3, Lp3/a/o1/o/m/f$c;

    :try_start_1
    invoke-virtual {v3, p0}, Lp3/a/o1/o/m/f$c;->b(Lp3/a/o1/o/m/b$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, p0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 5
    iget-object v3, v3, Lp3/a/o1/f;->F:Lp3/a/n1/j1;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lp3/a/n1/j1;->a()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    sget-object v4, Lp3/a/o1/o/m/a;->h:Lp3/a/o1/o/m/a;

    sget-object v5, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v6, "End of stream or IOException"

    .line 8
    invoke-virtual {v5, v6}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v5

    .line 9
    sget-object v6, Lp3/a/o1/f;->Q:Ljava/util/Map;

    .line 10
    invoke-virtual {v3, v2, v4, v5}, Lp3/a/o1/f;->v(ILp3/a/o1/o/m/a;Lp3/a/g1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    iget-object v2, p0, Lp3/a/o1/f$e;->b:Lp3/a/o1/o/m/b;

    check-cast v2, Lp3/a/o1/o/m/f$c;

    .line 12
    iget-object v2, v2, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v2}, Lv3/b0;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 13
    :try_start_3
    iget-object v4, p0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    sget-object v5, Lp3/a/o1/o/m/a;->c:Lp3/a/o1/o/m/a;

    sget-object v6, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v7, "error in frame handler"

    .line 14
    invoke-virtual {v6, v7}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v6

    invoke-virtual {v6, v3}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object v3

    .line 15
    sget-object v6, Lp3/a/o1/f;->Q:Ljava/util/Map;

    .line 16
    invoke-virtual {v4, v2, v5, v3}, Lp3/a/o1/f;->v(ILp3/a/o1/o/m/a;Lp3/a/g1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :try_start_4
    iget-object v2, p0, Lp3/a/o1/f$e;->b:Lp3/a/o1/o/m/b;

    check-cast v2, Lp3/a/o1/o/m/f$c;

    .line 18
    iget-object v2, v2, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v2}, Lv3/b0;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 19
    :goto_1
    sget-object v3, Lp3/a/o1/f;->R:Ljava/util/logging/Logger;

    .line 20
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_2
    iget-object v0, p0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 22
    iget-object v0, v0, Lp3/a/o1/f;->g:Lp3/a/n1/t1$a;

    .line 23
    invoke-interface {v0}, Lp3/a/n1/t1$a;->c()V

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v2

    .line 25
    :try_start_5
    iget-object v3, p0, Lp3/a/o1/f$e;->b:Lp3/a/o1/o/m/b;

    check-cast v3, Lp3/a/o1/o/m/f$c;

    .line 26
    iget-object v3, v3, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v3}, Lv3/b0;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 27
    sget-object v4, Lp3/a/o1/f;->R:Ljava/util/logging/Logger;

    .line 28
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_3
    iget-object v0, p0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 30
    iget-object v0, v0, Lp3/a/o1/f;->g:Lp3/a/n1/t1$a;

    .line 31
    invoke-interface {v0}, Lp3/a/n1/t1$a;->c()V

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2
.end method
