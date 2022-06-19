.class public Le/a/v4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/y;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/v4/z;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/android/sdk/PartnerInformation;)Le/a/r2/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/android/sdk/PartnerInformation;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/android/sdk/TrueResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    const-wide/16 v4, 0x1f4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v2, v6, :cond_0

    .line 1
    :try_start_0
    iget-object v3, p1, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    iget-object v8, p1, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/truecaller/android/sdk/PartnerInformation;->appFingerprint:Ljava/lang/String;

    iget-object v10, p1, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    .line 2
    sget-object v11, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v12, Le/a/v4/g0;

    invoke-static {v11, v12}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/v4/g0;

    invoke-interface {v11, v3, v8, v9, v10}, Le/a/v4/g0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Lx3/b;->execute()Lx3/a0;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 4
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_1
    if-nez v3, :cond_10

    if-nez v2, :cond_1

    .line 5
    new-instance p1, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v0, Lcom/truecaller/android/sdk/TrueError;

    invoke-direct {v0, v7}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    .line 6
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {v2}, Lx3/a0;->b()Z

    move-result v3

    const-string v8, "TrueSDK - Partner: "

    if-nez v3, :cond_4

    .line 8
    iget-object v0, v2, Lx3/a0;->a:Lu3/k0;

    .line 9
    iget v0, v0, Lu3/k0;->e:I

    const/16 v3, 0x191

    if-eq v0, v3, :cond_3

    const/16 v3, 0x194

    if-eq v0, v3, :cond_2

    .line 10
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - User profile request failed with code: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object p1, v2, Lx3/a0;->a:Lu3/k0;

    .line 12
    iget p1, p1, Lu3/k0;->e:I

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    .line 14
    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->reportWithSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v0, Lcom/truecaller/android/sdk/TrueError;

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    goto :goto_2

    .line 16
    :cond_2
    new-instance p1, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v0, Lcom/truecaller/android/sdk/TrueError;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    goto :goto_2

    .line 17
    :cond_3
    new-instance p1, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v0, Lcom/truecaller/android/sdk/TrueError;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    .line 18
    :goto_2
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    iget-object v3, v2, Lx3/a0;->b:Ljava/lang/Object;

    .line 20
    check-cast v3, Le/a/v4/f0;

    if-nez v3, :cond_5

    .line 21
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    const-string v2, " - User profile request returned empty body"

    invoke-static {v0, p1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->reportWithSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    new-instance p1, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v0, Lcom/truecaller/android/sdk/TrueError;

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    .line 23
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 24
    :cond_5
    iget-object v2, v2, Lx3/a0;->a:Lu3/k0;

    .line 25
    iget-object v2, v2, Lu3/k0;->g:Lu3/z;

    const-string v9, "Signature-Algorithm"

    .line 26
    invoke-virtual {v2, v9}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 27
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    const-string v2, " - User profile request didn\'t return the signature algorithm"

    invoke-static {v0, p1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->reportWithSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    new-instance p1, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v0, Lcom/truecaller/android/sdk/TrueError;

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    .line 29
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 30
    :cond_6
    iget-object v9, p0, Le/a/v4/z;->a:Landroid/content/Context;

    iget-object v10, v3, Le/a/v4/f0;->b:Ljava/lang/String;

    iget-object v11, v3, Le/a/v4/f0;->a:Ljava/lang/String;

    invoke-static {v9, v10, v11, v2}, Le/a/l4/k;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 31
    iget-object v9, p0, Le/a/v4/z;->a:Landroid/content/Context;

    move-object v11, v0

    move v10, v1

    :goto_3
    if-ge v10, v6, :cond_7

    .line 32
    :try_start_2
    sget-object v11, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v12, Le/a/v4/v0/b;

    invoke-static {v11, v12}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/v4/v0/b;

    invoke-interface {v11}, Le/a/v4/v0/b;->get()Lx3/b;

    move-result-object v11

    .line 33
    invoke-interface {v11}, Lx3/b;->execute()Lx3/a0;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v0

    goto :goto_4

    :catch_2
    move-exception v11

    .line 34
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    :catch_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    move-object v4, v0

    :goto_4
    if-nez v11, :cond_c

    if-nez v4, :cond_8

    .line 35
    new-instance v0, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v4, Lcom/truecaller/android/sdk/TrueError;

    invoke-direct {v4, v7}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {v0, v4}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    goto/16 :goto_9

    .line 36
    :cond_8
    invoke-virtual {v4}, Lx3/a0;->b()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 37
    iget-object v4, v4, Lx3/a0;->b:Ljava/lang/Object;

    .line 38
    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_b

    .line 39
    new-instance v5, Ljava/io/File;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "TruecallerPublicKeys.txt"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    :try_start_4
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 41
    :try_start_5
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/v4/v0/a;

    .line 43
    iget-object v10, v7, Le/a/v4/v0/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v10, "\u00a7"

    .line 44
    invoke-virtual {v5, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 45
    iget-object v7, v7, Le/a/v4/v0/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 47
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v0, v6

    goto :goto_7

    :catch_4
    move-exception v4

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_5
    move-exception v4

    move-object v6, v0

    .line 48
    :goto_6
    :try_start_6
    invoke-static {v4}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_b

    .line 49
    :cond_9
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :goto_7
    if-eqz v0, :cond_a

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 50
    :catch_6
    :cond_a
    throw p1

    .line 51
    :catch_7
    :cond_b
    :goto_8
    iget-object v4, v3, Le/a/v4/f0;->b:Ljava/lang/String;

    iget-object v5, v3, Le/a/v4/f0;->a:Ljava/lang/String;

    invoke-static {v9, v4, v5, v2}, Le/a/l4/k;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 52
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    const-string v5, " - The payload received cannot be verified with any signature"

    invoke-static {v0, v4, v5}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/truecaller/log/AssertionUtil;->reportWithSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v4, Lcom/truecaller/android/sdk/TrueError;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {v0, v4}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    goto :goto_9

    .line 54
    :cond_c
    :try_start_9
    throw v11
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    move-exception v0

    .line 55
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 56
    new-instance v0, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v4, Lcom/truecaller/android/sdk/TrueError;

    invoke-direct {v4, v7}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {v0, v4}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    :cond_d
    :goto_9
    if-eqz v0, :cond_e

    .line 57
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 58
    :cond_e
    new-instance v0, Ljava/lang/String;

    iget-object v4, v3, Le/a/v4/f0;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 59
    iget-object v4, v3, Le/a/v4/f0;->b:Ljava/lang/String;

    iget-object v3, v3, Le/a/v4/f0;->a:Ljava/lang/String;

    .line 60
    sget v5, Lcom/truecaller/sdk/ConfirmProfileActivity;->n:I

    .line 61
    new-instance v5, Le/m/e/l;

    invoke-direct {v5}, Le/m/e/l;-><init>()V

    .line 62
    invoke-virtual {v5}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v5

    .line 63
    const-class v6, Lcom/truecaller/android/sdk/TrueProfile;

    .line 64
    invoke-virtual {v5, v0, v6}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-static {v6}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    check-cast v0, Lcom/truecaller/android/sdk/TrueProfile;

    .line 67
    iput-object v4, v0, Lcom/truecaller/android/sdk/TrueProfile;->payload:Ljava/lang/String;

    .line 68
    iput-object v3, v0, Lcom/truecaller/android/sdk/TrueProfile;->signature:Ljava/lang/String;

    .line 69
    iput-object v2, v0, Lcom/truecaller/android/sdk/TrueProfile;->signatureAlgorithm:Ljava/lang/String;

    .line 70
    iget-object v2, p1, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    iget-object v3, v0, Lcom/truecaller/android/sdk/TrueProfile;->requestNonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 71
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - Nonce missmatch - req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", resp: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->requestNonce:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->reportWithSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    new-instance p1, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v0, Lcom/truecaller/android/sdk/TrueError;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    .line 73
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 74
    :cond_f
    new-instance p1, Lcom/truecaller/android/sdk/TrueResponse;

    invoke-direct {p1, v0}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueProfile;)V

    .line 75
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 76
    :cond_10
    :try_start_a
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    move-exception p1

    .line 77
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 78
    new-instance p1, Lcom/truecaller/android/sdk/TrueResponse;

    new-instance v0, Lcom/truecaller/android/sdk/TrueError;

    invoke-direct {v0, v7}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/truecaller/android/sdk/TrueResponse;-><init>(Lcom/truecaller/android/sdk/TrueError;)V

    .line 79
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method
