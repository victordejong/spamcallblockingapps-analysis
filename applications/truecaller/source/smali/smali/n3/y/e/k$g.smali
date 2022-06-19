.class public Ln3/y/e/k$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/k;


# direct methods
.method public constructor <init>(Ln3/y/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/k$g;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ln3/y/e/k$g;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ln3/y/e/k;->o()V

    .line 3
    iget-object p1, p0, Ln3/y/e/k$g;->a:Ln3/y/e/k;

    .line 4
    invoke-virtual {p1}, Ln3/y/e/k;->e()V

    .line 5
    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    invoke-virtual {v0}, Ln3/y/e/x;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 7
    iget-object v0, v0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->S()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Ln3/y/e/k;->u(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-boolean v0, p1, Ln3/y/e/k;->w:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/y/e/x;->n(J)V

    .line 12
    :cond_3
    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 13
    iget-object v0, v0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->W()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_4
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ln3/y/e/k;->u(I)V

    :goto_0
    return-void
.end method
