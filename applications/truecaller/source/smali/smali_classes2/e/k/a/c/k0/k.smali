.class public final Le/k/a/c/k0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/k/a/c/i0/a;

.field public static final b:Le/k/a/c/t;

.field public static final c:Le/k/a/c/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Le/k/a/c/t$a;->d:Le/k/a/c/t$a;

    new-instance v2, Le/k/a/c/i0/a;

    invoke-direct {v2}, Le/k/a/c/i0/a;-><init>()V

    sput-object v2, Le/k/a/c/k0/k;->a:Le/k/a/c/i0/a;

    .line 2
    iget-object v1, v2, Le/k/a/c/r;->f:Le/k/a/c/y;

    .line 3
    new-instance v3, Le/k/a/c/t;

    invoke-direct {v3, v2, v1}, Le/k/a/c/t;-><init>(Le/k/a/c/r;Le/k/a/c/y;)V

    .line 4
    sput-object v3, Le/k/a/c/k0/k;->b:Le/k/a/c/t;

    .line 5
    iget-object v1, v2, Le/k/a/c/r;->f:Le/k/a/c/y;

    .line 6
    new-instance v3, Le/k/a/c/t;

    invoke-direct {v3, v2, v1}, Le/k/a/c/t;-><init>(Le/k/a/c/r;Le/k/a/c/y;)V

    .line 7
    iget-object v1, v1, Le/k/a/c/y;->l:Le/k/a/b/o;

    if-nez v1, :cond_0

    .line 8
    sget-object v1, Le/k/a/c/t;->g:Le/k/a/b/o;

    :cond_0
    const/4 v4, 0x0

    if-nez v1, :cond_1

    move-object v5, v0

    goto :goto_0

    .line 9
    :cond_1
    new-instance v5, Le/k/a/c/t$a;

    invoke-direct {v5, v1, v4, v4}, Le/k/a/c/t$a;-><init>(Le/k/a/b/o;Le/k/a/b/c;Le/k/a/b/p;)V

    .line 10
    :goto_0
    sget-object v1, Le/k/a/c/t$b;->a:Le/k/a/c/t$b;

    if-ne v0, v5, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance v0, Le/k/a/c/t;

    iget-object v6, v3, Le/k/a/c/t;->a:Le/k/a/c/y;

    invoke-direct {v0, v3, v6, v5, v1}, Le/k/a/c/t;-><init>(Le/k/a/c/t;Le/k/a/c/y;Le/k/a/c/t$a;Le/k/a/c/t$b;)V

    .line 12
    :goto_1
    const-class v0, Le/k/a/c/l;

    .line 13
    iget-object v3, v2, Le/k/a/c/r;->i:Le/k/a/c/f;

    .line 14
    iget-object v1, v2, Le/k/a/c/r;->b:Le/k/a/c/m0/o;

    .line 15
    sget-object v5, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    invoke-virtual {v1, v4, v0, v5}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v4

    const/4 v5, 0x0

    .line 16
    new-instance v0, Le/k/a/c/s;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le/k/a/c/s;-><init>(Le/k/a/c/r;Le/k/a/c/f;Le/k/a/c/i;Ljava/lang/Object;Le/k/a/b/c;)V

    .line 17
    sput-object v0, Le/k/a/c/k0/k;->c:Le/k/a/c/s;

    return-void
.end method

.method public static a([B)Le/k/a/c/l;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/k0/k;->c:Le/k/a/c/s;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    .line 3
    iget-object v3, v0, Le/k/a/c/s;->a:Le/k/a/c/f;

    iget-object v4, v0, Le/k/a/c/s;->c:Le/k/a/b/e;

    .line 4
    new-instance v5, Le/k/a/b/w/b;

    invoke-virtual {v4}, Le/k/a/b/e;->c()Le/k/a/b/a0/a;

    move-result-object v6

    invoke-direct {v5, v6, p0, v2}, Le/k/a/b/w/b;-><init>(Le/k/a/b/a0/a;Ljava/lang/Object;Z)V

    .line 5
    array-length v2, p0

    .line 6
    new-instance v6, Le/k/a/b/x/a;

    invoke-direct {v6, v5, p0, v1, v2}, Le/k/a/b/x/a;-><init>(Le/k/a/b/w/b;[BII)V

    iget v7, v4, Le/k/a/b/e;->d:I

    iget-object v8, v4, Le/k/a/b/e;->f:Le/k/a/b/n;

    iget-object v9, v4, Le/k/a/b/e;->b:Le/k/a/b/y/a;

    iget-object v10, v4, Le/k/a/b/e;->a:Le/k/a/b/y/b;

    iget v11, v4, Le/k/a/b/e;->c:I

    invoke-virtual/range {v6 .. v11}, Le/k/a/b/x/a;->b(ILe/k/a/b/n;Le/k/a/b/y/a;Le/k/a/b/y/b;I)Le/k/a/b/j;

    move-result-object p0

    .line 7
    iget-object v1, v0, Le/k/a/c/s;->g:Le/k/a/b/c;

    invoke-virtual {v3, p0, v1}, Le/k/a/c/f;->v(Le/k/a/b/j;Le/k/a/b/c;)Le/k/a/b/j;

    .line 8
    invoke-virtual {v0, p0}, Le/k/a/c/s;->c(Le/k/a/b/j;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    check-cast p0, Le/k/a/c/l;

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "content"

    aput-object v2, v0, v1

    const-string v1, "argument \"%s\" is null"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/Object;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/k0/k;->a:Le/k/a/c/i0/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Le/k/a/b/a0/c;

    iget-object v2, v0, Le/k/a/c/r;->a:Le/k/a/b/e;

    invoke-virtual {v2}, Le/k/a/b/e;->c()Le/k/a/b/a0/a;

    move-result-object v2

    const/16 v3, 0x1f4

    .line 4
    invoke-direct {v1, v2, v3}, Le/k/a/b/a0/c;-><init>(Le/k/a/b/a0/a;I)V

    .line 5
    :try_start_0
    sget-object v2, Le/k/a/b/d;->d:Le/k/a/b/d;

    const-string v3, "out"

    .line 6
    invoke-virtual {v0, v3, v1}, Le/k/a/c/r;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v3, v0, Le/k/a/c/r;->a:Le/k/a/b/e;

    invoke-virtual {v3, v1, v2}, Le/k/a/b/e;->d(Ljava/io/OutputStream;Le/k/a/b/d;)Le/k/a/b/g;

    move-result-object v2

    .line 8
    iget-object v3, v0, Le/k/a/c/r;->f:Le/k/a/c/y;

    invoke-virtual {v3, v2}, Le/k/a/c/y;->u(Le/k/a/b/g;)V

    .line 9
    invoke-virtual {v0, v2, p0}, Le/k/a/c/r;->h(Le/k/a/b/g;Ljava/lang/Object;)V
    :try_end_0
    .catch Le/k/a/b/k; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-virtual {v1}, Le/k/a/b/a0/c;->q()[B

    move-result-object p0

    .line 11
    invoke-virtual {v1}, Le/k/a/b/a0/c;->l()V

    .line 12
    iget-object v0, v1, Le/k/a/b/a0/c;->a:Le/k/a/b/a0/a;

    if-eqz v0, :cond_0

    iget-object v2, v1, Le/k/a/b/a0/c;->d:[B

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    .line 13
    iget-object v0, v0, Le/k/a/b/a0/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, v1, Le/k/a/b/a0/c;->d:[B

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 15
    invoke-static {p0}, Le/k/a/c/k;->e(Ljava/io/IOException;)Le/k/a/c/k;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 16
    throw p0
.end method
