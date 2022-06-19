.class public final Ln3/z/c2;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/z/f2;


# direct methods
.method public constructor <init>(Ln3/z/f2;)V
    .locals 0

    iput-object p1, p0, Ln3/z/c2;->b:Ln3/z/f2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/z/c2;->b:Ln3/z/f2;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$g$a;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$g$a;->c:Landroidx/recyclerview/widget/RecyclerView$g$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ln3/z/c2;->b:Ln3/z/f2;

    .line 2
    iget-boolean v1, v0, Ln3/z/f2;->a:Z

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$g$a;->a:Landroidx/recyclerview/widget/RecyclerView$g$a;

    invoke-virtual {v0, v1}, Ln3/z/f2;->setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$g$a;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/z/c2;->a()V

    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
