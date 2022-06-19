.class public final synthetic Ln3/e/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/view/PreviewView$a;

.field public final synthetic b:Ln3/e/b/f1;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$a;Ln3/e/b/f1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/f;->a:Landroidx/camera/view/PreviewView$a;

    iput-object p2, p0, Ln3/e/d/f;->b:Ln3/e/b/f1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/d/f;->a:Landroidx/camera/view/PreviewView$a;

    iget-object v1, p0, Ln3/e/d/f;->b:Ln3/e/b/f1;

    .line 1
    iget-object v0, v0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v0, v0, Landroidx/camera/view/PreviewView;->i:Ln3/e/b/c1$d;

    invoke-interface {v0, v1}, Ln3/e/b/c1$d;->a(Ln3/e/b/f1;)V

    return-void
.end method
