.class public final Lcom/appnext/core/AppnextActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/AppnextActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic dd:Lcom/appnext/core/AppnextActivity;


# direct methods
.method public constructor <init>(Lcom/appnext/core/AppnextActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextActivity$1;->dd:Lcom/appnext/core/AppnextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity$1;->dd:Lcom/appnext/core/AppnextActivity;

    invoke-static {v0}, Lcom/appnext/core/g;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity$1;->dd:Lcom/appnext/core/AppnextActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity$1;->dd:Lcom/appnext/core/AppnextActivity;

    new-instance v1, Lcom/appnext/core/AppnextActivity$1$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/AppnextActivity$1$1;-><init>(Lcom/appnext/core/AppnextActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
