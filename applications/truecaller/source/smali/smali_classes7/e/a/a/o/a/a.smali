.class public final Le/a/a/o/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/o/a/c;


# instance fields
.field public final a:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public final b:Le/a/b0/a/b/a;

.field public final c:Le/a/p5/i0;

.field public final d:Le/a/l4/d;

.field public final e:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/a/o/a/a;->e:Le/a/o2/m;

    const v0, 0x7f0a0b2b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.common.ui.listitem.ListItemX"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object v0, p0, Le/a/a/o/a/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 3
    new-instance v1, Le/a/b0/a/b/a;

    new-instance v2, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "view.context"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v1, p0, Le/a/a/o/a/a;->b:Le/a/b0/a/b/a;

    .line 4
    new-instance p1, Le/a/p5/i0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "listItem.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Le/a/a/o/a/a;->c:Le/a/p5/i0;

    .line 5
    new-instance v2, Le/a/l4/d;

    invoke-direct {v2, p1, p3, p4}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    iput-object v2, p0, Le/a/a/o/a/a;->d:Le/a/l4/d;

    .line 6
    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/a;)V

    .line 8
    new-instance p1, Le/a/a/o/a/a$a;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p0, p0}, Le/a/a/o/a/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p3, 0x7f0805b6

    invoke-virtual {v0, p3, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->i1(ILs1/z/b/l;)V

    .line 9
    new-instance p1, Le/a/a/o/a/a$a;

    const/4 p3, 0x1

    invoke-direct {p1, p3, p0, p0}, Le/a/a/o/a/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p3, 0x7f080699

    invoke-virtual {v0, p3, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->l1(ILs1/z/b/l;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, v0

    move-object v3, p2

    move-object v4, p0

    .line 10
    invoke-static/range {v2 .. v7}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 11
    invoke-static/range {v2 .. v7}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "avatar"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/o/a/a;->b:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/o/a/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setActivated(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 15

    const-string v0, "subtitle"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/o/a/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

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

.method public p(Ljava/lang/String;)V
    .locals 7

    const-string v0, "timestamp"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/o/a/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/truecaller/common/ui/listitem/ListItemX;->v1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZILjava/lang/Object;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 8

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/o/a/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method
