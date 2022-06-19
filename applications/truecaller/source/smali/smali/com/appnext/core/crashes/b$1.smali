.class public final Lcom/appnext/core/crashes/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/crashes/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic eE:Ljava/lang/String;

.field public final synthetic eF:Ljava/lang/String;

.field public final synthetic eG:Lcom/appnext/core/crashes/b;


# direct methods
.method public constructor <init>(Lcom/appnext/core/crashes/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/crashes/b$1;->eG:Lcom/appnext/core/crashes/b;

    iput-object p2, p0, Lcom/appnext/core/crashes/b$1;->eE:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/core/crashes/b$1;->eF:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/appnext/core/crashes/a;

    iget-object v1, p0, Lcom/appnext/core/crashes/b$1;->eG:Lcom/appnext/core/crashes/b;

    invoke-static {v1}, Lcom/appnext/core/crashes/b;->a(Lcom/appnext/core/crashes/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/core/crashes/b$1;->eE:Ljava/lang/String;

    iget-object v3, p0, Lcom/appnext/core/crashes/b$1;->eF:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/appnext/core/crashes/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/appnext/core/crashes/a;->aE()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
