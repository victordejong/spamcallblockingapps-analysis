.class public final Le/a/c4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c4/d;


# instance fields
.field public a:Ljava/lang/reflect/Field;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c4/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c4/c;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "filters"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c4/e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 8

    .line 1
    instance-of v0, p1, Ljava/lang/VirtualMachineError;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p1, Ls1/r;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    instance-of v0, p1, Ljava/lang/ClassCastException;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    instance-of v0, p1, Landroid/content/res/Resources$NotFoundException;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    instance-of v0, p1, Landroid/view/InflateException;

    if-eqz v0, :cond_6

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    if-nez v0, :cond_7

    return-object p1

    .line 8
    :cond_7
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Le/a/c4/e;->a:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_8

    .line 10
    monitor-exit p0

    goto :goto_2

    .line 11
    :cond_8
    :try_start_1
    const-class v0, Ljava/lang/Throwable;

    const-string v2, "detailMessage"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 13
    iput-object v0, p0, Le/a/c4/e;->a:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 14
    :catch_0
    :try_start_2
    iget-object v0, p0, Le/a/c4/e;->a:Ljava/lang/reflect/Field;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit p0

    :goto_2
    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 15
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/NotSerializableException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :try_start_4
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 19
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 20
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/NotSerializableException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    :try_start_5
    new-instance v4, Ls1/k;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    check-cast v5, Ljava/lang/Throwable;

    const-string v6, "sucessfully copied"

    invoke-direct {v4, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/NotSerializableException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 22
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    goto/16 :goto_a

    .line 23
    :cond_9
    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catch Ljava/io/NotSerializableException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto/16 :goto_10

    :catch_3
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    goto :goto_5

    :catch_5
    move-object v2, v1

    goto :goto_7

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto/16 :goto_11

    :catch_6
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v3, v2

    .line 24
    :goto_3
    :try_start_8
    new-instance v5, Ls1/k;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v3, :cond_a

    goto :goto_4

    .line 25
    :cond_a
    :try_start_9
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :goto_4
    if-nez v2, :cond_c

    goto :goto_b

    :catch_8
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v3, v2

    .line 26
    :goto_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 27
    new-instance v5, Ls1/k;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v3, :cond_b

    goto :goto_6

    .line 28
    :cond_b
    :try_start_b
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    :goto_6
    if-nez v2, :cond_c

    goto :goto_b

    .line 29
    :cond_c
    :try_start_c
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_b

    :catch_a
    move-object v2, v1

    move-object v3, v2

    .line 30
    :catch_b
    :goto_7
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 31
    new-instance v4, Ls1/k;

    const-string v5, "non-serilializable"

    invoke-direct {v4, v1, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v3, :cond_d

    goto :goto_8

    .line 32
    :cond_d
    :try_start_e
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    :catch_c
    :goto_8
    if-nez v2, :cond_e

    :catch_d
    :goto_9
    move-object v5, v4

    goto :goto_b

    .line 33
    :catch_e
    :cond_e
    :goto_a
    :try_start_f
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_9

    .line 34
    :catch_f
    :goto_b
    iget-object v2, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 35
    check-cast v2, Ljava/lang/Throwable;

    .line 36
    iget-object v3, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 37
    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_15

    move-object v3, v2

    :goto_c
    if-eqz v3, :cond_14

    .line 38
    :try_start_10
    iget-object v4, p0, Le/a/c4/e;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c4/c;

    .line 39
    invoke-virtual {v5, v3}, Le/a/c4/c;->e(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_d

    :cond_10
    move-object v5, v1

    :goto_d
    if-eqz v5, :cond_11

    .line 40
    invoke-virtual {v5, v3}, Le/a/c4/c;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_11
    move-object v4, v1

    :goto_e
    if-nez v4, :cond_12

    const-string v4, "<muted>"

    .line 41
    :cond_12
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v5, :cond_13

    .line 42
    invoke-virtual {v5, v3}, Le/a/c4/c;->d(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_f

    .line 43
    :cond_13
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_c

    :catch_10
    move-exception v0

    .line 44
    new-instance v1, Lcom/truecaller/log/MutingException$MessageModificationException;

    const-string v2, "cannot modify \'detailMessage\': "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/truecaller/log/MutingException$MessageModificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_14
    :goto_f
    return-object v2

    .line 45
    :cond_15
    new-instance v0, Lcom/truecaller/log/MutingException$CloningException;

    invoke-direct {v0, v3, p1}, Lcom/truecaller/log/MutingException$CloningException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_2
    move-exception p1

    :goto_10
    move-object v1, v3

    :goto_11
    if-nez v1, :cond_16

    goto :goto_12

    .line 46
    :cond_16
    :try_start_11
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :goto_12
    if-nez v2, :cond_17

    goto :goto_13

    .line 47
    :cond_17
    :try_start_12
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12

    .line 48
    :catch_12
    :goto_13
    throw p1

    .line 49
    :cond_18
    new-instance v0, Lcom/truecaller/log/MutingException$MutingInitException;

    const-string v1, "could not get \'detailMessage\' field"

    invoke-direct {v0, v1, p1}, Lcom/truecaller/log/MutingException$MutingInitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_3
    move-exception p1

    .line 50
    monitor-exit p0

    throw p1
.end method
