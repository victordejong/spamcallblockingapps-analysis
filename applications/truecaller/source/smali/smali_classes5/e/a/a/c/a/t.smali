.class public final Le/a/a/c/a/t;
.super Le/a/a/c/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/c/a/b;-><init>(Landroid/view/View;)V

    .line 2
    sget-object p1, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {p1}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/k2;->o(Le/a/a/c/a/t;)V

    return-void
.end method
