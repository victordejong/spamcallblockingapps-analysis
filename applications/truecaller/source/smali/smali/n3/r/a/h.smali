.class public Ln3/r/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/r/a/o0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ln3/r/a/b;Ln3/r/a/o0;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/r/a/h;->a:Ln3/r/a/o0;

    iput-object p3, p0, Ln3/r/a/h;->b:Landroid/view/View;

    iput-object p4, p0, Ln3/r/a/h;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/r/a/h;->a:Ln3/r/a/o0;

    iget-object v1, p0, Ln3/r/a/h;->b:Landroid/view/View;

    iget-object v2, p0, Ln3/r/a/h;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Ln3/r/a/o0;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
