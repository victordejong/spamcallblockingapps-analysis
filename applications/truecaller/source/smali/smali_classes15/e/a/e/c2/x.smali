.class public abstract Le/a/e/c2/x;
.super Le/a/e/c2/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Le/a/e/c2/t$b;",
        "C::",
        "Landroid/database/Cursor;",
        ">",
        "Le/a/e/c2/t<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field public b:Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/e/c2/t;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public e(Le/a/e/c2/t$b;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2
    iget-object p2, p0, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    move-object v0, p0

    check-cast v0, Le/a/e/c2/j0;

    .line 3
    check-cast p2, Le/a/l0/u/d/b;

    .line 4
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    .line 5
    iget-object v5, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v5, :cond_a

    .line 6
    move-object v6, p1

    check-cast v6, Le/a/w4/s/k0;

    .line 7
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    .line 8
    iget-object v7, v0, Le/a/e/c2/j0;->e:Le/a/g5/p;

    invoke-interface {v7, v5}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object v7

    const/4 v8, 0x7

    .line 9
    invoke-static {v5, v4, v4, v2, v8}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v8

    .line 10
    invoke-virtual {v6, v8}, Le/a/w4/s/k0;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    const-string v8, "$this$getAvailabilityIdentifier"

    .line 11
    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v2

    .line 13
    :goto_1
    invoke-virtual {v6, v8}, Le/a/w4/s/k0;->j(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v8

    .line 15
    :goto_2
    invoke-virtual {v6, v8}, Le/a/w4/s/k0;->setTitle(Ljava/lang/String;)V

    .line 16
    iget-object v8, v6, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v9, 0x2

    invoke-static {v8, v2, v4, v9, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->r1(Lcom/truecaller/common/ui/listitem/ListItemX;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V

    .line 17
    invoke-static {v5}, Le/a/n/g0;->c0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 18
    iget-object v8, v6, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v8, v4}, Lcom/truecaller/common/ui/listitem/ListItemX;->y1(Z)V

    goto :goto_3

    .line 19
    :cond_3
    iget-object v8, v0, Le/a/e/c2/j0;->h:Le/a/z2/a;

    invoke-interface {v8, v5}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 20
    iget-object v8, v6, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v8, v3}, Lcom/truecaller/common/ui/listitem/ListItemX;->z1(Z)V

    goto :goto_3

    .line 21
    :cond_4
    iget-object v8, v0, Le/a/e/c2/j0;->h:Le/a/z2/a;

    invoke-interface {v8, v5}, Le/a/z2/a;->a(Lcom/truecaller/data/entity/Contact;)Z

    move-result v8

    .line 22
    iget-object v10, v6, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v10, v8}, Lcom/truecaller/common/ui/listitem/ListItemX;->y1(Z)V

    .line 23
    :goto_3
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 24
    iget-object v7, v0, Le/a/e/c2/j0;->n:Le/a/a0/v;

    invoke-interface {v7, v5}, Le/a/a0/v;->b(Lcom/truecaller/data/entity/Contact;)Le/a/a0/u;

    move-result-object v7

    .line 25
    iget-object v8, v7, Le/a/a0/u;->a:Ljava/lang/String;

    .line 26
    iget-object v7, v7, Le/a/a0/u;->b:Lcom/truecaller/data/entity/SpamCategoryModel;

    .line 27
    invoke-virtual {v6, v8, v2, v7}, Le/a/w4/s/k0;->Z3(Ljava/lang/String;Ljava/lang/Integer;Lcom/truecaller/data/entity/SpamCategoryModel;)V

    goto :goto_5

    :cond_5
    if-eqz v7, :cond_6

    .line 28
    invoke-virtual {v6, v7}, Le/a/w4/s/k0;->M1(Le/a/b0/p/c;)V

    goto :goto_5

    .line 29
    :cond_6
    iget-object v7, v0, Le/a/e/c2/j0;->d:Landroid/content/Context;

    .line 30
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 31
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v8

    if-nez v8, :cond_7

    .line 32
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 33
    :cond_7
    new-instance v8, Le/a/k3/j/b;

    invoke-direct {v8, v7}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Le/a/k3/j/b;->f(J)Lcom/truecaller/data/entity/Contact;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 35
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Contact;->z()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_8
    move-object v7, v2

    .line 36
    :goto_4
    invoke-virtual {v6, v7}, Le/a/w4/s/k0;->H2(Ljava/lang/String;)V

    .line 37
    :goto_5
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-boolean v7, v0, Le/a/e/c2/j0;->m:Z

    if-nez v7, :cond_9

    const-string v7, "contact"

    .line 38
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v7, v6, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    sget-object v8, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->CALL:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    new-instance v9, Le/a/w4/s/k0$c;

    invoke-direct {v9, v6, v5}, Le/a/w4/s/k0$c;-><init>(Le/a/w4/s/k0;Lcom/truecaller/data/entity/Contact;)V

    invoke-virtual {v7, v8, v9}, Lcom/truecaller/common/ui/listitem/ListItemX;->j1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    goto :goto_6

    .line 40
    :cond_9
    iget-object v5, v6, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-static {v5, v2, v2, v9, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->k1(Lcom/truecaller/common/ui/listitem/ListItemX;Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;ILjava/lang/Object;)V

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    move v3, v4

    .line 41
    :goto_7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 42
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    if-eqz v3, :cond_c

    move v6, v4

    goto :goto_8

    :cond_c
    const/16 v6, 0x8

    :goto_8
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_d

    .line 43
    iget v5, v0, Le/a/e/c2/j0;->i:I

    goto :goto_9

    :cond_d
    move v5, v4

    :goto_9
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v3, :cond_e

    const/4 v4, -0x1

    .line 44
    :cond_e
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    check-cast p1, Le/a/w4/s/k0;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, v0, Le/a/e/c2/j0;->d:Landroid/content/Context;

    const v0, 0x7f120be5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    :cond_f
    iget-object p1, p1, Le/a/w4/s/k0;->h:Le/a/h/d0;

    .line 48
    iput-object v2, p1, Le/a/h/e0;->a:Ljava/lang/String;

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget v0, p0, Le/a/e/c2/x;->c:I

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    iget-object p1, p0, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    iget v0, p0, Le/a/e/c2/x;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
