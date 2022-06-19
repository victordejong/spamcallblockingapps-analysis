.class public final Le/a/h/b/d/a/b/r;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/s;
.implements Le/a/h/b/d/a/b/u;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Le/a/p5/i0;

.field public final d:Le/a/b0/a/b/a;

.field public final e:Le/a/l4/d;

.field public final f:Landroid/view/View;

.field public final synthetic g:Le/a/h/u;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;)V
    .locals 9

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

    .line 2
    new-instance v0, Le/a/h/u;

    invoke-direct {v0, p1}, Le/a/h/u;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Le/a/h/b/d/a/b/r;->g:Le/a/h/u;

    iput-object p1, p0, Le/a/h/b/d/a/b/r;->f:Landroid/view/View;

    const v0, 0x7f0a0b2b

    .line 3
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/b/d/a/b/r;->a:Ls1/g;

    const v0, 0x7f0a07b3

    .line 4
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/b/d/a/b/r;->b:Ls1/g;

    .line 5
    new-instance v0, Le/a/p5/i0;

    invoke-virtual {p0}, Le/a/h/b/d/a/b/r;->N4()Lcom/truecaller/common/ui/listitem/ListItemX;

    move-result-object v1

    const-string v2, "listItemX"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "listItemX.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/h/b/d/a/b/r;->c:Le/a/p5/i0;

    .line 6
    new-instance v1, Le/a/b0/a/b/a;

    invoke-direct {v1, v0}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v1, p0, Le/a/h/b/d/a/b/r;->d:Le/a/b0/a/b/a;

    .line 7
    new-instance v2, Le/a/l4/d;

    invoke-direct {v2, v0, p3, p4}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    iput-object v2, p0, Le/a/h/b/d/a/b/r;->e:Le/a/l4/d;

    .line 8
    invoke-virtual {p0}, Le/a/h/b/d/a/b/r;->N4()Lcom/truecaller/common/ui/listitem/ListItemX;

    move-result-object p3

    .line 9
    new-instance p4, Le/a/h/b/d/a/b/r$a;

    invoke-direct {p4, p0, p2}, Le/a/h/b/d/a/b/r$a;-><init>(Le/a/h/b/d/a/b/r;Le/a/o2/m;)V

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    move-object v3, p3

    move-object v4, p2

    move-object v5, p0

    .line 10
    invoke-static/range {v3 .. v8}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 11
    invoke-virtual {p3, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 12
    invoke-virtual {p3, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/a;)V

    .line 13
    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;

    const/4 p3, 0x0

    .line 14
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 15
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f0406de

    invoke-static {p3, p4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->setThemeColor(I)V

    .line 16
    new-instance p3, Le/a/h/b/d/a/b/s;

    invoke-direct {p3, p0, p2}, Le/a/h/b/d/a/b/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$c0;Le/a/o2/m;)V

    invoke-virtual {p1, p3}, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->setFlashProgressFinishListener(Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;)V

    return-void
.end method


# virtual methods
.method public G0(Le/a/h/t;)V
    .locals 1

    iget-object v0, p0, Le/a/h/b/d/a/b/r;->g:Le/a/h/u;

    invoke-virtual {v0, p1}, Le/a/h/u;->G0(Le/a/h/t;)V

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 7

    const-string v0, "timestamp"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/b/r;->N4()Lcom/truecaller/common/ui/listitem/ListItemX;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/truecaller/common/ui/listitem/ListItemX;->v1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZILjava/lang/Object;)V

    return-void
.end method

.method public final N4()Lcom/truecaller/common/ui/listitem/ListItemX;
    .locals 1

    iget-object v0, p0, Le/a/h/b/d/a/b/r;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    return-object v0
.end method

.method public a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "avatarXConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/b/r;->d:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/b/r;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/b/r;->e:Le/a/l4/d;

    invoke-virtual {v0, p1}, Le/a/l4/d;->Kj(Ljava/lang/String;)V

    return-void
.end method

.method public j2(Le/a/h/b/d/a/b/a;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "listItemXSubtitle"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/h/b/d/a/b/r;->N4()Lcom/truecaller/common/ui/listitem/ListItemX;

    move-result-object v2

    .line 2
    iget-object v3, v0, Le/a/h/b/d/a/b/a;->a:Ljava/lang/CharSequence;

    .line 3
    iget-object v4, v0, Le/a/h/b/d/a/b/a;->d:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 4
    iget-object v5, v0, Le/a/h/b/d/a/b/a;->b:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object v7, v0, Le/a/h/b/d/a/b/a;->e:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 6
    iget-object v6, v0, Le/a/h/b/d/a/b/a;->c:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object v8, v0, Le/a/h/b/d/a/b/a;->f:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7c0

    const/4 v15, 0x0

    .line 8
    invoke-static/range {v2 .. v15}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/b/r;->N4()Lcom/truecaller/common/ui/listitem/ListItemX;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->w1(Ljava/lang/CharSequence;ZII)V

    return-void
.end method
