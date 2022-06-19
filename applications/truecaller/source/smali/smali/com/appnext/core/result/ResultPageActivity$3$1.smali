.class public final Lcom/appnext/core/result/ResultPageActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/result/ResultPageActivity$3;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic fl:Lcom/appnext/core/result/ResultPageActivity$3;


# direct methods
.method public constructor <init>(Lcom/appnext/core/result/ResultPageActivity$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$3$1;->fl:Lcom/appnext/core/result/ResultPageActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$3$1;->fl:Lcom/appnext/core/result/ResultPageActivity$3;

    iget-object v1, v0, Lcom/appnext/core/result/ResultPageActivity$3;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    iget-object v0, v0, Lcom/appnext/core/result/ResultPageActivity$3;->fk:Ljava/lang/String;

    invoke-static {v1}, Lcom/appnext/core/webview/AppnextWebView;->t(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/core/result/ResultPageActivity$3$1;->fl:Lcom/appnext/core/result/ResultPageActivity$3;

    iget-object v3, v3, Lcom/appnext/core/result/ResultPageActivity$3;->fk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appnext/core/webview/AppnextWebView;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/appnext/core/result/ResultPageActivity;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ResultPageActivity$loaded"

    .line 2
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
