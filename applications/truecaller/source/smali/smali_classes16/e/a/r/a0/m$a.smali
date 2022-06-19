.class public final Le/a/r/a0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/a0/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/a0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/r/a/l;Ljava/util/List;Ls1/z/b/l;Ls1/z/b/a;Ls1/z/b/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/r/a/l;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/multisim/SimInfo;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/multisim/SimInfo;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simInfos"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNumberSelected"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onManualInputSelected"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCanceled"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Le/a/r/a0/m;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Le/a/r/a0/m;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Le/a/r/a0/m;

    invoke-direct {v0}, Le/a/r/a0/m;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 5
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 6
    const-class p1, Le/a/r/a0/m;

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v2, v0, p1, v3}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v1}, Ln3/r/a/a;->i()V

    .line 9
    :cond_1
    sget-object p1, Le/a/r/a0/m;->b:Le/a/r/a0/m$a;

    .line 10
    new-instance v3, Ls1/z/c/a0;

    invoke-direct {v3}, Ls1/z/c/a0;-><init>()V

    const/4 p1, -0x1

    iput p1, v3, Ls1/z/c/a0;->a:I

    .line 11
    new-instance p1, Ln3/b/a/g$a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 12
    sget v1, Lcom/truecaller/wizard/R$string;->Welcome_chooseNumber:I

    invoke-virtual {p1, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 13
    new-instance v1, Le/a/r/a0/p;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "requireContext()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p2}, Le/a/r/a0/p;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v2, Le/a/r/a0/n;

    invoke-direct {v2, v3}, Le/a/r/a0/n;-><init>(Ls1/z/c/a0;)V

    .line 14
    iget-object v8, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v8, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    .line 15
    iput-object v2, v8, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 16
    new-instance v9, Le/a/r/a0/o;

    move-object v1, v9

    move-object v2, v0

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Le/a/r/a0/o;-><init>(Le/a/r/a0/m;Ls1/z/c/a0;Ls1/z/b/a;Ljava/util/List;Ls1/z/b/l;Ls1/z/b/a;)V

    .line 17
    iput-object v9, v8, Landroidx/appcompat/app/AlertController$b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 18
    invoke-virtual {p1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object p1

    iput-object p1, v0, Le/a/r/a0/m;->a:Ln3/b/a/g;

    return-void
.end method
