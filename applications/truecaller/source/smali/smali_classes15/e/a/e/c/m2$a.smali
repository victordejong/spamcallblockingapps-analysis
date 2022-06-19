.class public final Le/a/e/c/m2$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic c:[Ls1/a/l;


# instance fields
.field public final a:Le/a/p5/x0/b;

.field public final synthetic b:Le/a/e/c/m2;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/e/c/m2$a;

    const-string v2, "binding"

    const-string v3, "getBinding$truecaller_googlePlayRelease()Lcom/truecaller/databinding/ViewDetailsPictureBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/e/c/m2$a;->c:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/e/c/m2;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/e/c/m2$a;->b:Le/a/e/c/m2;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 3
    new-instance p1, Le/a/p5/x0/b;

    new-instance p2, Le/a/e/c/m2$a$a;

    invoke-direct {p2}, Le/a/e/c/m2$a$a;-><init>()V

    invoke-direct {p1, p2}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object p1, p0, Le/a/e/c/m2$a;->a:Le/a/p5/x0/b;

    .line 4
    invoke-virtual {p0}, Le/a/e/c/m2$a;->N4()Le/a/m3/c1;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/c1;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final N4()Le/a/m3/c1;
    .locals 3

    iget-object v0, p0, Le/a/e/c/m2$a;->a:Le/a/p5/x0/b;

    sget-object v1, Le/a/e/c/m2$a;->c:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/m3/c1;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/e/c/m2$a;->b:Le/a/e/c/m2;

    .line 2
    iget-object p1, p1, Le/a/e/c/m2;->b:Le/a/e/c/l2;

    .line 3
    invoke-virtual {p0}, Le/a/e/c/m2$a;->N4()Le/a/m3/c1;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/c1;->a:Landroid/widget/ImageView;

    const-string v1, "binding.pictureImageView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/e/c/m2$a;->b:Le/a/e/c/m2;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v2

    .line 4
    iget-object v1, v1, Le/a/e/c/m2;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    check-cast p1, Le/a/e/c/s1;

    .line 6
    invoke-virtual {p1}, Le/a/e/c/j2;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v3, Le/a/e/a/d3;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v2, v1, v0}, Le/a/e/a/d3;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 8
    iget-object p1, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessProfilesAction;->IMAGE_OPENEND:Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessProfilesAction;

    const-string v1, "detailView"

    invoke-static {v1, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->b(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessProfilesAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    :cond_0
    return-void
.end method
