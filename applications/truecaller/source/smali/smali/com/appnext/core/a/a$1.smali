.class public final Lcom/appnext/core/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/a/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic eJ:Lcom/appnext/core/a/a;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/appnext/core/a/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/a/a$1;->eJ:Lcom/appnext/core/a/a;

    iput-object p2, p0, Lcom/appnext/core/a/a$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/a/a$1;->eJ:Lcom/appnext/core/a/a;

    invoke-static {}, Lcom/appnext/core/p;->aA()Lcom/appnext/core/p;

    iget-object v1, p0, Lcom/appnext/core/a/a$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/appnext/core/p;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appnext/core/a/a;->a(Lcom/appnext/core/a/a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Language$Language"

    .line 2
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
