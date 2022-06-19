.class public final Le/a/a/b/a$l;
.super Le/a/b0/a/w/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Le/a/a/b/a;


# direct methods
.method public constructor <init>(Le/a/a/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/b/a$l;->d:Le/a/a/b/a;

    invoke-direct {p0}, Le/a/b0/a/w/g;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/a$l;->d:Le/a/a/b/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v1, v0, Le/a/b0/a/w/c$a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/b0/a/w/c$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/b0/a/w/c$a;->v7(Z)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Le/a/b0/a/w/g;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Le/a/a/b/a$l;->d:Le/a/a/b/a;

    invoke-virtual {p1}, Le/a/a/b/a;->QA()Le/a/a/b/p;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/b/p;->wh()V

    :cond_0
    return-void
.end method
