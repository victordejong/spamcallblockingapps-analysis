.class public final Le/a/h/f/g;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/j;
.implements Le/a/e/z0$b;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final a:Le/a/p5/i0;

.field public final b:Le/a/b0/a/b/a;

.field public final c:Le/a/l4/d;

.field public final d:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public final e:Le/a/o2/m;

.field public final synthetic f:Le/a/h/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/l4/c;Le/a/p5/c;Le/a/o2/m;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Le/a/h/m;

    invoke-direct {v0}, Le/a/h/m;-><init>()V

    iput-object v0, p0, Le/a/h/f/g;->f:Le/a/h/m;

    iput-object p4, p0, Le/a/h/f/g;->e:Le/a/o2/m;

    .line 3
    new-instance v0, Le/a/p5/i0;

    invoke-virtual {p0}, Le/a/h/f/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/h/f/g;->a:Le/a/p5/i0;

    .line 4
    new-instance v1, Le/a/b0/a/b/a;

    invoke-direct {v1, v0}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v1, p0, Le/a/h/f/g;->b:Le/a/b0/a/b/a;

    .line 5
    new-instance v2, Le/a/l4/d;

    invoke-direct {v2, v0, p2, p3}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    iput-object v2, p0, Le/a/h/f/g;->c:Le/a/l4/d;

    .line 6
    move-object p2, p1

    check-cast p2, Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object p2, p0, Le/a/h/f/g;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    move-object v3, p1

    move-object v4, p4

    move-object v5, p0

    .line 7
    invoke-static/range {v3 .. v8}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 9
    invoke-virtual {p2, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 10
    invoke-virtual {p2, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/a;)V

    return-void
.end method

.method public static final N4(Le/a/h/f/g;Lcom/truecaller/common/ui/listitem/ListItemX$Action;)Lcom/truecaller/calling/ActionType;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/truecaller/calling/ActionType;->VOIP_CALL:Lcom/truecaller/calling/ActionType;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/truecaller/calling/ActionType;->SMS:Lcom/truecaller/calling/ActionType;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p0, Lcom/truecaller/calling/ActionType;->CELLULAR_CALL:Lcom/truecaller/calling/ActionType;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Le/a/h/f/g;->f:Le/a/h/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Le/a/h/f/g;->f:Le/a/h/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/h/f/g;->f:Le/a/h/m;

    .line 1
    iget-object v0, v0, Le/a/h/e0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public H()I
    .locals 1

    iget-object v0, p0, Le/a/h/f/g;->f:Le/a/h/m;

    .line 1
    iget-object v0, v0, Le/a/h/m;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0802a5

    :goto_0
    return v0
.end method

.method public O(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V
    .locals 2

    const-string v0, "actionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/f/g;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    new-instance v1, Le/a/h/f/g$a;

    invoke-direct {v1, p0, p1}, Le/a/h/f/g$a;-><init>(Le/a/h/f/g;Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->m1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    return-void
.end method

.method public O1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V
    .locals 2

    const-string v0, "actionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/f/g;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    new-instance v1, Le/a/h/f/g$b;

    invoke-direct {v1, p0, p1}, Le/a/h/f/g$b;-><init>(Le/a/h/f/g;Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->j1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    return-void
.end method

.method public b3(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/f/g;->b:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    const-string v2, "itemView.context"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 15

    const-string v0, "subTitle"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/h/f/g;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7fe

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Le/a/h/f/g;->f:Le/a/h/m;

    invoke-virtual {v0, p1}, Le/a/h/m;->n(Ljava/lang/String;)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 8

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/h/f/g;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Le/a/h/f/g;->f:Le/a/h/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Le/a/h/f/g;->f:Le/a/h/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public z3(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "availabilityIdentifier"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/f/g;->c:Le/a/l4/d;

    invoke-virtual {v0, p1}, Le/a/l4/d;->Lj(Ljava/util/Set;)V

    return-void
.end method
