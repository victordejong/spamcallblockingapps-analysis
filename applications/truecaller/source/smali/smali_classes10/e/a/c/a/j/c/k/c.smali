.class public final Le/a/c/a/j/c/k/c;
.super Le/a/c/a/j/c/k/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/j/c/k/d<",
        "Le/a/c/a/j/b/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/c/a/g/j1;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/c/a/g/j1;->a:Lcom/truecaller/common/ui/ShimmerLoadingView;

    const-string v0, "binding.root"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Le/a/c/a/j/c/k/d;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public O4()V
    .locals 0

    return-void
.end method
