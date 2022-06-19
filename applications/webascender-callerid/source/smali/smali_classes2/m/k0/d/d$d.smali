.class public final Lm/k0/d/d$d;
.super Lm/k0/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/k0/d/d;-><init>(Lm/k0/h/b;Ljava/io/File;IIJLm/k0/e/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lm/k0/d/d;


# direct methods
.method constructor <init>(Lm/k0/d/d;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lm/k0/e/a;-><init>(Ljava/lang/String;ZILkotlin/w/c/g;)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 6

    .line 1
    iget-object v0, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    invoke-static {v1}, Lm/k0/d/d;->b(Lm/k0/d/d;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    invoke-virtual {v1}, Lm/k0/d/d;->D()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    iget-object v4, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    invoke-virtual {v4}, Lm/k0/d/d;->G0()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :catch_0
    :try_start_2
    iget-object v4, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    invoke-static {v4, v1}, Lm/k0/d/d;->i(Lm/k0/d/d;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :goto_0
    :try_start_3
    iget-object v4, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    invoke-static {v4}, Lm/k0/d/d;->c(Lm/k0/d/d;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v4, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    invoke-virtual {v4}, Lm/k0/d/d;->q0()V

    .line 7
    iget-object v4, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lm/k0/d/d;->j(Lm/k0/d/d;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 8
    :catch_1
    :try_start_4
    iget-object v4, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    invoke-static {v4, v1}, Lm/k0/d/d;->g(Lm/k0/d/d;Z)V

    .line 9
    iget-object v1, p0, Lm/k0/d/d$d;->e:Lm/k0/d/d;

    invoke-static {}, Ln/r;->b()Ln/b0;

    move-result-object v4

    invoke-static {v4}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object v4

    invoke-static {v1, v4}, Lm/k0/d/d;->f(Lm/k0/d/d;Ln/g;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10
    :cond_1
    :goto_1
    monitor-exit v0

    return-wide v2

    .line 11
    :cond_2
    :goto_2
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method
