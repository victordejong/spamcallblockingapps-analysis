.class public final Le/a/a/c/b/b$d;
.super Le/a/a/c/b5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/b/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Le/a/a/c/b/b;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/a/c/b/b;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/b/b$d;->d:Le/a/a/c/b/b;

    iput-object p2, p0, Le/a/a/c/b/b$d;->e:Landroid/view/View;

    invoke-direct {p0, p3}, Le/a/a/c/b5;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/b/b$d;->d:Le/a/a/c/b/b;

    .line 2
    sget v1, Le/a/a/c/b/b;->z:I

    .line 3
    invoke-virtual {v0}, Le/a/a/c/b/b;->SA()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const-string v1, "recyclerView"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/b/b$d;->d:Le/a/a/c/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/a/c/b/b;->it(Z)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/b/b$d;->d:Le/a/a/c/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/a/a/c/b/b;->it(Z)V

    return-void
.end method
