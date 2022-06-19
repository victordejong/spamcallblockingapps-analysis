.class public final Le/a/c/a/m/b/w;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Le/a/c/a/g/z1;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/z1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p1, Le/a/c/a/g/z1;->b:Landroid/widget/TextView;

    const-string v1, "binding.addressView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/c/a/m/b/w;->a:Landroid/widget/TextView;

    .line 4
    iget-object v0, p1, Le/a/c/a/g/z1;->d:Landroid/widget/TextView;

    const-string v1, "binding.updatesMessageTextView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/c/a/m/b/w;->b:Landroid/widget/TextView;

    .line 5
    iget-object p1, p1, Le/a/c/a/g/z1;->c:Landroid/widget/CheckBox;

    const-string v0, "binding.checkBox"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/c/a/m/b/w;->c:Landroid/widget/CheckBox;

    return-void
.end method
