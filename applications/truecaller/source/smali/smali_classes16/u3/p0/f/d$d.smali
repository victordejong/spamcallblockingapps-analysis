.class public final Lu3/p0/f/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/f/d;-><init>(Lu3/p0/f/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu3/p0/f/d;


# direct methods
.method public constructor <init>(Lu3/p0/f/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu3/p0/f/d$d;->a:Lu3/p0/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lu3/p0/f/d$d;->a:Lu3/p0/f/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lu3/p0/f/d$d;->a:Lu3/p0/f/d;

    invoke-virtual {v1}, Lu3/p0/f/d;->c()Lu3/p0/f/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    monitor-exit v0

    if-eqz v1, :cond_4

    .line 4
    iget-object v0, v1, Lu3/p0/f/a;->a:Lu3/p0/f/c;

    if-eqz v0, :cond_3

    const-wide/16 v2, -0x1

    .line 5
    sget-object v4, Lu3/p0/f/d;->j:Lu3/p0/f/d$b;

    .line 6
    sget-object v4, Lu3/p0/f/d;->i:Ljava/util/logging/Logger;

    .line 7
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v2, v0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    .line 9
    iget-object v2, v2, Lu3/p0/f/d;->g:Lu3/p0/f/d$a;

    .line 10
    invoke-interface {v2}, Lu3/p0/f/d$a;->b()J

    move-result-wide v2

    const-string v5, "starting"

    .line 11
    invoke-static {v1, v0, v5}, Ls1/a/a/a/v0/f/d;->q(Lu3/p0/f/a;Lu3/p0/f/c;Ljava/lang/String;)V

    .line 12
    :cond_1
    :try_start_1
    iget-object v5, p0, Lu3/p0/f/d$d;->a:Lu3/p0/f/d;

    invoke-static {v5, v1}, Lu3/p0/f/d;->a(Lu3/p0/f/d;Lu3/p0/f/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 13
    iget-object v4, v0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    .line 14
    iget-object v4, v4, Lu3/p0/f/d;->g:Lu3/p0/f/d$a;

    .line 15
    invoke-interface {v4}, Lu3/p0/f/d$a;->b()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-string v2, "finished run in "

    .line 16
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Ls1/a/a/a/v0/f/d;->a1(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ls1/a/a/a/v0/f/d;->q(Lu3/p0/f/a;Lu3/p0/f/c;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 17
    :try_start_2
    iget-object v6, p0, Lu3/p0/f/d$d;->a:Lu3/p0/f/d;

    .line 18
    iget-object v6, v6, Lu3/p0/f/d;->g:Lu3/p0/f/d$a;

    .line 19
    invoke-interface {v6, p0}, Lu3/p0/f/d$a;->execute(Ljava/lang/Runnable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v5

    if-eqz v4, :cond_2

    .line 20
    iget-object v4, v0, Lu3/p0/f/c;->e:Lu3/p0/f/d;

    .line 21
    iget-object v4, v4, Lu3/p0/f/d;->g:Lu3/p0/f/d$a;

    .line 22
    invoke-interface {v4}, Lu3/p0/f/d$a;->b()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-string v2, "failed a run in "

    .line 23
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7}, Ls1/a/a/a/v0/f/d;->a1(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ls1/a/a/a/v0/f/d;->q(Lu3/p0/f/a;Lu3/p0/f/c;Ljava/lang/String;)V

    .line 24
    :cond_2
    throw v5

    .line 25
    :cond_3
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    return-void

    :catchall_2
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method
