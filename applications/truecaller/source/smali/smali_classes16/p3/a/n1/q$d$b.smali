.class public final Lp3/a/n1/q$d$b;
.super Lp3/a/n1/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/q$d;->a(Lp3/a/n1/t2$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lp3/a/n1/t2$a;

.field public final synthetic c:Lp3/a/n1/q$d;


# direct methods
.method public constructor <init>(Lp3/a/n1/q$d;Lp3/c/b;Lp3/a/n1/t2$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/q$d$b;->c:Lp3/a/n1/q$d;

    iput-object p3, p0, Lp3/a/n1/q$d$b;->b:Lp3/a/n1/t2$a;

    .line 2
    iget-object p1, p1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 3
    iget-object p1, p1, Lp3/a/n1/q;->f:Lp3/a/q;

    .line 4
    invoke-direct {p0, p1}, Lp3/a/n1/z;-><init>(Lp3/a/q;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/q$d$b;->c:Lp3/a/n1/q$d;

    iget-object v0, v0, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 2
    iget-object v0, v0, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 3
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lp3/a/n1/q$d$b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lp3/a/n1/q$d$b;->c:Lp3/a/n1/q$d;

    iget-object v1, v1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 8
    iget-object v1, v1, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lp3/a/n1/q$d$b;->c:Lp3/a/n1/q$d;

    iget-object v1, v1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 11
    iget-object v1, v1, Lp3/a/n1/q;->b:Lp3/c/d;

    .line 12
    sget-object v1, Lp3/c/c;->a:Lp3/c/a;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    throw v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/q$d$b;->c:Lp3/a/n1/q$d;

    .line 2
    iget-object v0, v0, Lp3/a/n1/q$d;->b:Lp3/a/g1;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lp3/a/n1/q$d$b;->b:Lp3/a/n1/t2$a;

    .line 4
    sget-object v1, Lp3/a/n1/r0;->a:Ljava/util/logging/Logger;

    .line 5
    :goto_0
    invoke-interface {v0}, Lp3/a/n1/t2$a;->next()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1}, Lp3/a/n1/r0;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/q$d$b;->b:Lp3/a/n1/t2$a;

    invoke-interface {v0}, Lp3/a/n1/t2$a;->next()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    .line 8
    :try_start_1
    iget-object v1, p0, Lp3/a/n1/q$d$b;->c:Lp3/a/n1/q$d;

    .line 9
    iget-object v2, v1, Lp3/a/n1/q$d;->a:Lp3/a/f$a;

    .line 10
    iget-object v1, v1, Lp3/a/n1/q$d;->c:Lp3/a/n1/q;

    .line 11
    iget-object v1, v1, Lp3/a/n1/q;->a:Lp3/a/p0;

    .line 12
    iget-object v1, v1, Lp3/a/p0;->e:Lp3/a/p0$c;

    invoke-interface {v1, v0}, Lp3/a/p0$c;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v1}, Lp3/a/f$a;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v0}, Lp3/a/n1/r0;->c(Ljava/io/Closeable;)V

    .line 16
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 17
    iget-object v1, p0, Lp3/a/n1/q$d$b;->b:Lp3/a/n1/t2$a;

    .line 18
    sget-object v2, Lp3/a/n1/r0;->a:Ljava/util/logging/Logger;

    .line 19
    :goto_2
    invoke-interface {v1}, Lp3/a/n1/t2$a;->next()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 20
    invoke-static {v2}, Lp3/a/n1/r0;->c(Ljava/io/Closeable;)V

    goto :goto_2

    .line 21
    :cond_2
    iget-object v1, p0, Lp3/a/n1/q$d$b;->c:Lp3/a/n1/q$d;

    sget-object v2, Lp3/a/g1;->g:Lp3/a/g1;

    .line 22
    invoke-virtual {v2, v0}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object v0

    const-string v2, "Failed to read message."

    invoke-virtual {v0, v2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Lp3/a/n1/q$d;->f(Lp3/a/n1/q$d;Lp3/a/g1;)V

    :cond_3
    return-void
.end method
