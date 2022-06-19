.class public Le/a/e/c/m1;
.super Le/a/l3/a;
.source "SourceFile"


# instance fields
.field public final synthetic f:Le/a/e/c/l1;


# direct methods
.method public constructor <init>(Le/a/e/c/l1;Le/a/j4/a/d;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/m1;->f:Le/a/e/c/l1;

    invoke-direct {p0, p2, p3}, Le/a/l3/a;-><init>(Le/a/j4/a/d;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/e/c/m1;->f:Le/a/e/c/l1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v1, p0, Le/a/e/c/m1;->f:Le/a/e/c/l1;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100010

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget v0, Le/a/e/c/l1;->q:I

    .line 5
    invoke-virtual {v1, p1}, Le/a/e/x0;->We(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
