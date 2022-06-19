.class public final Le/a/d/d/a/a/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/e/z0$a;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public final h:Le/a/p5/i0;

.field public final i:Le/a/b0/a/b/a;

.field public final j:Le/a/l4/d;

.field public final k:Le/a/o2/m;


# direct methods
.method public constructor <init>(Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Landroid/view/View;)V
    .locals 3

    const-string v0, "eventReceiver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/d/d/a/a/a/a;->k:Le/a/o2/m;

    .line 2
    new-instance p1, Le/a/d/d/a/a/a/a$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Le/a/d/d/a/a/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/d/a/a/a/a;->b:Ls1/g;

    .line 3
    new-instance p1, Le/a/d/d/a/a/a/a$a;

    const/4 v1, 0x1

    invoke-direct {p1, v1, p0}, Le/a/d/d/a/a/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/d/a/a/a/a;->c:Ls1/g;

    .line 4
    new-instance p1, Le/a/d/d/a/a/a/a$b;

    invoke-direct {p1, v1, p0}, Le/a/d/d/a/a/a/a$b;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/d/a/a/a/a;->d:Ls1/g;

    .line 5
    new-instance p1, Le/a/d/d/a/a/a/a$b;

    invoke-direct {p1, v0, p0}, Le/a/d/d/a/a/a/a$b;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/d/a/a/a/a;->e:Ls1/g;

    .line 6
    new-instance p1, Le/a/d/d/a/a/a/a$e;

    invoke-direct {p1, p0}, Le/a/d/d/a/a/a/a$e;-><init>(Le/a/d/d/a/a/a/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/d/a/a/a/a;->f:Ls1/g;

    const p1, 0x7f0a0b2a

    .line 7
    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p4, "view.findViewById(R.id.list_item)"

    invoke-static {p1, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object p1, p0, Le/a/d/d/a/a/a/a;->g:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 8
    new-instance p4, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "listItemX.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p4, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Le/a/d/d/a/a/a/a;->h:Le/a/p5/i0;

    .line 9
    new-instance v1, Le/a/b0/a/b/a;

    invoke-direct {v1, p4}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v1, p0, Le/a/d/d/a/a/a/a;->i:Le/a/b0/a/b/a;

    .line 10
    new-instance v2, Le/a/l4/d;

    invoke-direct {v2, p4, p2, p3}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    iput-object v2, p0, Le/a/d/d/a/a/a/a;->j:Le/a/l4/d;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 13
    invoke-virtual {p1, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/a;)V

    .line 14
    new-instance p2, Le/a/d/d/a/a/a/a$c;

    invoke-direct {p2, p0}, Le/a/d/d/a/a/a/a$c;-><init>(Le/a/d/d/a/a/a/a;)V

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/listitem/ListItemX;->setOnAvatarClickListener(Ls1/z/b/l;)V

    .line 15
    new-instance p2, Le/a/d/d/a/a/a/a$d;

    invoke-direct {p2, p0}, Le/a/d/d/a/a/a/a$d;-><init>(Le/a/d/d/a/a/a/a;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/d/a/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public N4(Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d/d/a/a/a/a;->g:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 3
    :cond_1
    sget-object v2, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->VOICE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    invoke-virtual {v2}, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->getDrawableResId()I

    move-result v2

    goto :goto_1

    :cond_2
    const v2, 0x7f080697

    goto :goto_1

    :cond_3
    const v2, 0x7f08068b

    .line 4
    :goto_1
    new-instance v3, Le/a/d/d/a/a/a/a$f;

    invoke-direct {v3, p0, p1}, Le/a/d/d/a/a/a/a$f;-><init>(Le/a/d/d/a/a/a/a;Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;)V

    invoke-virtual {v0, v2, v3}, Lcom/truecaller/common/ui/listitem/ListItemX;->l1(ILs1/z/b/l;)V

    if-nez p1, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    iget-object p1, p0, Le/a/d/d/a/a/a/a;->f:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    iget-object v0, p0, Le/a/d/d/a/a/a/a;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 9
    :cond_6
    iget-object p1, p0, Le/a/d/d/a/a/a/a;->f:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    iget-object v0, p0, Le/a/d/d/a/a/a/a;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d/d/a/a/a/a;->a:Ljava/lang/String;

    return-void
.end method
