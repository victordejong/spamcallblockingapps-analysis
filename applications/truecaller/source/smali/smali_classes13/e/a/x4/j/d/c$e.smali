.class public Le/a/x4/j/d/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/x4/j/d/c;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/truecaller/searchwarnings/data/SearchWarningDTO;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/x4/j/d/c;


# direct methods
.method public constructor <init>(Le/a/x4/j/d/c;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/x4/j/d/c$e;->b:Le/a/x4/j/d/c;

    iput-object p2, p0, Le/a/x4/j/d/c$e;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/x4/j/d/c$e;->b:Le/a/x4/j/d/c;

    .line 2
    iget-object v0, v0, Le/a/x4/j/d/c;->a:Ln3/c0/q;

    .line 3
    iget-object v1, p0, Le/a/x4/j/d/c$e;->a:Ln3/c0/y;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "_id"

    .line 4
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "header"

    .line 5
    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "message"

    .line 6
    invoke-static {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "backgroundColor"

    .line 7
    invoke-static {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "foregroundColor"

    .line 8
    invoke-static {v0, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "iconUrl"

    .line 9
    invoke-static {v0, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 11
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v9, v3

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 13
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v10, v3

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 15
    :goto_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v11, v3

    goto :goto_2

    .line 16
    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 17
    :goto_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v12, v3

    goto :goto_3

    .line 18
    :cond_3
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 19
    :goto_3
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v13, v3

    goto :goto_4

    .line 20
    :cond_4
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 21
    :goto_4
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_5
    move-object v14, v3

    goto :goto_6

    .line 22
    :cond_5
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 23
    :goto_6
    new-instance v3, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 25
    iget-object v0, p0, Le/a/x4/j/d/c$e;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 27
    iget-object v0, p0, Le/a/x4/j/d/c$e;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 28
    throw v1
.end method
