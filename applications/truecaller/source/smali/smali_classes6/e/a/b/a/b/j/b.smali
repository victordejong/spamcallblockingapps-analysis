.class public final Le/a/b/a/b/j/b;
.super Le/a/b/a/b/j/i;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b/m/w0;


# direct methods
.method public constructor <init>(Le/a/b/m/w0;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/b/m/w0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Le/a/b/a/b/j/i;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/b/a/b/j/b;->a:Le/a/b/m/w0;

    return-void
.end method
