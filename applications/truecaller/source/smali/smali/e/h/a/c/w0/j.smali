.class public Le/h/a/c/w0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/h/a/c/w0/g$a;

.field public final synthetic c:Le/h/a/c/w0/i;


# direct methods
.method public constructor <init>(Le/h/a/c/w0/i;Ljava/lang/String;Le/h/a/c/w0/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/w0/j;->c:Le/h/a/c/w0/i;

    iput-object p2, p0, Le/h/a/c/w0/j;->a:Ljava/lang/String;

    iput-object p3, p0, Le/h/a/c/w0/j;->b:Le/h/a/c/w0/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/w0/j;->c:Le/h/a/c/w0/i;

    iget-object v1, p0, Le/h/a/c/w0/j;->a:Ljava/lang/String;

    iget-object v2, p0, Le/h/a/c/w0/j;->b:Le/h/a/c/w0/g$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Le/h/a/c/w0/i;->i(Le/h/a/c/w0/g$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "PushProvider"

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Token Already available value: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v0, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Le/h/a/c/w0/j;->b:Le/h/a/c/w0/g$a;

    .line 8
    iget-object v0, v0, Le/h/a/c/w0/g$a;->c:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Le/h/a/c/w0/j;->c:Le/h/a/c/w0/i;

    .line 11
    iget-object v2, v1, Le/h/a/c/w0/i;->g:Landroid/content/Context;

    .line 12
    iget-object v1, v1, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    invoke-static {v1, v0}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/w0/j;->a:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Ln3/g0/y;->u0(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    iget-object v0, p0, Le/h/a/c/w0/j;->c:Le/h/a/c/w0/i;

    .line 18
    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/h/a/c/w0/j;->b:Le/h/a/c/w0/g$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Cached New Token successfully "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/h/a/c/w0/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v2, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v0, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
