.class public final Le/a/h/g/a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/g/e;


# instance fields
.field public final a:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public final b:Ls1/g;

.field public final c:Le/a/b0/a/b/a;

.field public final d:Le/a/p5/i0;

.field public final e:Le/a/l4/d;

.field public final f:Le/a/k0/n/e/g;

.field public final g:Landroid/view/View;

.field public final h:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Le/a/k0/n/e/e;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/h/g/a;->g:Landroid/view/View;

    iput-object p2, p0, Le/a/h/g/a;->h:Le/a/o2/m;

    const v0, 0x7f0a0b2b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.list_item_x)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object v0, p0, Le/a/h/g/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 3
    new-instance v1, Le/a/h/g/a$d;

    invoke-direct {v1, p0}, Le/a/h/g/a$d;-><init>(Le/a/h/g/a;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/h/g/a;->b:Ls1/g;

    .line 4
    new-instance v1, Le/a/b0/a/b/a;

    new-instance v2, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "view.context"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v1, p0, Le/a/h/g/a;->c:Le/a/b0/a/b/a;

    .line 5
    new-instance p1, Le/a/p5/i0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "listItem.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Le/a/h/g/a;->d:Le/a/p5/i0;

    .line 6
    new-instance v2, Le/a/l4/d;

    invoke-direct {v2, p1, p3, p4}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    iput-object v2, p0, Le/a/h/g/a;->e:Le/a/l4/d;

    .line 7
    new-instance p1, Le/a/k0/n/e/g;

    new-instance p3, Le/a/h/g/a$c;

    invoke-direct {p3, p0}, Le/a/h/g/a$c;-><init>(Le/a/h/g/a;)V

    invoke-direct {p1, p5, p3}, Le/a/k0/n/e/g;-><init>(Le/a/k0/n/e/e;Ls1/z/b/l;)V

    iput-object p1, p0, Le/a/h/g/a;->f:Le/a/k0/n/e/g;

    .line 8
    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/a;)V

    .line 10
    new-instance p1, Le/a/h/g/a$a;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p0, p0}, Le/a/h/g/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p3, 0x7f0805b6

    invoke-virtual {v0, p3, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->i1(ILs1/z/b/l;)V

    .line 11
    new-instance p1, Le/a/h/g/a$a;

    const/4 p3, 0x1

    invoke-direct {p1, p3, p0, p0}, Le/a/h/g/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p3, 0x7f0806a6

    invoke-virtual {v0, p3, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->l1(ILs1/z/b/l;)V

    .line 12
    new-instance v6, Le/a/h/g/a$b;

    invoke-direct {v6, p0, p0}, Le/a/h/g/a$b;-><init>(Le/a/h/g/a;Le/a/h/g/a;)V

    const/4 v5, 0x0

    const/4 v7, 0x4

    move-object v2, v0

    move-object v3, p2

    move-object v4, p0

    invoke-static/range {v2 .. v7}, Le/m/d/y/n;->e1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ls1/z/b/a;I)V

    const/4 v6, 0x0

    const/16 v7, 0xc

    .line 13
    invoke-static/range {v2 .. v7}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static final N4(Le/a/h/g/a;Le/a/h/g/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/h/g/a;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;

    .line 2
    iget-object v1, p0, Le/a/h/g/a;->f:Le/a/k0/n/e/g;

    invoke-virtual {v0, v1}, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;->setPresenter(Le/a/k0/n/e/d;)V

    .line 3
    iget-object v0, p0, Le/a/h/g/a;->f:Le/a/k0/n/e/g;

    .line 4
    iget-object v1, v0, Le/a/k0/n/e/g;->e:Le/a/k0/n/e/e;

    .line 5
    iget-wide v2, v0, Le/a/k0/n/e/g;->d:J

    .line 6
    invoke-interface {v1, v2, v3, v0}, Le/a/k0/n/e/e;->d(JLe/a/k0/n/e/b;)V

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Le/a/k0/n/e/g;->b:Z

    .line 8
    iget-object p0, p0, Le/a/h/g/a;->h:Le/a/o2/m;

    new-instance v6, Le/a/o2/h;

    sget-object v0, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->PLAY_CALL_RECORDING:Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;

    invoke-virtual {v0}, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p0, v6}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method


# virtual methods
.method public C2(Ljava/lang/Long;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Le/a/h/g/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    iget-object v4, v0, Le/a/h/g/a;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Le/a/b0/q/m;->e(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const-string v1, "DateTimeUtils.getFormatt\u2026uration(view.context, it)"

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7fe

    const/16 v16, 0x0

    invoke-static/range {v3 .. v16}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public K(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/g/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->y1(Z)V

    return-void
.end method

.method public R1(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/g/a;->f:Le/a/k0/n/e/g;

    .line 2
    iput-wide p1, v0, Le/a/k0/n/e/g;->d:J

    .line 3
    invoke-virtual {v0}, Le/a/k0/n/e/g;->Hj()V

    return-void
.end method

.method public T(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/h/g/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Le/a/b0/q/m;->i(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/truecaller/common/ui/listitem/ListItemX;->v1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "avatar"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/g/a;->c:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/g/a;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/g/a;->e:Le/a/l4/d;

    invoke-virtual {v0, p1}, Le/a/l4/d;->Kj(Ljava/lang/String;)V

    return-void
.end method

.method public q(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/h/g/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    new-instance v0, Le/a/h/g/a$e;

    invoke-direct {v0, p0}, Le/a/h/g/a$e;-><init>(Le/a/h/g/a;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/listitem/ListItemX;->setOnAvatarClickListener(Ls1/z/b/l;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/h/g/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    sget-object v0, Le/a/h/g/a$f;->b:Le/a/h/g/a$f;

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/listitem/ListItemX;->setOnAvatarClickListener(Ls1/z/b/l;)V

    :goto_0
    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/g/a;->c:Le/a/b0/a/b/a;

    .line 2
    invoke-virtual {v0, p1}, Le/a/b0/a/b/a;->pk(Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 8

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/h/g/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method
