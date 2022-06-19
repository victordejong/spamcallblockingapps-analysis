.class public final Lcom/appnext/a/a;
.super Landroid/widget/VideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/a/a$a;
    }
.end annotation


# instance fields
.field private ij:Lcom/appnext/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 2
    iget-object v0, p0, Lcom/appnext/a/a;->ij:Lcom/appnext/a/a$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/appnext/a/a$a;->onPause()V

    :cond_0
    return-void
.end method

.method public final setPlayPauseListener(Lcom/appnext/a/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/a/a;->ij:Lcom/appnext/a/a$a;

    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 2
    iget-object v0, p0, Lcom/appnext/a/a;->ij:Lcom/appnext/a/a$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/appnext/a/a$a;->bb()V

    :cond_0
    return-void
.end method
