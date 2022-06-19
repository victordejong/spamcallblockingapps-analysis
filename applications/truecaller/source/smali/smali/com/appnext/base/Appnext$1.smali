.class public final Lcom/appnext/base/Appnext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/base/Appnext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic bP:Lcom/appnext/base/Appnext;


# direct methods
.method public constructor <init>(Lcom/appnext/base/Appnext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/base/Appnext$1;->bP:Lcom/appnext/base/Appnext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/base/Appnext$1;->bP:Lcom/appnext/base/Appnext;

    invoke-static {v1}, Lcom/appnext/base/Appnext;->a(Lcom/appnext/base/Appnext;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/base/b/b;->init(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/appnext/base/Appnext$1;->bP:Lcom/appnext/base/Appnext;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->a(Lcom/appnext/base/Appnext;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/base/moments/b/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/appnext/base/Appnext$1;->bP:Lcom/appnext/base/Appnext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appnext/base/Appnext;->a(Lcom/appnext/base/Appnext;Z)Z

    .line 4
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v0

    const-string v1, "lat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appnext/base/b/b;->b(Ljava/lang/String;Z)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/appnext/base/Appnext$1;->bP:Lcom/appnext/base/Appnext;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->a(Lcom/appnext/base/Appnext;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/base/b/a;->init(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/appnext/base/Appnext$1;->bP:Lcom/appnext/base/Appnext;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->b(Lcom/appnext/base/Appnext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
