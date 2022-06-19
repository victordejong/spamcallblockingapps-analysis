.class public final Lcom/appnext/core/ra/a/a;
.super Lcom/appnext/core/ra/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/appnext/core/ra/a/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final aM()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/ra/a;->r(Landroid/content/Context;)Lcom/appnext/core/ra/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/ra/a;->aH()V

    return-void
.end method

.method public final aN()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
