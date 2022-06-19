.class public final Lcom/appnext/core/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/f;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic dn:Lcom/appnext/core/f;


# direct methods
.method public constructor <init>(Lcom/appnext/core/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/f$2;->dn:Lcom/appnext/core/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/f$2;->dn:Lcom/appnext/core/f;

    invoke-static {v0}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appnext/core/f$2;->dn:Lcom/appnext/core/f;

    invoke-static {v0}, Lcom/appnext/core/f;->g(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/core/f$2;->dn:Lcom/appnext/core/f;

    invoke-static {v0}, Lcom/appnext/core/f;->f(Lcom/appnext/core/f;)Lcom/appnext/core/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/f$2;->dn:Lcom/appnext/core/f;

    invoke-static {v1}, Lcom/appnext/core/f;->g(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appnext/core/f$a;->error(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/appnext/core/f$2;->dn:Lcom/appnext/core/f;

    invoke-static {v0}, Lcom/appnext/core/f;->g(Lcom/appnext/core/f;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/appnext/core/f$2;->dn:Lcom/appnext/core/f;

    invoke-static {v0}, Lcom/appnext/core/f;->b(Lcom/appnext/core/f;)V

    return-void
.end method
