.class public Ln3/y/e/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/e/i0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/f0;


# direct methods
.method public constructor <init>(Ln3/y/e/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/f0$a;->a:Ln3/y/e/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 0

    .line 1
    sget-boolean p2, Ln3/y/e/f0;->r:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p2, p0, Ln3/y/e/f0$a;->a:Ln3/y/e/f0;

    iget-object p3, p2, Ln3/y/e/f0;->d:Ln3/y/e/i0;

    if-ne p1, p3, :cond_1

    .line 4
    iget-boolean p1, p2, Ln3/y/e/v;->a:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p2, Ln3/y/e/f0;->g:Ln3/y/e/x;

    invoke-interface {p3, p1}, Ln3/y/e/i0;->b(Ln3/y/e/x;)Z

    :cond_1
    return-void
.end method

.method public b(Ln3/y/e/i0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/f0$a;->a:Ln3/y/e/f0;

    iget-object v0, v0, Ln3/y/e/f0;->d:Ln3/y/e/i0;

    if-eq p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTakeOverDone(). view is not targetView. ignore.: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    sget-boolean v0, Ln3/y/e/f0;->r:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTakeOverDone(). Now current view is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    :cond_1
    iget-object v0, p0, Ln3/y/e/f0$a;->a:Ln3/y/e/f0;

    iget-object v0, v0, Ln3/y/e/f0;->c:Ln3/y/e/i0;

    if-eq p1, v0, :cond_2

    .line 6
    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Ln3/y/e/f0$a;->a:Ln3/y/e/f0;

    iput-object p1, v0, Ln3/y/e/f0;->c:Ln3/y/e/i0;

    .line 8
    iget-object v1, v0, Ln3/y/e/f0;->b:Ln3/y/e/f0$c;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {p1}, Ln3/y/e/i0;->a()I

    move-result p1

    invoke-interface {v1, v0, p1}, Ln3/y/e/f0$c;->a(Landroid/view/View;I)V

    :cond_2
    return-void
.end method
