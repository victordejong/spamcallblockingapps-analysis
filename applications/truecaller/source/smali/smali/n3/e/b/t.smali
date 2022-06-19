.class public final synthetic Ln3/e/b/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/k/h/b;

.field public final synthetic b:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Ln3/k/h/b;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/t;->a:Ln3/k/h/b;

    iput-object p2, p0, Ln3/e/b/t;->b:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ln3/e/b/t;->a:Ln3/k/h/b;

    iget-object v1, p0, Ln3/e/b/t;->b:Landroid/view/Surface;

    .line 1
    new-instance v2, Ln3/e/b/f0;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Ln3/e/b/f0;-><init>(ILandroid/view/Surface;)V

    .line 2
    invoke-interface {v0, v2}, Ln3/k/h/b;->accept(Ljava/lang/Object;)V

    return-void
.end method
