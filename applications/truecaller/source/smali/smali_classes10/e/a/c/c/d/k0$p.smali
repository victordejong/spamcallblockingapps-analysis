.class public Le/a/c/c/d/k0$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/k0;->f(JILs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Le/a/c/n/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/c/c/d/k0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/k0;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/k0$p;->b:Le/a/c/c/d/k0;

    iput-object p2, p0, Le/a/c/c/d/k0$p;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/k0$p;->b:Le/a/c/c/d/k0;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    .line 3
    iget-object v1, p0, Le/a/c/c/d/k0$p;->a:Ln3/c0/y;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "messageID"

    .line 4
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "confidence_score"

    .line 5
    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    .line 10
    new-instance v7, Le/a/c/n/f;

    invoke-direct {v7, v4, v5, v6}, Le/a/c/n/f;-><init>(JF)V

    .line 11
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    iget-object v0, p0, Le/a/c/c/d/k0$p;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 14
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 15
    iget-object v0, p0, Le/a/c/c/d/k0$p;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 16
    throw v1
.end method
