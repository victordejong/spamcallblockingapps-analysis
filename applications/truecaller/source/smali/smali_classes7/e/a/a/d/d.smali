.class public final Le/a/a/d/d;
.super Le/a/e/c2/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/d/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/e/c2/t<",
        "Le/a/a/d/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/d/p;


# direct methods
.method public constructor <init>(Le/a/a/d/p;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/e/c2/t;-><init>()V

    iput-object p1, p0, Le/a/a/d/d;->b:Le/a/a/d/p;

    return-void
.end method


# virtual methods
.method public e(Le/a/e/c2/t$b;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/d/d$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/d/d;->b:Le/a/a/d/p;

    check-cast v0, Le/a/a/d/j;

    invoke-virtual {v0, p1, p2}, Le/a/a/d/j;->G(Ljava/lang/Object;I)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Le/a/e/c2/t$b;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v0, "LayoutInflater.from(parent.context)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p2, v0}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3
    new-instance v0, Le/a/a/d/d$a;

    const v1, 0x7f0d02a5

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026icipant_x, parent, false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Le/a/a/d/d;->b:Le/a/a/d/p;

    invoke-direct {v0, p1, p2}, Le/a/a/d/d$a;-><init>(Landroid/view/View;Le/a/a/d/p;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/d/d;->b:Le/a/a/d/p;

    check-cast v0, Le/a/a/d/j;

    invoke-virtual {v0}, Le/a/a/d/j;->Kb()I

    move-result v0

    return v0
.end method
