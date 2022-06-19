.class public Le/a/i/e/h/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/h/a/c;->n(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le/a/i/e/h/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/i/e/h/a/c;


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/c;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/e/h/a/c$b;->b:Le/a/i/e/h/a/c;

    iput-object p2, p0, Le/a/i/e/h/a/c$b;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/h/a/c$b;->b:Le/a/i/e/h/a/c;

    .line 2
    iget-object v0, v0, Le/a/i/e/h/a/c;->a:Ln3/c0/q;

    .line 3
    iget-object v1, p0, Le/a/i/e/h/a/c$b;->a:Ln3/c0/y;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "_id"

    .line 4
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "lead_gen_id"

    .line 5
    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "ui_config"

    .line 6
    invoke-static {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "ui_assets"

    .line 7
    invoke-static {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "pixels"

    .line 8
    invoke-static {v0, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 10
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 12
    :goto_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v4, v3

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 14
    :goto_1
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v5, v3

    goto :goto_2

    .line 15
    :cond_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 16
    :goto_2
    iget-object v7, p0, Le/a/i/e/h/a/c$b;->b:Le/a/i/e/h/a/c;

    .line 17
    iget-object v7, v7, Le/a/i/e/h/a/c;->c:Le/a/i/y/a;

    .line 18
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 19
    invoke-virtual {v7}, Le/a/i/y/a;->c()Le/m/e/k;

    move-result-object v7

    const-string v8, "gson"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v8, Le/a/i/y/b;

    invoke-direct {v8}, Le/a/i/y/b;-><init>()V

    invoke-virtual {v8}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    const-string v9, "object : TypeToken<T>() {}.type"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v7, v5, v8}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "this.fromJson(json, typeToken<T>())"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v5, v3

    .line 22
    :goto_3
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    .line 23
    :cond_4
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 24
    :goto_4
    iget-object v6, p0, Le/a/i/e/h/a/c$b;->b:Le/a/i/e/h/a/c;

    .line 25
    iget-object v6, v6, Le/a/i/e/h/a/c;->c:Le/a/i/y/a;

    .line 26
    invoke-virtual {v6, v3}, Le/a/i/y/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 27
    new-instance v6, Le/a/i/e/h/b/a;

    invoke-direct {v6, v2, v4, v5, v3}, Le/a/i/e/h/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 28
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 29
    iput-wide v1, v6, Le/a/i/e/h/b/a;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v6

    .line 30
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 31
    iget-object v0, p0, Le/a/i/e/h/a/c$b;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 33
    iget-object v0, p0, Le/a/i/e/h/a/c$b;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 34
    throw v1
.end method
