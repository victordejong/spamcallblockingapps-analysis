.class public Le/a/t/b/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Le/a/t/b/e/a;


# instance fields
.field public a:Le/a/t/b/e/d/c;


# direct methods
.method public constructor <init>(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->context:Landroid/content/Context;

    const-string v1, "content://"

    .line 3
    invoke-static {v0}, Le/a/t/b/e/c;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    .line 4
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".TcInfoContentProvider/tcAccountState"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 7
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 8
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v4

    .line 10
    :goto_0
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v6

    .line 11
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v6

    :cond_1
    if-eqz v5, :cond_2

    .line 12
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    move v6, v3

    goto :goto_2

    :catch_0
    move v6, v4

    :goto_2
    if-eqz v6, :cond_9

    .line 13
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :try_start_5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".TcInfoContentProvider/tcOAuth"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 16
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v5, :cond_4

    .line 17
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 18
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v6, v3, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v4

    .line 19
    :goto_3
    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catchall_2
    move-exception v6

    .line 20
    :try_start_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v5

    :try_start_9
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v6

    :cond_4
    if-eqz v5, :cond_5

    .line 21
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_5
    move v6, v3

    goto :goto_5

    :catch_1
    move v6, v4

    :goto_5
    if-eqz v6, :cond_9

    .line 22
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :try_start_a
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TcInfoContentProvider/tcOAuthBlacklistedDevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 25
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    if-eqz v0, :cond_7

    .line 26
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v4

    .line 28
    :goto_6
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    :catchall_4
    move-exception v1

    .line 29
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1

    :cond_7
    if-eqz v0, :cond_8

    .line 30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    :cond_8
    move v1, v3

    goto :goto_8

    :catch_2
    move v1, v4

    :goto_8
    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    move v3, v4

    .line 31
    :goto_9
    new-instance v0, Le/a/t/b/e/b;

    iget v1, p1, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->sdkFlag:I

    iget-object v2, p1, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->sdkOptionsDataBundle:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    invoke-direct {v0, v1, v2}, Le/a/t/b/e/b;-><init>(ILcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;)V

    if-eqz v3, :cond_a

    .line 32
    new-instance v1, Le/a/t/b/e/d/d;

    iget-object v2, p1, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->clientId:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    invoke-direct {v1, v2, v3, p1, v0}, Le/a/t/b/e/d/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Le/a/t/b/e/b;)V

    goto :goto_a

    :cond_a
    const/16 v1, 0x40

    .line 33
    invoke-virtual {v0, v1}, Le/a/t/b/e/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    new-instance v1, Le/a/t/b/e/d/f;

    iget-object v0, p1, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->clientId:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    invoke-direct {v1, v0, v2, p1, v4}, Le/a/t/b/e/d/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Z)V

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    .line 35
    :goto_a
    iput-object v1, p0, Le/a/t/b/e/a;->a:Le/a/t/b/e/d/c;

    return-void
.end method
