.class public final Le/a/r/a0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Le/a/r/a0/m;

.field public final synthetic b:Ls1/z/c/a0;

.field public final synthetic c:Ls1/z/b/a;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ls1/z/b/l;

.field public final synthetic f:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/r/a0/m;Ls1/z/c/a0;Ls1/z/b/a;Ljava/util/List;Ls1/z/b/l;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/o;->a:Le/a/r/a0/m;

    iput-object p2, p0, Le/a/r/a0/o;->b:Ls1/z/c/a0;

    iput-object p3, p0, Le/a/r/a0/o;->c:Ls1/z/b/a;

    iput-object p4, p0, Le/a/r/a0/o;->d:Ljava/util/List;

    iput-object p5, p0, Le/a/r/a0/o;->e:Ls1/z/b/l;

    iput-object p6, p0, Le/a/r/a0/o;->f:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/r/a0/o;->b:Ls1/z/c/a0;

    iget p1, p1, Ls1/z/c/a0;->a:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/r/a0/o;->d:Ljava/util/List;

    invoke-static {v0, p1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/multisim/SimInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/r/a0/o;->e:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/a/r/a0/o;->f:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/r/a0/o;->c:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 4
    :goto_0
    iget-object p1, p0, Le/a/r/a0/o;->a:Le/a/r/a0/m;

    .line 5
    sget-object v0, Le/a/r/a0/m;->b:Le/a/r/a0/m$a;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 8
    invoke-virtual {v1, p1}, Ln3/r/a/a;->l(Landroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 9
    invoke-virtual {v1}, Ln3/r/a/a;->g()I

    :cond_2
    return-void
.end method
