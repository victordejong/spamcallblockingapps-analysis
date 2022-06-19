.class public final Le/a/c/a/m/b/d;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Le/a/c/a/g/u1;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/u1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p1, Le/a/c/a/g/u1;->b:Landroid/widget/TextView;

    const-string v1, "binding.address"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/c/a/m/b/d;->a:Landroid/widget/TextView;

    .line 4
    iget-object v0, p1, Le/a/c/a/g/u1;->c:Landroid/widget/TextView;

    const-string v1, "binding.body"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/c/a/m/b/d;->b:Landroid/widget/TextView;

    .line 5
    iget-object p1, p1, Le/a/c/a/g/u1;->d:Landroid/widget/TextView;

    const-string v0, "binding.date"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/c/a/m/b/d;->c:Landroid/widget/TextView;

    return-void
.end method
