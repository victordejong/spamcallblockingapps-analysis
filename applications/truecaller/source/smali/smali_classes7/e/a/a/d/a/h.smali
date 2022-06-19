.class public final Le/a/a/d/a/h;
.super Le/a/e/c2/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/d/a/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/e/c2/t<",
        "Le/a/a/d/a/h$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/d/a/e;


# direct methods
.method public constructor <init>(Le/a/a/d/a/e;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/e/c2/t;-><init>()V

    iput-object p1, p0, Le/a/a/d/a/h;->b:Le/a/a/d/a/e;

    return-void
.end method


# virtual methods
.method public e(Le/a/e/c2/t$b;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/d/a/h$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/d/a/h;->b:Le/a/a/d/a/e;

    check-cast v0, Le/a/a/d/a/i;

    invoke-virtual {v0, p1, p2}, Le/a/a/d/a/i;->G(Ljava/lang/Object;I)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Le/a/e/c2/t$b;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Le/a/a/d/a/h$a;

    const v0, 0x7f0d02a5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Le/a/l4/k;->R(Landroid/view/ViewGroup;IZZ)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Le/a/a/d/a/h$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/d/a/h;->b:Le/a/a/d/a/e;

    check-cast v0, Le/a/a/d/a/i;

    invoke-virtual {v0}, Le/a/a/d/a/i;->Kb()I

    move-result v0

    return v0
.end method
