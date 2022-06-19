.class public final Le/a/c/a/m/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/i;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/i;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/k;->a:Le/a/c/a/m/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Le/a/c/a/m/c/i$b;

    invoke-direct {p1}, Le/a/c/a/m/c/i$b;-><init>()V

    .line 2
    new-instance v0, Le/a/c/a/m/c/k$a;

    invoke-direct {v0, p0}, Le/a/c/a/m/c/k$a;-><init>(Le/a/c/a/m/c/k;)V

    const-string v1, "callback"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object v0, p1, Le/a/c/a/m/c/i$b;->a:Ls1/z/b/l;

    .line 5
    iget-object v0, p0, Le/a/c/a/m/c/k;->a:Le/a/c/a/m/c/i;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "this.requireActivity()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Date picker"

    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
