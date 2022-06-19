.class public Ln3/r/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/e/a$a;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Ln3/r/a/b$b;


# direct methods
.method public constructor <init>(Ln3/r/a/b;Landroid/view/View;Landroid/view/ViewGroup;Ln3/r/a/b$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/r/a/f;->a:Landroid/view/View;

    iput-object p3, p0, Ln3/r/a/f;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Ln3/r/a/f;->c:Ln3/r/a/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/r/a/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2
    iget-object v0, p0, Ln3/r/a/f;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Ln3/r/a/f;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Ln3/r/a/f;->c:Ln3/r/a/b$b;

    invoke-virtual {v0}, Ln3/r/a/b$c;->a()V

    return-void
.end method
