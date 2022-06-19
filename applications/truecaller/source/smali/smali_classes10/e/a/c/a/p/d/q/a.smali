.class public abstract Le/a/c/a/p/d/q/a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/a/c/a/p/c/d;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$c0;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/a/i/h;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/c/a/i/h;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/c/a/p/d/q/a;->c:Le/a/c/a/i/h;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "itemView.context"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/c/a/p/d/q/a;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/c/a/p/d/q/a;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final N4()Le/a/b0/a/b/a;
    .locals 5

    .line 1
    new-instance v0, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    const-string v4, "itemView.context"

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    return-object v0
.end method

.method public final O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "addressProfile"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 2
    iget-object v3, v0, Le/a/b0/m/a/a;->c:Landroid/net/Uri;

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3
    iget-object v4, v0, Le/a/b0/m/a/a;->a:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xffbc

    move-object v2, v1

    .line 4
    invoke-direct/range {v2 .. v19}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v1
.end method

.method public abstract P4()Z
.end method

.method public abstract Q4()Z
.end method

.method public R4(Le/a/c/a/p/c/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/c/a/p/d/q/a;->T4()V

    .line 2
    invoke-virtual {p0}, Le/a/c/a/p/d/q/a;->Q4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Le/a/c/a/p/d/q/a$a;

    invoke-direct {v1, p0, p1}, Le/a/c/a/p/d/q/a$a;-><init>(Le/a/c/a/p/d/q/a;Le/a/c/a/p/c/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/c/a/p/d/q/a;->P4()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/c/a/p/d/q/a;->b:Ljava/util/Set;

    .line 6
    iget-wide v1, p1, Le/a/c/a/p/c/d;->a:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "view"

    .line 8
    invoke-static {p1, v0}, Le/a/c/p/a;->O2(Le/a/c/a/p/c/d;Ljava/lang/String;)Le/a/c/r/d/c;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v0

    .line 10
    iget-object v1, p0, Le/a/c/a/p/d/q/a;->b:Ljava/util/Set;

    .line 11
    iget-wide v2, p1, Le/a/c/a/p/c/d;->a:J

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Le/a/c/a/p/d/q/a;->c:Le/a/c/a/i/h;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract S4(Le/a/c/a/p/c/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract T4()V
.end method
