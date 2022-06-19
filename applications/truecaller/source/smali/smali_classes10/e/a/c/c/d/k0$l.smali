.class public Le/a/c/c/d/k0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/k0;->i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/c/c/d/k0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/k0;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/k0$l;->b:Le/a/c/c/d/k0;

    iput-object p2, p0, Le/a/c/c/d/k0$l;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/k0$l;->b:Le/a/c/c/d/k0;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    .line 3
    iget-object v1, p0, Le/a/c/c/d/k0$l;->a:Ln3/c0/y;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 7
    :goto_0
    iget-object v1, p0, Le/a/c/c/d/k0$l;->b:Le/a/c/c/d/k0;

    .line 8
    iget-object v1, v1, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 9
    invoke-virtual {v1, v3}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 11
    iget-object v0, p0, Le/a/c/c/d/k0$l;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    iget-object v0, p0, Le/a/c/c/d/k0$l;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 14
    throw v1
.end method
