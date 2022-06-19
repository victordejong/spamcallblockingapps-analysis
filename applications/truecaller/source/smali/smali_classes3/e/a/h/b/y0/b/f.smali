.class public final Le/a/h/b/y0/b/f;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/y0/b/h;


# instance fields
.field public final a:Le/a/p5/i0;

.field public final b:Le/a/b0/a/b/a;

.field public final c:Le/a/l4/d;

.field public final d:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public final e:Le/a/o2/m;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/listitem/ListItemX;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;)V
    .locals 8

    const-string v2, "listItemX"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventReceiver"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "availabilityManager"

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "clock"

    invoke-static {p4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/h/b/y0/b/f;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object p2, p0, Le/a/h/b/y0/b/f;->e:Le/a/o2/m;

    .line 2
    new-instance v2, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "listItemX.context"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Le/a/h/b/y0/b/f;->a:Le/a/p5/i0;

    .line 3
    new-instance v6, Le/a/b0/a/b/a;

    invoke-direct {v6, v2}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v6, p0, Le/a/h/b/y0/b/f;->b:Le/a/b0/a/b/a;

    .line 4
    new-instance v7, Le/a/l4/d;

    invoke-direct {v7, v2, p3, p4}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    iput-object v7, p0, Le/a/h/b/y0/b/f;->c:Le/a/l4/d;

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->f1()V

    .line 6
    new-instance v4, Le/a/h/b/y0/b/f$a;

    invoke-direct {v4, p0}, Le/a/h/b/y0/b/f$a;-><init>(Le/a/h/b/y0/b/f;)V

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->e1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ls1/z/b/a;I)V

    const/4 v4, 0x0

    const/16 v5, 0xc

    .line 7
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 8
    invoke-virtual {p1, v6}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 9
    invoke-virtual {p1, v7}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/a;)V

    return-void
.end method


# virtual methods
.method public K(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/y0/b/f;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->y1(Z)V

    return-void
.end method

.method public V(Lcom/truecaller/calling/ActionType;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/b/y0/b/f;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActionType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not mapped for Call log item"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 4
    :cond_2
    sget-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->PROFILE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 5
    :goto_1
    new-instance v2, Le/a/h/b/y0/b/f$b;

    invoke-direct {v2, p0, p1}, Le/a/h/b/y0/b/f$b;-><init>(Le/a/h/b/y0/b/f;Lcom/truecaller/calling/ActionType;)V

    invoke-virtual {v0, v1, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->j1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    return-void
.end method

.method public a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "avatarXConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/y0/b/f;->b:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public i2(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/y0/b/f;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->z1(Z)V

    return-void
.end method

.method public m(Ljava/util/Set;)V
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
    iget-object v0, p0, Le/a/h/b/y0/b/f;->c:Le/a/l4/d;

    invoke-virtual {v0, p1}, Le/a/l4/d;->Lj(Ljava/util/Set;)V

    return-void
.end method

.method public q(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/h/b/y0/b/f;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    new-instance v0, Le/a/h/b/y0/b/f$c;

    invoke-direct {v0, p0}, Le/a/h/b/y0/b/f$c;-><init>(Le/a/h/b/y0/b/f;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/listitem/ListItemX;->setOnAvatarClickListener(Ls1/z/b/l;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/h/b/y0/b/f;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    sget-object v0, Le/a/h/b/y0/b/f$d;->b:Le/a/h/b/y0/b/f$d;

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/listitem/ListItemX;->setOnAvatarClickListener(Ls1/z/b/l;)V

    :goto_0
    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/y0/b/f;->b:Le/a/b0/a/b/a;

    .line 2
    invoke-virtual {v0, p1}, Le/a/b0/a/b/a;->pk(Z)V

    return-void
.end method

.method public t4(Le/a/h/b/y0/b/i$a;)V
    .locals 8

    const-string v0, "searchHighlightableText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/h/b/y0/b/f;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 2
    iget-object v2, p1, Le/a/h/b/y0/b/i$a;->a:Ljava/lang/CharSequence;

    .line 3
    iget v4, p1, Le/a/h/b/y0/b/i$a;->b:I

    .line 4
    iget v5, p1, Le/a/h/b/y0/b/i$a;->c:I

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 5
    invoke-static/range {v1 .. v7}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public u1(Le/a/h/b/y0/b/i$a;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "searchHighlightableText"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Le/a/h/b/y0/b/f;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 2
    iget-object v3, v0, Le/a/h/b/y0/b/i$a;->a:Ljava/lang/CharSequence;

    .line 3
    iget-object v4, v0, Le/a/h/b/y0/b/i$a;->d:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 4
    iget v9, v0, Le/a/h/b/y0/b/i$a;->b:I

    .line 5
    iget v10, v0, Le/a/h/b/y0/b/i$a;->c:I

    .line 6
    iget-object v5, v0, Le/a/h/b/y0/b/i$a;->e:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x738

    const/4 v15, 0x0

    .line 7
    invoke-static/range {v2 .. v15}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method
