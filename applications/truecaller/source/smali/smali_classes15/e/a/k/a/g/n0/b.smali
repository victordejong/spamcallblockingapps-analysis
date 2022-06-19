.class public final Le/a/k/a/g/n0/b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field public final a:Le/a/k/m/m;

.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/k/m/m;Ls1/z/b/l;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/m/m;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClickListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newBadgeVisibleListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/k/m/m;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/k/a/g/n0/b;->a:Le/a/k/m/m;

    iput-object p2, p0, Le/a/k/a/g/n0/b;->b:Ls1/z/b/l;

    iput-object p3, p0, Le/a/k/a/g/n0/b;->c:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public final N4(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v0

    check-cast v0, Le/a/z3/e;

    .line 2
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/z3/d;

    .line 3
    iput-object p2, v1, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, v1, Le/f/a/h;->N:Z

    .line 5
    check-cast v0, Le/a/z3/d;

    .line 6
    new-instance v1, Le/f/a/n/q/f/c;

    invoke-direct {v1}, Le/f/a/n/q/f/c;-><init>()V

    .line 7
    new-instance v2, Le/f/a/r/l/a;

    const/16 v3, 0x12c

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Le/f/a/r/l/a;-><init>(IZ)V

    .line 8
    iput-object v2, v1, Le/f/a/j;->a:Le/f/a/r/l/e;

    .line 9
    iput-object v1, v0, Le/f/a/h;->E:Le/f/a/j;

    .line 10
    iput-boolean v4, v0, Le/f/a/h;->M:Z

    .line 11
    new-instance v1, Le/f/a/n/q/d/i;

    invoke-direct {v1}, Le/f/a/n/q/d/i;-><init>()V

    .line 12
    invoke-virtual {v0, v1, p2}, Le/f/a/r/a;->C(Le/f/a/n/m;Z)Le/f/a/r/a;

    move-result-object p2

    .line 13
    check-cast p2, Le/a/z3/d;

    .line 14
    invoke-virtual {p2, p1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    if-eqz p3, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 15
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void
.end method
