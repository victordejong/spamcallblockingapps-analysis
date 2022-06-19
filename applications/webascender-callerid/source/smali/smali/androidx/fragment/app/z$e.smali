.class Landroidx/fragment/app/z$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/z;->m(Landroidx/fragment/app/b0;Landroid/view/ViewGroup;Landroid/view/View;Lf/e/a;Landroidx/fragment/app/z$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroidx/fragment/app/Fragment;

.field final synthetic g:Landroidx/fragment/app/Fragment;

.field final synthetic h:Z

.field final synthetic i:Lf/e/a;

.field final synthetic j:Landroid/view/View;

.field final synthetic k:Landroidx/fragment/app/b0;

.field final synthetic l:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLf/e/a;Landroid/view/View;Landroidx/fragment/app/b0;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/z$e;->f:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/z$e;->g:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/z$e;->h:Z

    iput-object p4, p0, Landroidx/fragment/app/z$e;->i:Lf/e/a;

    iput-object p5, p0, Landroidx/fragment/app/z$e;->j:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/z$e;->k:Landroidx/fragment/app/b0;

    iput-object p7, p0, Landroidx/fragment/app/z$e;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z$e;->f:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/z$e;->g:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/z$e;->h:Z

    iget-object v3, p0, Landroidx/fragment/app/z$e;->i:Lf/e/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/z;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLf/e/a;Z)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/z$e;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/z$e;->k:Landroidx/fragment/app/b0;

    iget-object v2, p0, Landroidx/fragment/app/z$e;->l:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/b0;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
