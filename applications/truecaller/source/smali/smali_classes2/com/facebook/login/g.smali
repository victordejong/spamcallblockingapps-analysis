.class public final synthetic Lcom/facebook/login/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/login/NativeAppLoginMethodHandler;

.field public final synthetic b:Lcom/facebook/login/LoginClient$Request;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/NativeAppLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/g;->a:Lcom/facebook/login/NativeAppLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/g;->b:Lcom/facebook/login/LoginClient$Request;

    iput-object p3, p0, Lcom/facebook/login/g;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/login/g;->a:Lcom/facebook/login/NativeAppLoginMethodHandler;

    iget-object v1, p0, Lcom/facebook/login/g;->b:Lcom/facebook/login/LoginClient$Request;

    iget-object v2, p0, Lcom/facebook/login/g;->c:Landroid/os/Bundle;

    const-string v3, "this$0"

    .line 1
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$request"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$extras"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginMethodHandler;->n(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->y(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    :try_end_0
    .catch Le/j/h0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Le/j/c0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 5
    iget-object v2, v2, Le/j/h0;->a:Lcom/facebook/FacebookRequestError;

    .line 6
    iget-object v3, v2, Lcom/facebook/FacebookRequestError;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->a()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget v2, v2, Lcom/facebook/FacebookRequestError;->b:I

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
