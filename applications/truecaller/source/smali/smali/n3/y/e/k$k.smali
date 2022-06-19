.class public Ln3/y/e/k$k;
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
    iput-object p1, p0, Ln3/y/e/k$k;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/k$k;->a:Ln3/y/e/k;

    iget-object v0, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ln3/y/e/k;->o()V

    .line 3
    iget-object p1, p0, Ln3/y/e/k$k;->a:Ln3/y/e/k;

    iget-object p1, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 4
    iget-object p1, p1, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->D0()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    return-void
.end method
