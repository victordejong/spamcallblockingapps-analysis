.class public final Ls1/a/a/a/v0/k/b/f0/c;
.super Ls1/a/a/a/v0/k/b/o;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/a/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/e/m;Ls1/a/a/a/v0/e/y/a;ZLs1/z/c/f;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Ls1/a/a/a/v0/k/b/o;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/e/m;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;)V

    return-void
.end method

.method public static final O0(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ljava/io/InputStream;Z)Ls1/a/a/a/v0/k/b/f0/c;
    .locals 9

    const-string v0, "fqName"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputStream"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Ls1/a/a/a/v0/e/y/a;->g:Ls1/a/a/a/v0/e/y/a$a;

    invoke-virtual {v0, p3}, Ls1/a/a/a/v0/e/y/a$a;->a(Ljava/io/InputStream;)Ls1/a/a/a/v0/e/y/a;

    move-result-object v6

    .line 2
    sget-object v0, Ls1/a/a/a/v0/e/y/a;->f:Ls1/a/a/a/v0/e/y/a;

    invoke-virtual {v6, v0}, Ls1/a/a/a/v0/e/z/a;->a(Ls1/a/a/a/v0/e/z/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Ls1/a/a/a/v0/k/b/f0/a;->m:Ls1/a/a/a/v0/k/b/f0/a;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/k/a;->a:Ls1/a/a/a/v0/h/f;

    .line 5
    sget-object v1, Ls1/a/a/a/v0/e/m;->k:Ls1/a/a/a/v0/h/r;

    check-cast v1, Ls1/a/a/a/v0/h/b;

    .line 6
    invoke-virtual {v1, p3, v0}, Ls1/a/a/a/v0/h/b;->d(Ljava/io/InputStream;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/h/b;->b(Ls1/a/a/a/v0/h/p;)Ls1/a/a/a/v0/h/p;

    .line 7
    move-object v5, v0

    check-cast v5, Ls1/a/a/a/v0/e/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 8
    invoke-static {p3, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 9
    new-instance p3, Ls1/a/a/a/v0/k/b/f0/c;

    const-string v0, "proto"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p4

    invoke-direct/range {v1 .. v8}, Ls1/a/a/a/v0/k/b/f0/c;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/e/m;Ls1/a/a/a/v0/e/y/a;ZLs1/z/c/f;)V

    return-object p3

    .line 10
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Kotlin built-in definition format version is not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Please update Kotlin"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 14
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p3, p0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
