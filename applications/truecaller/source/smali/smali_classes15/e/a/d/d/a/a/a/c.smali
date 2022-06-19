.class public final Le/a/d/d/a/a/a/c;
.super Le/a/d/d/a/a/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/o2/l;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Le/a/d/d/a/t;

.field public e:Z


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/d/d/a/a/a/b;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1210ca

    .line 2
    invoke-interface {p1, v4, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v3, 0x7f121088

    .line 3
    invoke-interface {p1, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resourceProvider.getStri\u2026R.string.voip_text)\n    )"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Le/a/d/d/a/a/a/c;->b:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    .line 4
    invoke-interface {p1, v4, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f121086

    .line 5
    invoke-interface {p1, v1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/d/d/a/a/a/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Le/a/d/d/a/t;Z)V
    .locals 1

    const-string v0, "presenterProxy"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/d/d/a/a/a/c;->d:Le/a/d/d/a/t;

    .line 2
    iput-boolean p2, p0, Le/a/d/d/a/a/a/c;->e:Z

    return-void
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/d/d/a/a/a/c;->d:Le/a/d/d/a/t;

    return-void
.end method

.method public final C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/d/a/a/a/c;->d:Le/a/d/d/a/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/d/a/t;->oj()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Le/a/d/d/a/a/a/a;

    const-string v3, "itemView"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d/d/c/a;

    .line 4
    iget-object v4, v3, Le/a/d/d/c/a;->b:Lcom/truecaller/data/entity/Number;

    .line 5
    invoke-static {v3}, Le/a/p5/s0/g;->I(Le/a/d/d/c/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v5

    const-string v6, "avatarXConfig"

    .line 6
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v6, v2, Le/a/d/d/a/a/a/a;->i:Le/a/b0/a/b/a;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Le/a/b0/a/b/a;->nk(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V

    .line 8
    invoke-static {v3}, Le/a/p5/s0/g;->G(Le/a/d/d/c/a;)Ljava/util/Set;

    move-result-object v5

    const-string v6, "availabilityIdentifier"

    .line 9
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v6, v2, Le/a/d/d/a/a/a/a;->j:Le/a/l4/d;

    invoke-virtual {v6, v5}, Le/a/l4/d;->Lj(Ljava/util/Set;)V

    .line 11
    iget-object v5, v3, Le/a/d/d/c/a;->c:Ljava/lang/String;

    .line 12
    invoke-static {v5}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "GUIUtils.bidiFormat(voipContact.name)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "title"

    .line 13
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v6, v2, Le/a/d/d/a/a/a/a;->g:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8, v8, v8}, Lcom/truecaller/common/ui/listitem/ListItemX;->w1(Ljava/lang/CharSequence;ZII)V

    .line 15
    iget-boolean v5, v3, Le/a/d/d/c/a;->f:Z

    if-eqz v5, :cond_1

    .line 16
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, ""

    :goto_0
    move-object v10, v5

    const-string v4, "if (voipContact.hasMulti\u2026.normalizedNumber else \"\""

    invoke-static {v10, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "subtitle"

    .line 17
    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v9, v2, Le/a/d/d/a/a/a/a;->g:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x7fe

    const/16 v22, 0x0

    invoke-static/range {v9 .. v22}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    .line 19
    iget-boolean v4, v0, Le/a/d/d/a/a/a/c;->e:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 20
    iget-boolean v4, v3, Le/a/d/d/c/a;->e:Z

    .line 21
    iget-object v6, v2, Le/a/d/d/a/a/a/a;->d:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3ee66666    # 0.45f

    if-eqz v4, :cond_2

    move v10, v8

    goto :goto_1

    :cond_2
    move v10, v9

    .line 22
    :goto_1
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 23
    iget-object v6, v2, Le/a/d/d/a/a/a/a;->e:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v8, v9

    .line 24
    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 25
    iget-boolean v4, v3, Le/a/d/d/c/a;->e:Z

    .line 26
    iget-object v6, v2, Le/a/d/d/a/a/a/a;->g:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 27
    iget-boolean v4, v3, Le/a/d/d/c/a;->e:Z

    if-nez v4, :cond_4

    goto :goto_3

    .line 28
    :cond_4
    iget-boolean v4, v3, Le/a/d/d/c/a;->d:Z

    if-nez v4, :cond_5

    .line 29
    sget-object v4, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->VOIP_ADD_TO_GROUP:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    .line 30
    sget-object v4, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->VOIP_REMOVE_FROM_GROUP:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    goto :goto_4

    :cond_6
    :goto_3
    move-object v4, v5

    .line 31
    :goto_4
    invoke-virtual {v2, v4}, Le/a/d/d/a/a/a/a;->N4(Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;)V

    goto :goto_5

    .line 32
    :cond_7
    iget-object v4, v2, Le/a/d/d/a/a/a/a;->g:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 33
    sget-object v4, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->VOIP_CALL:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    invoke-virtual {v2, v4}, Le/a/d/d/a/a/a/a;->N4(Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;)V

    :goto_5
    if-nez v1, :cond_9

    .line 34
    iget-boolean v1, v3, Le/a/d/d/c/a;->g:Z

    if-eqz v1, :cond_8

    .line 35
    iget-object v5, v0, Le/a/d/d/a/a/a/c;->b:Ljava/lang/String;

    goto :goto_6

    :cond_8
    iget-object v5, v0, Le/a/d/d/a/a/a/c;->c:Ljava/lang/String;

    goto :goto_6

    .line 36
    :cond_9
    invoke-virtual/range {p0 .. p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v4

    sub-int/2addr v1, v7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/d/c/a;

    .line 37
    iget-boolean v1, v1, Le/a/d/d/c/a;->g:Z

    iget-boolean v3, v3, Le/a/d/d/c/a;->g:Z

    xor-int/2addr v3, v7

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    .line 38
    iget-object v5, v0, Le/a/d/d/a/a/a/c;->c:Ljava/lang/String;

    .line 39
    :cond_a
    :goto_6
    iput-object v5, v2, Le/a/d/d/a/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/c/a;

    .line 2
    iget-object p1, p1, Le/a/d/d/c/a;->a:Lcom/truecaller/data/entity/Contact;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->Companion:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType$a;

    .line 2
    iget-object v1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "action"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->values()[Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 5
    aget-object v4, v0, v3

    .line 6
    invoke-virtual {v4}, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->getEventAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v0, 0x1

    if-eqz v4, :cond_9

    .line 7
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v1

    .line 9
    iget v2, p1, Le/a/o2/h;->b:I

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/d/c/a;

    .line 11
    iget-boolean v1, v1, Le/a/d/d/c/a;->d:Z

    if-eqz v1, :cond_3

    .line 12
    iget p1, p1, Le/a/o2/h;->b:I

    .line 13
    iget-object v1, p0, Le/a/d/d/a/a/a/c;->d:Le/a/d/d/a/t;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/d/c/a;

    sget-object v3, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;->CONTACTS_LIST:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;

    invoke-interface {v1, v2, p1, v3}, Le/a/d/d/a/t;->ai(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V

    goto :goto_2

    .line 14
    :cond_3
    iget p1, p1, Le/a/o2/h;->b:I

    .line 15
    iget-object v1, p0, Le/a/d/d/a/a/a/c;->d:Le/a/d/d/a/t;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/d/c/a;

    sget-object v3, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;->CONTACTS_LIST:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;

    invoke-interface {v1, v2, p1, v3}, Le/a/d/d/a/t;->Ch(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v1, p0, Le/a/d/d/a/a/a/c;->d:Le/a/d/d/a/t;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v2

    .line 17
    iget p1, p1, Le/a/o2/h;->b:I

    .line 18
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/c/a;

    invoke-interface {v1, p1}, Le/a/d/d/a/t;->wj(Le/a/d/d/c/a;)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object v1, p0, Le/a/d/d/a/a/a/c;->d:Le/a/d/d/a/t;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v2

    .line 20
    iget p1, p1, Le/a/o2/h;->b:I

    .line 21
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/c/a;

    invoke-interface {v1, p1}, Le/a/d/d/a/t;->Z5(Le/a/d/d/c/a;)V

    goto :goto_2

    .line 22
    :cond_6
    iget p1, p1, Le/a/o2/h;->b:I

    .line 23
    iget-object v1, p0, Le/a/d/d/a/a/a/c;->d:Le/a/d/d/a/t;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/d/c/a;

    sget-object v3, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;->CONTACTS_LIST:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;

    invoke-interface {v1, v2, p1, v3}, Le/a/d/d/a/t;->ai(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V

    goto :goto_2

    .line 24
    :cond_7
    iget p1, p1, Le/a/o2/h;->b:I

    .line 25
    iget-object v1, p0, Le/a/d/d/a/a/a/c;->d:Le/a/d/d/a/t;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Le/a/d/d/a/a/a/c;->C()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/d/c/a;

    sget-object v3, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;->CONTACTS_LIST:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;

    invoke-interface {v1, v2, p1, v3}, Le/a/d/d/a/t;->Ch(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V

    :cond_8
    :goto_2
    move v2, v0

    :cond_9
    return v2
.end method
