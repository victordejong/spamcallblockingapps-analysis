.class Lcom/hiya/stingray/q/b/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/a0;->f(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:[Ljava/lang/String;

.field final synthetic i:Lcom/hiya/stingray/q/b/a0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/a0;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/b/a0$a;->i:Lcom/hiya/stingray/q/b/a0;

    iput p2, p0, Lcom/hiya/stingray/q/b/a0$a;->f:I

    iput-object p3, p0, Lcom/hiya/stingray/q/b/a0$a;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/hiya/stingray/q/b/a0$a;->h:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/q/b/a0$a;->i:Lcom/hiya/stingray/q/b/a0;

    invoke-static {v1}, Lcom/hiya/stingray/q/b/a0;->a(Lcom/hiya/stingray/q/b/a0;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_SMS"

    invoke-static {v1, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget v2, p0, Lcom/hiya/stingray/q/b/a0$a;->f:I

    const-string v4, "android:query-arg-limit"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object v2, p0, Lcom/hiya/stingray/q/b/a0$a;->g:Ljava/lang/String;

    const-string v4, "android:query-arg-sql-selection"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/hiya/stingray/q/b/a0$a;->h:[Ljava/lang/String;

    const-string v4, "android:query-arg-sql-selection-args"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "DATE"

    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "android:query-arg-sort-columns"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "android:query-arg-sort-direction"

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-object v2, p0, Lcom/hiya/stingray/q/b/a0$a;->i:Lcom/hiya/stingray/q/b/a0;

    invoke-static {v2}, Lcom/hiya/stingray/q/b/a0;->a(Lcom/hiya/stingray/q/b/a0;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/hiya/stingray/q/b/a0;->b()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/hiya/stingray/q/b/a0$a;->i:Lcom/hiya/stingray/q/b/a0;

    invoke-static {v1}, Lcom/hiya/stingray/q/b/a0;->a(Lcom/hiya/stingray/q/b/a0;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 12
    invoke-static {}, Lcom/hiya/stingray/q/b/a0;->b()[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/hiya/stingray/q/b/a0$a;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/hiya/stingray/q/b/a0$a;->h:[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/hiya/stingray/q/b/a0$a;->f:I

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "date Desc LIMIT %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 14
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    .line 15
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/hiya/stingray/q/b/a0$a;->i:Lcom/hiya/stingray/q/b/a0;

    invoke-static {v2}, Lcom/hiya/stingray/q/b/a0;->c(Lcom/hiya/stingray/q/b/a0;)Lcom/hiya/stingray/t/i1/v0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hiya/stingray/t/i1/v0;->a(Landroid/database/Cursor;)Lcom/hiya/stingray/q/c/f;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 17
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    .line 19
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_5
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/b/a0$a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
