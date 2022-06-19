.class final Lcom/hiya/stingray/ui/u/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/u/b;->t0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/u/b;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/u/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/u/b$b;->f:Lcom/hiya/stingray/ui/u/b;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/u/b$b;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/u/b$b;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/u/b$b;->f:Lcom/hiya/stingray/ui/u/b;

    sget v1, Lcom/hiya/stingray/o;->d2:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/u/b;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method
