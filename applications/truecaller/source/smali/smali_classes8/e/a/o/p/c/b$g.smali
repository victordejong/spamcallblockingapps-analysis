.class public Le/a/o/p/c/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/c/b;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/o/p/c/b;


# direct methods
.method public constructor <init>(Le/a/o/p/c/b;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/o/p/c/b$g;->b:Le/a/o/p/c/b;

    iput-object p2, p0, Le/a/o/p/c/b$g;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/c/b$g;->b:Le/a/o/p/c/b;

    .line 2
    iget-object v0, v0, Le/a/o/p/c/b;->a:Ln3/c0/q;

    .line 3
    iget-object v1, p0, Le/a/o/p/c/b$g;->a:Ln3/c0/y;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "_id"

    .line 4
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "phone_number"

    .line 5
    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "message"

    .line 6
    invoke-static {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "created_at"

    .line 7
    invoke-static {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v7, v3

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 11
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v8, v3

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 13
    :goto_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    move-object v9, v3

    goto :goto_3

    .line 14
    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 15
    :goto_3
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 16
    new-instance v3, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 18
    iget-object v0, p0, Le/a/o/p/c/b$g;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 19
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 20
    iget-object v0, p0, Le/a/o/p/c/b$g;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 21
    throw v1
.end method
