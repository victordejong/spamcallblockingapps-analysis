.class public final Le/a/a/o/s/e;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/o/s/d;


# instance fields
.field public final a:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public b:Le/a/b0/a/b/a;

.field public c:Le/a/l4/d;

.field public final d:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/a/o/s/e;->d:Le/a/o2/m;

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object v1, p0, Le/a/a/o/s/e;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v2, p2

    move-object v3, p0

    .line 3
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 15

    const-string v0, "subtitle"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/o/s/e;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

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

.method public e(Le/a/l4/d;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/o/s/e;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/a;)V

    .line 2
    iput-object p1, p0, Le/a/a/o/s/e;->c:Le/a/l4/d;

    return-void
.end method

.method public i(Le/a/b0/a/b/a;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/o/s/e;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 2
    iput-object p1, p0, Le/a/a/o/s/e;->b:Le/a/b0/a/b/a;

    return-void
.end method

.method public o()Le/a/b0/a/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/o/s/e;->b:Le/a/b0/a/b/a;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 8

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/o/s/e;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public z()Le/a/l4/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/o/s/e;->c:Le/a/l4/d;

    return-object v0
.end method
