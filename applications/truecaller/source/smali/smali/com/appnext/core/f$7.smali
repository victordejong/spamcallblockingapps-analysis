.class public final Lcom/appnext/core/f$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic cU:Ljava/lang/String;

.field public final synthetic dn:Lcom/appnext/core/f;

.field public final synthetic dq:Ljava/lang/String;

.field public final synthetic dr:Ljava/lang/String;

.field public final synthetic ds:Ljava/lang/String;

.field public final synthetic dt:Ljava/lang/String;

.field public final synthetic val$placementID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appnext/core/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/f$7;->dn:Lcom/appnext/core/f;

    iput-object p2, p0, Lcom/appnext/core/f$7;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/core/f$7;->cU:Ljava/lang/String;

    iput-object p4, p0, Lcom/appnext/core/f$7;->val$placementID:Ljava/lang/String;

    iput-object p5, p0, Lcom/appnext/core/f$7;->dr:Ljava/lang/String;

    iput-object p6, p0, Lcom/appnext/core/f$7;->ds:Ljava/lang/String;

    iput-object p7, p0, Lcom/appnext/core/f$7;->dt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "guid"

    .line 2
    iget-object v2, p0, Lcom/appnext/core/f$7;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bannerId"

    .line 3
    iget-object v2, p0, Lcom/appnext/core/f$7;->cU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placementId"

    .line 4
    iget-object v2, p0, Lcom/appnext/core/f$7;->val$placementID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vid"

    .line 5
    iget-object v2, p0, Lcom/appnext/core/f$7;->dr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url"

    .line 6
    iget-object v2, p0, Lcom/appnext/core/f$7;->ds:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/appnext/core/f$7;->dn:Lcom/appnext/core/f;

    invoke-static {v1}, Lcom/appnext/core/f;->d(Lcom/appnext/core/f;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://admin.appnext.com/AdminService.asmx/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appnext/core/f$7;->dt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AppnextCK$serverNotify"

    .line 8
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
