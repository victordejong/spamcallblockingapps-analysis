.class public abstract Le/k/a/c/k0/b;
.super Le/k/a/c/l;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/l;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Le/k/a/c/k0/k;->a:Le/k/a/c/i0/a;

    .line 2
    :try_start_0
    sget-object v0, Le/k/a/c/k0/k;->b:Le/k/a/c/t;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Le/k/a/b/w/h;

    iget-object v2, v0, Le/k/a/c/t;->d:Le/k/a/b/e;

    invoke-virtual {v2}, Le/k/a/b/e;->c()Le/k/a/b/a0/a;

    move-result-object v2

    invoke-direct {v1, v2}, Le/k/a/b/w/h;-><init>(Le/k/a/b/a0/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :try_start_1
    invoke-virtual {v0, v1}, Le/k/a/c/t;->b(Ljava/io/Writer;)Le/k/a/b/g;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Le/k/a/c/t;->a(Le/k/a/b/g;Ljava/lang/Object;)V
    :try_end_1
    .catch Le/k/a/b/k; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    :try_start_2
    iget-object v0, v1, Le/k/a/b/w/h;->a:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, v1, Le/k/a/b/w/h;->a:Le/k/a/b/a0/n;

    invoke-virtual {v1}, Le/k/a/b/a0/n;->p()V

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Le/k/a/c/k;->e(Ljava/io/IOException;)Le/k/a/c/k;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 9
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Le/k/a/c/k0/p;

    invoke-static {p0}, Le/k/a/c/k0/k;->b(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Le/k/a/c/k0/p;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to JDK serialize `"

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "` value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
