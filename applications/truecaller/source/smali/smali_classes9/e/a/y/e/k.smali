.class public Le/a/y/e/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/k$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Le/a/y/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/b/z<",
            "Le/a/y/e/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Le/a/y/e/i;Le/a/y/e/m;Le/a/y/e/k$a;Le/a/y/b/z;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Le/a/y/e/i;",
            "Le/a/y/e/m;",
            "Le/a/y/e/k$a;",
            "Le/a/y/b/z<",
            "Le/a/y/e/i;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "layout_inflater"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 3
    sget v0, Lcom/truecaller/flashsdk/R$layout;->layout_emoji_grid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/a/y/e/k;->a:Landroid/view/View;

    .line 4
    sget v0, Lcom/truecaller/flashsdk/R$id;->grid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 5
    iput-object p5, p0, Le/a/y/e/k;->b:Le/a/y/b/z;

    if-nez p2, :cond_0

    .line 6
    sget-object p2, Le/a/y/e/n;->c:[Le/a/y/e/i;

    .line 7
    :cond_0
    new-instance p5, Le/a/y/e/j;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p5, p1, p2}, Le/a/y/e/j;-><init>(Landroid/content/Context;[Le/a/y/e/i;)V

    .line 8
    new-instance p1, Le/a/y/e/e;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Le/a/y/e/e;-><init>(Le/a/y/e/k;Le/a/y/e/k$a;Le/a/y/e/m;J)V

    .line 9
    iput-object p1, p5, Le/a/y/e/j;->a:Le/a/y/e/k$a;

    .line 10
    invoke-virtual {v0, p5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
