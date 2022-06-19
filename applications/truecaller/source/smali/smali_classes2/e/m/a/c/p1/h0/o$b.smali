.class public Le/m/a/c/p1/h0/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/h0/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/p1/h0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljavax/crypto/Cipher;

.field public final c:Ljavax/crypto/spec/SecretKeySpec;

.field public final d:Ljava/util/Random;

.field public final e:Le/m/a/c/q1/e;

.field public f:Z

.field public g:Le/m/a/c/q1/w;


# direct methods
.method public constructor <init>(Ljava/io/File;[BZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 2
    array-length v1, p2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ln3/g0/y;->r(Z)V

    .line 3
    :try_start_0
    sget v1, Le/m/a/c/q1/d0;->a:I

    const-string v2, "AES/CBC/PKCS5PADDING"
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x12

    if-ne v1, v3, :cond_1

    :try_start_1
    const-string v1, "BC"

    .line 4
    invoke-static {v2, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5
    :catchall_0
    :cond_1
    :try_start_2
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 6
    :goto_1
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 7
    :goto_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    xor-int/lit8 p2, p3, 0x1

    .line 8
    invoke-static {p2}, Ln3/g0/y;->r(Z)V

    move-object v1, v0

    move-object v2, v1

    .line 9
    :goto_3
    iput-boolean p3, p0, Le/m/a/c/p1/h0/o$b;->a:Z

    .line 10
    iput-object v1, p0, Le/m/a/c/p1/h0/o$b;->b:Ljavax/crypto/Cipher;

    .line 11
    iput-object v2, p0, Le/m/a/c/p1/h0/o$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p3, :cond_3

    .line 12
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    :cond_3
    iput-object v0, p0, Le/m/a/c/p1/h0/o$b;->d:Ljava/util/Random;

    .line 13
    new-instance p2, Le/m/a/c/q1/e;

    invoke-direct {p2, p1}, Le/m/a/c/q1/e;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Le/m/a/c/p1/h0/o$b;->e:Le/m/a/c/q1/e;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/o$b;->e:Le/m/a/c/q1/e;

    invoke-virtual {v0}, Le/m/a/c/q1/e;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/o$b;->e:Le/m/a/c/q1/e;

    .line 2
    iget-object v1, v0, Le/m/a/c/q1/e;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3
    iget-object v0, v0, Le/m/a/c/q1/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public d(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/m/a/c/p1/h0/n;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/m/a/c/p1/h0/o$b;->e:Le/m/a/c/q1/e;

    invoke-virtual {v1}, Le/m/a/c/q1/e;->c()Ljava/io/OutputStream;

    move-result-object v1

    .line 2
    iget-object v2, p0, Le/m/a/c/p1/h0/o$b;->g:Le/m/a/c/q1/w;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Le/m/a/c/q1/w;

    invoke-direct {v2, v1}, Le/m/a/c/q1/w;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Le/m/a/c/p1/h0/o$b;->g:Le/m/a/c/q1/w;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2, v1}, Le/m/a/c/q1/w;->b(Ljava/io/OutputStream;)V

    .line 5
    :goto_0
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Le/m/a/c/p1/h0/o$b;->g:Le/m/a/c/q1/w;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    .line 6
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 7
    iget-boolean v2, p0, Le/m/a/c/p1/h0/o$b;->a:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 8
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 9
    iget-boolean v2, p0, Le/m/a/c/p1/h0/o$b;->a:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 10
    iget-object v5, p0, Le/m/a/c/p1/h0/o$b;->d:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 11
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 12
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    iget-object v2, p0, Le/m/a/c/p1/h0/o$b;->b:Ljavax/crypto/Cipher;

    iget-object v6, p0, Le/m/a/c/p1/h0/o$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v3, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 15
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljavax/crypto/CipherOutputStream;

    iget-object v5, p0, Le/m/a/c/p1/h0/o$b;->g:Le/m/a/c/q1/w;

    iget-object v6, p0, Le/m/a/c/p1/h0/o$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v3, v5, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 16
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 18
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v4

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/p1/h0/n;

    .line 19
    iget v5, v3, Le/m/a/c/p1/h0/n;->a:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 20
    iget-object v5, v3, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 21
    iget-object v5, v3, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    .line 22
    invoke-static {v5, v1}, Le/m/a/c/p1/h0/o;->b(Le/m/a/c/p1/h0/s;Ljava/io/DataOutputStream;)V

    .line 23
    invoke-virtual {p0, v3, v0}, Le/m/a/c/p1/h0/o$b;->i(Le/m/a/c/p1/h0/n;I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4

    .line 24
    :cond_3
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 25
    iget-object p1, p0, Le/m/a/c/p1/h0/o$b;->e:Le/m/a/c/q1/e;

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 28
    iget-object p1, p1, Le/m/a/c/q1/e;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    sget p1, Le/m/a/c/q1/d0;->a:I

    .line 30
    iput-boolean v4, p0, Le/m/a/c/p1/h0/o$b;->f:Z

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 31
    :goto_5
    sget v1, Le/m/a/c/q1/d0;->a:I

    if-eqz v0, :cond_4

    .line 32
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 33
    :catch_2
    :cond_4
    throw p1
.end method

.method public e(Le/m/a/c/p1/h0/n;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le/m/a/c/p1/h0/o$b;->f:Z

    return-void
.end method

.method public f(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/m/a/c/p1/h0/n;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/a/c/p1/h0/o$b;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/m/a/c/p1/h0/o$b;->d(Ljava/util/HashMap;)V

    return-void
.end method

.method public g(Le/m/a/c/p1/h0/n;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le/m/a/c/p1/h0/o$b;->f:Z

    return-void
.end method

.method public h(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/m/a/c/p1/h0/n;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/a/c/p1/h0/o$b;->f:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/h0/o$b;->e:Le/m/a/c/q1/e;

    invoke-virtual {v0}, Le/m/a/c/q1/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Le/m/a/c/p1/h0/o$b;->e:Le/m/a/c/q1/e;

    invoke-virtual {v4}, Le/m/a/c/q1/e;->b()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v5, 0x2

    if-le v0, v5, :cond_1

    goto/16 :goto_4

    .line 6
    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_3

    .line 7
    iget-object v6, p0, Le/m/a/c/p1/h0/o$b;->b:Ljavax/crypto/Cipher;

    if-nez v6, :cond_2

    goto/16 :goto_4

    :cond_2
    const/16 v6, 0x10

    new-array v6, v6, [B

    .line 8
    invoke-virtual {v4, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 9
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object v6, p0, Le/m/a/c/p1/h0/o$b;->b:Ljavax/crypto/Cipher;

    iget-object v8, p0, Le/m/a/c/p1/h0/o$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v6, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljavax/crypto/CipherInputStream;

    iget-object v7, p0, Le/m/a/c/p1/h0/o$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v6, v3, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 13
    :cond_3
    iget-boolean v3, p0, Le/m/a/c/p1/h0/o$b;->a:Z

    if-eqz v3, :cond_4

    .line 14
    iput-boolean v1, p0, Le/m/a/c/p1/h0/o$b;->f:Z

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v5, v2

    move v6, v5

    :goto_2
    if-ge v5, v3, :cond_5

    .line 16
    invoke-virtual {p0, v0, v4}, Le/m/a/c/p1/h0/o$b;->j(ILjava/io/DataInputStream;)Le/m/a/c/p1/h0/n;

    move-result-object v7

    .line 17
    iget-object v8, v7, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v8, v7, Le/m/a/c/p1/h0/n;->a:I

    iget-object v9, v7, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p0, v7, v0}, Le/m/a/c/p1/h0/o$b;->i(Le/m/a/c/p1/h0/n;I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 21
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    if-ne v0, v6, :cond_8

    if-nez v3, :cond_7

    goto :goto_4

    .line 22
    :cond_7
    sget v0, Le/m/a/c/q1/d0;->a:I

    .line 23
    :try_start_4
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_8

    .line 24
    :cond_8
    :goto_4
    sget v0, Le/m/a/c/q1/d0;->a:I

    .line 25
    :try_start_5
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto :goto_5

    :catch_2
    move-object v0, v4

    goto :goto_6

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v0, :cond_9

    .line 26
    sget p2, Le/m/a/c/q1/d0;->a:I

    .line 27
    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 28
    :catch_3
    :cond_9
    throw p1

    :catch_4
    :goto_6
    if-eqz v0, :cond_a

    .line 29
    sget v1, Le/m/a/c/q1/d0;->a:I

    .line 30
    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_a
    :goto_7
    move v1, v2

    :catch_6
    :goto_8
    if-nez v1, :cond_b

    .line 31
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 32
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 33
    iget-object p1, p0, Le/m/a/c/p1/h0/o$b;->e:Le/m/a/c/q1/e;

    .line 34
    iget-object p2, p1, Le/m/a/c/q1/e;->a:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 35
    iget-object p1, p1, Le/m/a/c/q1/e;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_b
    return-void
.end method

.method public final i(Le/m/a/c/p1/h0/n;I)I
    .locals 4

    .line 1
    iget v0, p1, Le/m/a/c/p1/h0/n;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p1, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 3
    iget-object p1, p1, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    .line 4
    invoke-static {p1}, Le/m/a/c/p1/h0/p;->a(Le/m/a/c/p1/h0/q;)J

    move-result-wide p1

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    xor-long/2addr p1, v2

    long-to-int p1, p1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object p1, p1, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    .line 6
    invoke-virtual {p1}, Le/m/a/c/p1/h0/s;->hashCode()I

    move-result p1

    :goto_0
    add-int/2addr v1, p1

    return v1
.end method

.method public final j(ILjava/io/DataInputStream;)Le/m/a/c/p1/h0/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    .line 4
    new-instance v2, Le/m/a/c/p1/h0/r;

    invoke-direct {v2}, Le/m/a/c/p1/h0/r;-><init>()V

    .line 5
    invoke-static {v2, p1, p2}, Le/m/a/c/p1/h0/r;->a(Le/m/a/c/p1/h0/r;J)Le/m/a/c/p1/h0/r;

    .line 6
    sget-object p1, Le/m/a/c/p1/h0/s;->c:Le/m/a/c/p1/h0/s;

    invoke-virtual {p1, v2}, Le/m/a/c/p1/h0/s;->a(Le/m/a/c/p1/h0/r;)Le/m/a/c/p1/h0/s;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2}, Le/m/a/c/p1/h0/o;->a(Ljava/io/DataInputStream;)Le/m/a/c/p1/h0/s;

    move-result-object p1

    .line 8
    :goto_0
    new-instance p2, Le/m/a/c/p1/h0/n;

    invoke-direct {p2, v0, v1, p1}, Le/m/a/c/p1/h0/n;-><init>(ILjava/lang/String;Le/m/a/c/p1/h0/s;)V

    return-object p2
.end method
