.class public final Le/a/h0/v/e;
.super Le/a/e/c2/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h0/v/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/e/c2/t<",
        "Le/a/h0/v/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/h0/v/h;


# direct methods
.method public constructor <init>(Le/a/h0/v/h;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/e/c2/t;-><init>()V

    iput-object p1, p0, Le/a/h0/v/e;->b:Le/a/h0/v/h;

    return-void
.end method


# virtual methods
.method public e(Le/a/e/c2/t$b;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h0/v/e$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/h0/v/e;->b:Le/a/h0/v/h;

    check-cast v0, Le/a/h0/v/i;

    invoke-virtual {v0, p1, p2}, Le/a/h0/v/i;->G(Ljava/lang/Object;I)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Le/a/e/c2/t$b;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "parent.context"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object p1, p0, Le/a/h0/v/e;->b:Le/a/h0/v/h;

    .line 4
    new-instance v0, Le/a/h0/v/e$a;

    invoke-direct {v0, p2, p1}, Le/a/h0/v/e$a;-><init>(Landroid/view/View;Le/a/h0/v/h;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/v/e;->b:Le/a/h0/v/h;

    check-cast v0, Le/a/h0/v/i;

    invoke-virtual {v0}, Le/a/h0/v/i;->Kb()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/h0/v/e;->b:Le/a/h0/v/h;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method
