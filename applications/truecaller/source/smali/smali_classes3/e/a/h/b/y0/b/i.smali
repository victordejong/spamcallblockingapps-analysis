.class public final Le/a/h/b/y0/b/i;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/y0/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h/b/y0/b/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/b/y0/b/h;",
        ">;",
        "Le/a/h/b/y0/b/g;"
    }
.end annotation


# static fields
.field public static final synthetic k:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/b/y0/b/a;

.field public final c:Le/a/h/b/y0/b/i$a;

.field public final d:Ls1/g;

.field public final e:Le/a/h/b/y0/b/a;

.field public final f:Le/a/h/b/p0;

.field public final g:Le/a/w4/t/a/e;

.field public final h:Le/a/k3/l/f;

.field public final i:Le/a/p5/c0;

.field public final j:Le/a/z2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/b/y0/b/i;

    const-string v2, "searchResults"

    const-string v3, "getSearchResults()Lkotlin/Pair;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/b/y0/b/i;->k:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h/b/y0/b/a;Le/a/h/b/p0;Le/a/w4/t/a/e;Le/a/k3/l/f;Le/a/p5/c0;Le/a/z2/a;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "searchResultsDataHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneActionsHandler"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchMatcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/h/b/y0/b/i;->e:Le/a/h/b/y0/b/a;

    iput-object p2, p0, Le/a/h/b/y0/b/i;->f:Le/a/h/b/p0;

    iput-object p3, p0, Le/a/h/b/y0/b/i;->g:Le/a/w4/t/a/e;

    iput-object p4, p0, Le/a/h/b/y0/b/i;->h:Le/a/k3/l/f;

    iput-object p5, p0, Le/a/h/b/y0/b/i;->i:Le/a/p5/c0;

    iput-object p6, p0, Le/a/h/b/y0/b/i;->j:Le/a/z2/a;

    .line 2
    iput-object p1, p0, Le/a/h/b/y0/b/i;->b:Le/a/h/b/y0/b/a;

    .line 3
    new-instance p1, Le/a/h/b/y0/b/i$a;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Le/a/h/b/y0/b/i$a;-><init>(Ljava/lang/CharSequence;IILcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;I)V

    iput-object p1, p0, Le/a/h/b/y0/b/i;->c:Le/a/h/b/y0/b/i$a;

    .line 4
    new-instance p1, Le/a/h/b/y0/b/i$c;

    invoke-direct {p1, p0}, Le/a/h/b/y0/b/i$c;-><init>(Le/a/h/b/y0/b/i;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/b/y0/b/i;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public final A(I)Lcom/truecaller/data/entity/Contact;
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/h/b/y0/b/i;->E()Ls1/k;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Le/a/h/b/y0/a/d;

    .line 4
    instance-of v1, v0, Le/a/h/b/y0/a/d$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Le/a/h/b/y0/a/d$a;

    .line 5
    iget-object v0, v0, Le/a/h/b/y0/a/d$a;->a:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/y0/a/a;

    .line 7
    iget-object p1, p1, Le/a/h/b/y0/a/a;->a:Lcom/truecaller/data/entity/Contact;

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Le/a/h/b/y0/b/i;->h:Le/a/k3/l/f;

    new-array v4, v3, [Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-interface {v1, v4}, Le/a/k3/l/f;->d([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    goto :goto_0

    .line 10
    :cond_0
    instance-of p1, v0, Le/a/h/b/y0/a/d$c;

    if-eqz p1, :cond_1

    check-cast v0, Le/a/h/b/y0/a/d$c;

    .line 11
    iget-object p1, v0, Le/a/h/b/y0/a/d$c;->a:Lcom/truecaller/data/entity/Contact;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    new-instance p1, Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 13
    invoke-virtual {p0}, Le/a/h/b/y0/b/i;->E()Ls1/k;

    move-result-object v0

    .line 14
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 15
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Le/a/h/b/y0/b/i;->h:Le/a/k3/l/f;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Le/a/h/b/y0/b/i;->E()Ls1/k;

    move-result-object v3

    .line 17
    iget-object v3, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 18
    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Le/a/k3/l/f;->d([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    :goto_1
    return-object p1
.end method

.method public final B(Ljava/lang/String;Le/a/h/b/y0/b/i$a;)Le/a/h/b/y0/b/i$a;
    .locals 7

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Le/a/h/b/y0/b/i$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 2
    iget-object v0, p0, Le/a/h/b/y0/b/i;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x6

    move-object v0, p2

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Le/a/h/b/y0/b/i$a;-><init>(Ljava/lang/CharSequence;IILcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-object p2
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ls1/k;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Le/a/h/b/y0/b/i;->g:Le/a/w4/t/a/e;

    new-instance v9, Le/a/h/b/y0/b/i$b;

    invoke-direct {v9, v0}, Le/a/h/b/y0/b/i$b;-><init>(Ls1/z/c/c0;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v9}, Le/a/n/g0;->h0(Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLs1/z/b/l;)Z

    .line 3
    iget-object p1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ls1/k;

    return-object p1
.end method

.method public final E()Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Le/a/h/b/y0/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/h/b/y0/b/i;->b:Le/a/h/b/y0/b/a;

    sget-object v1, Le/a/h/b/y0/b/i;->k:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/b/y0/b/a;->Si(Le/a/h/b/y0/b/j;Ls1/a/l;)Ls1/k;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Le/a/h/b/y0/b/h;

    const-string v3, "itemView"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/h/b/y0/b/i;->E()Ls1/k;

    move-result-object v3

    .line 4
    iget-object v4, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v4, Ljava/lang/String;

    .line 6
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast v3, Le/a/h/b/y0/a/d;

    .line 8
    invoke-virtual {v0, v1}, Le/a/h/b/y0/b/i;->A(I)Lcom/truecaller/data/entity/Contact;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v6

    const-string v7, "contact.displayNameOrNumber"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v6}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "GUIUtils.bidiFormat(originalTitle)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Le/a/h/b/y0/b/i;->E()Ls1/k;

    move-result-object v8

    .line 12
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 13
    check-cast v8, Le/a/h/b/y0/a/d;

    .line 14
    instance-of v9, v8, Le/a/h/b/y0/a/d$a;

    if-eqz v9, :cond_0

    check-cast v8, Le/a/h/b/y0/a/d$a;

    .line 15
    iget-object v8, v8, Le/a/h/b/y0/a/d$a;->a:Ljava/util/List;

    .line 16
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/h/b/y0/a/a;

    .line 17
    iget-object v8, v8, Le/a/h/b/y0/a/a;->d:Lcom/truecaller/blocking/FilterMatch;

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 18
    :goto_0
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v9

    const/4 v14, 0x0

    const/4 v13, 0x1

    if-nez v9, :cond_2

    if-eqz v8, :cond_1

    .line 19
    iget-object v9, v8, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 20
    sget-object v10, Lcom/truecaller/blocking/ActionSource;->TOP_SPAMMER:Lcom/truecaller/blocking/ActionSource;

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    move v9, v14

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v13

    :goto_2
    if-eqz v8, :cond_3

    .line 21
    iget v10, v8, Lcom/truecaller/blocking/FilterMatch;->f:I

    goto :goto_3

    :cond_3
    move v10, v14

    .line 22
    :goto_3
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v8, :cond_4

    .line 23
    iget-object v8, v8, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 24
    sget-object v11, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne v8, v11, :cond_4

    move v8, v13

    goto :goto_4

    :cond_4
    move v8, v14

    :goto_4
    if-eqz v9, :cond_5

    .line 25
    iget-object v8, v0, Le/a/h/b/y0/b/i;->i:Le/a/p5/c0;

    const v9, 0x7f120039

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v14

    invoke-interface {v8, v9, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_6

    .line 26
    iget-object v8, v0, Le/a/h/b/y0/b/i;->i:Le/a/p5/c0;

    const v9, 0x7f120036

    new-array v10, v14, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_5
    move-object v12, v8

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    .line 27
    :goto_6
    instance-of v11, v3, Le/a/h/b/y0/a/d$a;

    if-eqz v11, :cond_8

    .line 28
    move-object v8, v3

    check-cast v8, Le/a/h/b/y0/a/d$a;

    .line 29
    iget-object v8, v8, Le/a/h/b/y0/a/d$a;->a:Ljava/util/List;

    .line 30
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 31
    check-cast v8, Le/a/h/b/y0/a/a;

    .line 32
    invoke-virtual {v0, v4, v6, v7}, Le/a/h/b/y0/b/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ls1/k;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 33
    new-instance v4, Le/a/h/b/y0/b/i$a;

    .line 34
    iget-object v8, v6, Ls1/k;->a:Ljava/lang/Object;

    .line 35
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 36
    iget-object v6, v6, Ls1/k;->b:Ljava/lang/Object;

    .line 37
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x18

    move-object v8, v4

    move-object v9, v7

    move/from16 v19, v11

    move v11, v6

    move-object v6, v12

    move-object/from16 v12, v16

    move v15, v13

    move-object/from16 v13, v17

    move/from16 v14, v18

    invoke-direct/range {v8 .. v14}, Le/a/h/b/y0/b/i$a;-><init>(Ljava/lang/CharSequence;IILcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;I)V

    .line 38
    iget-object v8, v0, Le/a/h/b/y0/b/i;->c:Le/a/h/b/y0/b/i$a;

    invoke-virtual {v0, v6, v8}, Le/a/h/b/y0/b/i;->B(Ljava/lang/String;Le/a/h/b/y0/b/i$a;)Le/a/h/b/y0/b/i$a;

    move-result-object v8

    .line 39
    new-instance v9, Ls1/k;

    invoke-direct {v9, v4, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_7
    move/from16 v19, v11

    move-object v6, v12

    move v15, v13

    .line 40
    iget-object v9, v8, Le/a/h/b/y0/a/a;->b:Ljava/lang/String;

    .line 41
    invoke-static {v9}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string v9, "GUIUtils.bidiFormat(it.matchedValue)"

    invoke-static {v14, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v8, v8, Le/a/h/b/y0/a/a;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v4, v8, v14}, Le/a/h/b/y0/b/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ls1/k;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 44
    new-instance v13, Le/a/h/b/y0/b/i$a;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v16, 0x1e

    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object v8, v13

    move-object v9, v7

    move-object v15, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    move/from16 v14, v16

    invoke-direct/range {v8 .. v14}, Le/a/h/b/y0/b/i$a;-><init>(Ljava/lang/CharSequence;IILcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;I)V

    .line 45
    new-instance v8, Le/a/h/b/y0/b/i$a;

    .line 46
    iget-object v9, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 47
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v22

    .line 48
    iget-object v4, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 49
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v23

    const/16 v26, 0x18

    move-object/from16 v20, v8

    move-object/from16 v21, v17

    invoke-direct/range {v20 .. v26}, Le/a/h/b/y0/b/i$a;-><init>(Ljava/lang/CharSequence;IILcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v6, v8}, Le/a/h/b/y0/b/i;->B(Ljava/lang/String;Le/a/h/b/y0/b/i$a;)Le/a/h/b/y0/b/i$a;

    move-result-object v4

    .line 50
    new-instance v9, Ls1/k;

    invoke-direct {v9, v15, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_8
    move/from16 v19, v11

    move-object v6, v12

    .line 51
    :cond_9
    new-instance v4, Le/a/h/b/y0/b/i$a;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1e

    move-object v8, v4

    move-object v9, v7

    invoke-direct/range {v8 .. v14}, Le/a/h/b/y0/b/i$a;-><init>(Ljava/lang/CharSequence;IILcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;I)V

    .line 52
    iget-object v8, v0, Le/a/h/b/y0/b/i;->c:Le/a/h/b/y0/b/i$a;

    invoke-virtual {v0, v6, v8}, Le/a/h/b/y0/b/i;->B(Ljava/lang/String;Le/a/h/b/y0/b/i$a;)Le/a/h/b/y0/b/i$a;

    move-result-object v8

    .line 53
    new-instance v9, Ls1/k;

    invoke-direct {v9, v4, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    if-nez v6, :cond_a

    const/4 v14, 0x1

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    :goto_8
    if-eqz v6, :cond_b

    const/16 v25, 0x1

    goto :goto_9

    :cond_b
    const/16 v25, 0x0

    .line 54
    :goto_9
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    goto :goto_a

    :cond_c
    invoke-static {v5}, Le/a/m0/a1$k;->X(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_a
    move-object/from16 v22, v4

    .line 55
    iget-object v4, v9, Ls1/k;->a:Ljava/lang/Object;

    .line 56
    check-cast v4, Le/a/h/b/y0/b/i$a;

    .line 57
    iget-object v6, v9, Ls1/k;->b:Ljava/lang/Object;

    .line 58
    check-cast v6, Le/a/h/b/y0/b/i$a;

    const-string v8, "formattedTitle"

    .line 59
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "contact"

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "title"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "subtitle"

    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {v5}, Le/a/o5/t;->g(Lcom/truecaller/data/entity/Contact;)I

    move-result v8

    .line 61
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const-string v9, "(this as java.lang.String).toCharArray()"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/q/f/a/d/a;->t0([C)Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    .line 62
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v15

    goto :goto_b

    :cond_d
    const/16 v24, 0x0

    .line 63
    :goto_b
    new-instance v7, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/4 v9, 0x1

    .line 64
    invoke-static {v5, v9}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v9, 0x20

    if-ne v8, v9, :cond_e

    const/16 v30, 0x1

    goto :goto_c

    :cond_e
    const/16 v30, 0x0

    :goto_c
    const/4 v9, 0x4

    if-ne v8, v9, :cond_f

    const/16 v29, 0x1

    goto :goto_d

    :cond_f
    const/16 v29, 0x0

    :goto_d
    const/16 v9, 0x80

    if-ne v8, v9, :cond_10

    const/16 v31, 0x1

    goto :goto_e

    :cond_10
    const/16 v31, 0x0

    :goto_e
    const/16 v9, 0x100

    if-ne v8, v9, :cond_11

    const/16 v32, 0x1

    goto :goto_f

    :cond_11
    const/16 v32, 0x0

    :goto_f
    const/16 v9, 0x10

    if-ne v8, v9, :cond_12

    const/16 v33, 0x1

    goto :goto_10

    :cond_12
    const/16 v33, 0x0

    :goto_10
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xe0e4

    move-object/from16 v20, v7

    .line 65
    invoke-direct/range {v20 .. v37}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 66
    invoke-interface {v2, v7}, Le/a/h/b/y0/b/h;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    const/4 v7, 0x1

    .line 67
    invoke-interface {v2, v7}, Le/a/h/b/y0/b/h;->q(Z)V

    if-eqz v14, :cond_13

    .line 68
    invoke-static {v5}, Le/a/c/p/a;->m0(Lcom/truecaller/data/entity/Contact;)Ljava/util/Set;

    move-result-object v7

    goto :goto_11

    :cond_13
    sget-object v7, Ls1/u/u;->a:Ls1/u/u;

    :goto_11
    invoke-interface {v2, v7}, Le/a/h/b/y0/b/h;->m(Ljava/util/Set;)V

    .line 69
    invoke-interface {v2, v4}, Le/a/h/b/y0/b/h;->t4(Le/a/h/b/y0/b/i$a;)V

    .line 70
    invoke-interface {v2, v6}, Le/a/h/b/y0/b/h;->u1(Le/a/h/b/y0/b/i$a;)V

    .line 71
    invoke-static {v5}, Le/a/n/g0;->c0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 72
    iget-object v4, v0, Le/a/h/b/y0/b/i;->j:Le/a/z2/a;

    invoke-interface {v4, v5}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Le/a/h/j0;->i2(Z)V

    goto :goto_12

    :cond_14
    const/4 v4, 0x1

    .line 73
    iget-object v6, v0, Le/a/h/b/y0/b/i;->j:Le/a/z2/a;

    invoke-interface {v6, v5}, Le/a/z2/a;->a(Lcom/truecaller/data/entity/Contact;)Z

    move-result v5

    invoke-interface {v2, v5}, Le/a/h/i0;->K(Z)V

    :goto_12
    const/4 v5, 0x0

    goto :goto_13

    :cond_15
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 74
    invoke-interface {v2, v5}, Le/a/h/i0;->K(Z)V

    .line 75
    :goto_13
    sget-object v6, Lcom/truecaller/calling/ActionType;->PROFILE:Lcom/truecaller/calling/ActionType;

    invoke-interface {v2, v6}, Le/a/h/b/y0/b/h;->V(Lcom/truecaller/calling/ActionType;)V

    if-eqz v19, :cond_16

    .line 76
    move-object v6, v3

    check-cast v6, Le/a/h/b/y0/a/d$a;

    .line 77
    iget-object v6, v6, Le/a/h/b/y0/a/d$a;->a:Ljava/util/List;

    .line 78
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 79
    check-cast v6, Le/a/h/b/y0/a/a;

    .line 80
    iget-object v6, v0, Le/a/h/b/y0/b/i;->e:Le/a/h/b/y0/b/a;

    invoke-interface {v6, v1}, Le/a/h/b/y0/b/a;->wb(I)V

    .line 81
    :cond_16
    sget-object v1, Le/a/h/b/y0/a/d$d;->a:Le/a/h/b/y0/a/d$d;

    if-ne v3, v1, :cond_17

    move v14, v4

    goto :goto_14

    :cond_17
    move v14, v5

    :goto_14
    invoke-interface {v2, v14}, Le/a/h/a0;->s(Z)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/b/y0/b/i;->E()Ls1/k;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Le/a/h/b/y0/a/d;

    .line 4
    instance-of v1, v0, Le/a/h/b/y0/a/d$a;

    if-eqz v1, :cond_0

    check-cast v0, Le/a/h/b/y0/a/d$a;

    .line 5
    iget-object v0, v0, Le/a/h/b/y0/a/d$a;->a:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 7
    :cond_0
    sget-object v1, Le/a/h/b/y0/a/d$b;->a:Le/a/h/b/y0/a/d$b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 8
    :cond_1
    instance-of v1, v0, Le/a/h/b/y0/a/d$c;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Le/a/h/b/y0/a/d$d;->a:Le/a/h/b/y0/a/d$d;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/a/h/b/y0/b/i;->A(I)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

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
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v1, "ItemEvent.CLICKED"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "dialpadSearchResult"

    if-eqz v1, :cond_0

    .line 3
    iget p1, p1, Le/a/o2/h;->b:I

    .line 4
    iget-object v0, p0, Le/a/h/b/y0/b/i;->f:Le/a/h/b/p0;

    invoke-virtual {p0, p1}, Le/a/h/b/y0/b/i;->A(I)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Le/a/h/b/p0;->f4(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string v1, "ItemEvent.SWIPE_START"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v1, "ItemEvent.SWIPE_COMPLETED_FROM_START"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/truecaller/calling/ActionType;->CELLULAR_CALL:Lcom/truecaller/calling/ActionType;

    invoke-virtual {v1}, Lcom/truecaller/calling/ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    :goto_0
    iget p1, p1, Le/a/o2/h;->b:I

    .line 8
    iget-object v0, p0, Le/a/h/b/y0/b/i;->f:Le/a/h/b/p0;

    invoke-virtual {p0, p1}, Le/a/h/b/y0/b/i;->A(I)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Le/a/h/b/p0;->f4(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v1, "ItemEvent.SWIPE_COMPLETED_FROM_END"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/truecaller/calling/ActionType;->SMS:Lcom/truecaller/calling/ActionType;

    invoke-virtual {v1}, Lcom/truecaller/calling/ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    :goto_1
    iget p1, p1, Le/a/o2/h;->b:I

    .line 11
    iget-object v0, p0, Le/a/h/b/y0/b/i;->f:Le/a/h/b/p0;

    invoke-virtual {p0, p1}, Le/a/h/b/y0/b/i;->A(I)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Le/a/h/b/p0;->fg(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_5
    sget-object v1, Lcom/truecaller/calling/ActionType;->PROFILE:Lcom/truecaller/calling/ActionType;

    invoke-virtual {v1}, Lcom/truecaller/calling/ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    iget p1, p1, Le/a/o2/h;->b:I

    .line 14
    iget-object v0, p0, Le/a/h/b/y0/b/i;->f:Le/a/h/b/p0;

    .line 15
    invoke-virtual {p0, p1}, Le/a/h/b/y0/b/i;->A(I)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    .line 16
    sget-object v2, Lcom/truecaller/details_view/analytics/SourceType;->SearchResult:Lcom/truecaller/details_view/analytics/SourceType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 17
    invoke-interface/range {v0 .. v5}, Le/a/h/b/o;->x6(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ZZZ)V

    goto :goto_2

    .line 18
    :cond_6
    sget-object v1, Lcom/truecaller/calling/ActionType;->VOIP_CALL:Lcom/truecaller/calling/ActionType;

    invoke-virtual {v1}, Lcom/truecaller/calling/ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget p1, p1, Le/a/o2/h;->b:I

    .line 20
    iget-object v0, p0, Le/a/h/b/y0/b/i;->f:Le/a/h/b/p0;

    invoke-virtual {p0, p1}, Le/a/h/b/y0/b/i;->A(I)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/h/b/p0;->A8(Lcom/truecaller/data/entity/Contact;)V

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    return p1
.end method
