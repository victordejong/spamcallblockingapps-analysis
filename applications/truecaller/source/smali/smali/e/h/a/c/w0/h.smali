.class public Le/h/a/c/w0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/s0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h/a/c/w0/h$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Le/h/a/c/w0/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "pt_id"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Ln3/g0/y;->U(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Le/h/a/c/p;->e(Landroid/content/Context;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 3
    new-instance v3, Le/h/a/c/w0/f;

    invoke-direct {v3, v2, v2}, Le/h/a/c/w0/f;-><init>(ZZ)V

    goto :goto_1

    :cond_0
    const-string v3, "wzrk_pn"

    .line 4
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v4, "nm"

    .line 5
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    .line 6
    :goto_0
    new-instance v5, Le/h/a/c/w0/f;

    invoke-direct {v5, v3, v4}, Le/h/a/c/w0/f;-><init>(ZZ)V

    move-object v3, v5

    .line 7
    :goto_1
    iget-boolean v3, v3, Le/h/a/c/w0/f;->a:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    .line 8
    iget-object v2, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 9
    iget-object v2, v2, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v3, "PushProvider"

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "received notification from CleverTap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object v5, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v2, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v4}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p2}, Le/h/a/c/w0/h;->c(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    sget-object v2, Le/h/a/c/p;->f:Le/h/a/c/s0/c;

    if-eqz v2, :cond_2

    .line 15
    invoke-interface {v2, p1, p2, p3}, Le/h/a/c/s0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z

    goto :goto_2

    .line 16
    :cond_2
    new-instance p3, Le/h/a/c/w0/c;

    invoke-direct {p3}, Le/h/a/c/w0/c;-><init>()V

    invoke-virtual {v0, p3, p1, p2}, Le/h/a/c/p;->r(Le/h/a/c/w0/e;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_2
    monitor-exit p0

    return v1

    .line 19
    :cond_4
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
