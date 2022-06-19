.class public final Le/a/h/f/l;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/f/j;",
        ">;",
        "Le/a/h/f/i;"
    }
.end annotation


# instance fields
.field public final b:Le/a/h/f/h;

.field public final c:Le/a/h/f/k0;

.field public final d:Le/a/d/c0/s1;

.field public final e:Z

.field public final f:Le/a/b0/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/h/f/h;Le/a/h/f/k0;Le/a/d/c0/s1;ZLe/a/b0/a/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h/f/h;",
            "Le/a/h/f/k0;",
            "Le/a/d/c0/s1;",
            "Z",
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sortedContactsProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfigProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/h/f/l;->b:Le/a/h/f/h;

    iput-object p2, p0, Le/a/h/f/l;->c:Le/a/h/f/k0;

    iput-object p3, p0, Le/a/h/f/l;->d:Le/a/d/c0/s1;

    iput-boolean p4, p0, Le/a/h/f/l;->e:Z

    iput-object p5, p0, Le/a/h/f/l;->f:Le/a/b0/a/b/b;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/f/l;->b:Le/a/h/f/h;

    invoke-interface {v0}, Le/a/h/f/h;->z()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Le/a/h/f/j;

    const-string v3, "itemView"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/h/f/l;->A()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    .line 4
    iget-object v4, v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->a:Lcom/truecaller/data/entity/Contact;

    .line 5
    iget-object v5, v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->b:Le/a/k3/l/b;

    .line 6
    iget-object v6, v0, Le/a/h/f/l;->f:Le/a/b0/a/b/b;

    invoke-interface {v6, v4}, Le/a/b0/a/b/b;->a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v6

    .line 7
    invoke-interface {v2, v6}, Le/a/h/f/j;->b3(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 8
    invoke-static {v4}, Le/a/c/p/a;->m0(Lcom/truecaller/data/entity/Contact;)Ljava/util/Set;

    move-result-object v6

    .line 9
    invoke-interface {v2, v6}, Le/a/h/f/j;->z3(Ljava/util/Set;)V

    .line 10
    iget-object v6, v5, Le/a/k3/l/b;->a:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    .line 11
    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v8

    :goto_1
    const/4 v10, 0x0

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v10

    .line 12
    :goto_2
    iget-object v5, v5, Le/a/k3/l/b;->b:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 13
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    move v9, v7

    goto :goto_4

    :cond_4
    :goto_3
    move v9, v8

    :goto_4
    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v10

    .line 14
    :goto_5
    iget-object v9, v4, Lcom/truecaller/data/entity/Contact;->s:Lcom/truecaller/data/entity/StructuredName;

    if-eqz v9, :cond_6

    .line 15
    invoke-virtual {v9}, Lcom/truecaller/data/entity/StructuredName;->getMiddleName()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_6
    move-object v9, v10

    :goto_6
    if-eqz v9, :cond_8

    invoke-static {v9}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_7

    :cond_7
    move v11, v7

    goto :goto_8

    :cond_8
    :goto_7
    move v11, v8

    :goto_8
    if-nez v11, :cond_9

    goto :goto_9

    :cond_9
    move-object v9, v10

    .line 16
    :goto_9
    iget-object v11, v0, Le/a/h/f/l;->b:Le/a/h/f/h;

    invoke-interface {v11}, Le/a/h/f/h;->y()Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_b

    if-ne v11, v8, :cond_a

    new-array v11, v12, [Ljava/lang/String;

    aput-object v5, v11, v7

    new-array v5, v12, [Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v9, v5, v8

    .line 17
    invoke-static {v5}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3e

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3e

    const-string v13, " "

    .line 18
    invoke-static/range {v12 .. v19}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    .line 19
    invoke-static {v11}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, ", "

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v9

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move/from16 v20, v22

    .line 20
    invoke-static/range {v13 .. v20}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v8

    if-eqz v6, :cond_c

    goto :goto_a

    .line 22
    :cond_a
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_b
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    aput-object v6, v11, v7

    aput-object v9, v11, v8

    aput-object v5, v11, v12

    .line 23
    invoke-static {v11}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const-string v14, " "

    .line 24
    invoke-static/range {v13 .. v20}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v8

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    move-object v5, v10

    :goto_a
    if-eqz v5, :cond_d

    goto :goto_b

    .line 26
    :cond_d
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v5

    const-string v6, "contact.displayNameOrNumber"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    :goto_b
    invoke-static {v5}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "GUIUtils.bidiFormat(getC\u2026me(contact, sortingData))"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Le/a/h/f/j;->setTitle(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->C()Ljava/lang/String;

    move-result-object v5

    const-string v6, "it"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e

    move v6, v8

    goto :goto_c

    :cond_e
    move v6, v7

    :goto_c
    if-eqz v6, :cond_f

    goto :goto_d

    :cond_f
    move-object v5, v10

    :goto_d
    const-string v6, ""

    if-eqz v5, :cond_10

    goto :goto_13

    .line 29
    :cond_10
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v5

    if-nez v5, :cond_11

    move-object v5, v6

    goto :goto_e

    .line 30
    :cond_11
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Address;->getShortDisplayableAddress()Ljava/lang/String;

    move-result-object v5

    :goto_e
    if-eqz v5, :cond_13

    .line 31
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_12

    goto :goto_f

    :cond_12
    move v5, v7

    goto :goto_10

    :cond_13
    :goto_f
    move v5, v8

    :goto_10
    if-ne v5, v8, :cond_15

    .line 32
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    :cond_14
    move-object v5, v10

    goto :goto_11

    :cond_15
    if-nez v5, :cond_1f

    .line 33
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v5

    if-nez v5, :cond_16

    move-object v5, v6

    goto :goto_11

    .line 34
    :cond_16
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Address;->getShortDisplayableAddress()Ljava/lang/String;

    move-result-object v5

    :goto_11
    if-eqz v5, :cond_18

    .line 35
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_17

    move v9, v8

    goto :goto_12

    :cond_17
    move v9, v7

    :goto_12
    if-eqz v9, :cond_18

    goto :goto_13

    :cond_18
    move-object v5, v10

    :goto_13
    if-eqz v5, :cond_19

    move-object v6, v5

    .line 36
    :cond_19
    invoke-interface {v2, v6}, Le/a/h/f/j;->k(Ljava/lang/String;)V

    sub-int/2addr v1, v8

    .line 37
    invoke-virtual/range {p0 .. p0}, Le/a/h/f/l;->getItemCount()I

    move-result v5

    if-gez v1, :cond_1a

    goto :goto_14

    :cond_1a
    if-lt v5, v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Le/a/h/f/l;->A()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    .line 38
    iget-object v1, v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->b:Le/a/k3/l/b;

    .line 39
    iget-object v1, v1, Le/a/k3/l/b;->c:Ljava/lang/String;

    .line 40
    iget-object v5, v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->b:Le/a/k3/l/b;

    .line 41
    iget-object v5, v5, Le/a/k3/l/b;->c:Ljava/lang/String;

    .line 42
    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v7, v8

    :cond_1b
    :goto_14
    if-eqz v7, :cond_1c

    goto :goto_15

    .line 43
    :cond_1c
    iget-object v1, v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->b:Le/a/k3/l/b;

    .line 44
    iget-object v10, v1, Le/a/k3/l/b;->c:Ljava/lang/String;

    if-eqz v10, :cond_1d

    goto :goto_15

    :cond_1d
    const-string v10, "?"

    .line 45
    :goto_15
    invoke-interface {v2, v10}, Le/a/e/z0$a;->n(Ljava/lang/String;)V

    .line 46
    iget-boolean v1, v0, Le/a/h/f/l;->e:Z

    if-nez v1, :cond_1e

    .line 47
    sget-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->MESSAGE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 48
    invoke-interface {v2, v1}, Le/a/h/f/j;->O(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    .line 49
    iget-object v1, v0, Le/a/h/f/l;->d:Le/a/d/c0/s1;

    .line 50
    new-instance v3, Le/a/h/f/k;

    invoke-direct {v3, v2}, Le/a/h/f/k;-><init>(Le/a/h/f/j;)V

    .line 51
    invoke-interface {v1, v4, v3}, Le/a/d/c0/s1;->g(Lcom/truecaller/data/entity/Contact;Le/a/d/c0/l0;)V

    :cond_1e
    return-void

    .line 52
    :cond_1f
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/f/l;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/f/l;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    .line 2
    iget-object p1, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->a:Lcom/truecaller/data/entity/Contact;

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
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v1, "ItemEvent.CLICKED"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/h/f/l;->c:Le/a/h/f/k0;

    invoke-virtual {p0}, Le/a/h/f/l;->A()Ljava/util/List;

    move-result-object v1

    .line 4
    iget v3, p1, Le/a/o2/h;->b:I

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    .line 6
    iget-object v1, v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->a:Lcom/truecaller/data/entity/Contact;

    .line 7
    invoke-interface {v0, v1}, Le/a/h/f/k0;->x2(Lcom/truecaller/data/entity/Contact;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 8
    :catch_0
    new-instance v0, Lcom/truecaller/log/UnmutedException$h;

    .line 9
    iget p1, p1, Le/a/o2/h;->b:I

    .line 10
    invoke-virtual {p0}, Le/a/h/f/l;->A()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/truecaller/log/UnmutedException$h;-><init>(II)V

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/truecaller/calling/ActionType;->SMS:Lcom/truecaller/calling/ActionType;

    invoke-virtual {v1}, Lcom/truecaller/calling/ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v0, p0, Le/a/h/f/l;->c:Le/a/h/f/k0;

    invoke-virtual {p0}, Le/a/h/f/l;->A()Ljava/util/List;

    move-result-object v1

    .line 13
    iget p1, p1, Le/a/o2/h;->b:I

    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    .line 15
    iget-object p1, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->a:Lcom/truecaller/data/entity/Contact;

    .line 16
    invoke-interface {v0, p1}, Le/a/h/f/k0;->Ii(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_0

    .line 17
    :cond_1
    sget-object v1, Lcom/truecaller/calling/ActionType;->VOIP_CALL:Lcom/truecaller/calling/ActionType;

    invoke-virtual {v1}, Lcom/truecaller/calling/ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    iget-object v0, p0, Le/a/h/f/l;->c:Le/a/h/f/k0;

    invoke-virtual {p0}, Le/a/h/f/l;->A()Ljava/util/List;

    move-result-object v1

    .line 19
    iget p1, p1, Le/a/o2/h;->b:I

    .line 20
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    .line 21
    iget-object p1, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->a:Lcom/truecaller/data/entity/Contact;

    .line 22
    invoke-interface {v0, p1}, Le/a/h/f/k0;->F2(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_0

    .line 23
    :cond_2
    sget-object v1, Lcom/truecaller/calling/ActionType;->CELLULAR_CALL:Lcom/truecaller/calling/ActionType;

    invoke-virtual {v1}, Lcom/truecaller/calling/ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, p0, Le/a/h/f/l;->c:Le/a/h/f/k0;

    invoke-virtual {p0}, Le/a/h/f/l;->A()Ljava/util/List;

    move-result-object v1

    .line 25
    iget p1, p1, Le/a/o2/h;->b:I

    .line 26
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    .line 27
    iget-object p1, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->a:Lcom/truecaller/data/entity/Contact;

    .line 28
    invoke-interface {v0, p1}, Le/a/h/f/k0;->hw(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
