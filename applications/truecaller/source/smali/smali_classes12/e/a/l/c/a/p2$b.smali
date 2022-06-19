.class public final Le/a/l/c/a/p2$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/c/a/p2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/a/b0/a/b/a;

.field public final b:Ls1/g;

.field public final c:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v0, p0, Le/a/l/c/a/p2$b;->a:Le/a/b0/a/b/a;

    const v1, 0x7f0a0c0a

    .line 3
    invoke-static {p1, v1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/l/c/a/p2$b;->b:Ls1/g;

    const v1, 0x7f0a1179

    .line 4
    invoke-static {p1, v1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/l/c/a/p2$b;->c:Ls1/g;

    const v1, 0x7f0a01b7

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void
.end method
