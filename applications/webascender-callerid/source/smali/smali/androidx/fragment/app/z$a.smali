.class Landroidx/fragment/app/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/z;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/z$h;Landroid/view/View;Lf/e/a;Landroidx/fragment/app/z$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroidx/fragment/app/z$g;

.field final synthetic g:Landroidx/fragment/app/Fragment;

.field final synthetic h:Landroidx/core/os/a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/z$g;Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/z$a;->f:Landroidx/fragment/app/z$g;

    iput-object p2, p0, Landroidx/fragment/app/z$a;->g:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/z$a;->h:Landroidx/core/os/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z$a;->f:Landroidx/fragment/app/z$g;

    iget-object v1, p0, Landroidx/fragment/app/z$a;->g:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/z$a;->h:Landroidx/core/os/a;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/z$g;->a(Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V

    return-void
.end method
