.class public final Le/a/h/f/a0$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/a0;-><init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;Lcom/truecaller/settings/CallingSettings;Ls1/w/f;Ls1/w/f;Le/a/l4/c;Le/a/q2/a;Le/a/p5/c;Le/a/b0/e/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;",
        "Le/a/p5/s0/v<",
        "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.contacts_list.ContactsTabPresenter$fetchContactList$1"
    f = "ContactsTabPresenter.kt"
    l = {
        0x68,
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:J

.field public j:I

.field public final synthetic k:Le/a/h/f/a0;


# direct methods
.method public constructor <init>(Le/a/h/f/a0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    check-cast p2, Le/a/p5/s0/v;

    check-cast p3, Ls1/w/d;

    const-string v0, "loadingMode"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itself"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/h/f/a0$e;

    iget-object v1, p0, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    invoke-direct {v0, v1, p3}, Le/a/h/f/a0$e;-><init>(Le/a/h/f/a0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/h/f/a0$e;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/h/f/a0$e;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/h/f/a0$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v6, p0

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v6, Le/a/h/f/a0$e;->j:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v11, :cond_0

    iget-wide v0, v6, Le/a/h/f/a0$e;->i:J

    iget-object v2, v6, Le/a/h/f/a0$e;->h:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v3, v6, Le/a/h/f/a0$e;->g:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;

    iget-object v4, v6, Le/a/h/f/a0$e;->f:Ljava/lang/Object;

    check-cast v4, Le/a/p5/s0/v;

    iget-object v5, v6, Le/a/h/f/a0$e;->e:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide v14, v0

    move-object/from16 v0, p1

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-wide v0, v6, Le/a/h/f/a0$e;->i:J

    iget-object v2, v6, Le/a/h/f/a0$e;->f:Ljava/lang/Object;

    check-cast v2, Le/a/p5/s0/v;

    iget-object v3, v6, Le/a/h/f/a0$e;->e:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide v14, v0

    move-object v4, v2

    move-object v5, v3

    move-object/from16 v0, p1

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v0, v6, Le/a/h/f/a0$e;->e:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    iget-object v0, v6, Le/a/h/f/a0$e;->f:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Le/a/p5/s0/v;

    .line 4
    iget-object v0, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    .line 5
    iget-object v0, v0, Le/a/h/f/a0;->t:Le/a/p5/c;

    .line 6
    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v14

    .line 7
    iget-object v0, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v9, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 10
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/f/z;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/h/f/z;->a0()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/f/z;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/h/f/z;->b0()V

    .line 12
    :cond_4
    :goto_0
    iget-object v0, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    .line 13
    iget-object v1, v0, Le/a/h/f/a0;->n:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;

    .line 14
    iget-object v0, v0, Le/a/h/f/a0;->o:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "sorting_mode"

    invoke-interface {v0, v2, v8}, Lcom/truecaller/settings/CallingSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    sget-object v0, Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;->BY_LAST_NAME:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    goto :goto_1

    .line 16
    :cond_5
    sget-object v0, Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;->BY_FIRST_NAME:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    :goto_1
    move-object v2, v0

    .line 17
    iput-object v12, v6, Le/a/h/f/a0$e;->e:Ljava/lang/Object;

    iput-object v13, v6, Le/a/h/f/a0$e;->f:Ljava/lang/Object;

    iput-wide v14, v6, Le/a/h/f/a0$e;->i:J

    iput v9, v6, Le/a/h/f/a0$e;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v12

    move-object/from16 v5, p0

    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;ZZLs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_6

    return-object v7

    :cond_6
    move-object v5, v12

    move-object v4, v13

    .line 19
    :goto_2
    move-object v3, v0

    check-cast v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;

    .line 20
    new-instance v2, Ls1/z/c/c0;

    invoke-direct {v2}, Ls1/z/c/c0;-><init>()V

    new-instance v0, Le/a/h/f/a0$b;

    .line 21
    iget-object v1, v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->a:Ljava/util/List;

    .line 22
    invoke-direct {v0, v1}, Le/a/h/f/a0$b;-><init>(Ljava/util/List;)V

    iput-object v0, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 23
    iget-object v0, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    .line 24
    iget-object v0, v0, Le/a/h/f/a0;->q:Ls1/w/f;

    .line 25
    new-instance v1, Le/a/h/f/a0$e$a;

    invoke-direct {v1, v2, v10}, Le/a/h/f/a0$e$a;-><init>(Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v5, v6, Le/a/h/f/a0$e;->e:Ljava/lang/Object;

    iput-object v4, v6, Le/a/h/f/a0$e;->f:Ljava/lang/Object;

    iput-object v3, v6, Le/a/h/f/a0$e;->g:Ljava/lang/Object;

    iput-object v2, v6, Le/a/h/f/a0$e;->h:Ljava/lang/Object;

    iput-wide v14, v6, Le/a/h/f/a0$e;->i:J

    iput v11, v6, Le/a/h/f/a0$e;->j:I

    invoke-static {v0, v1, v6}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_7

    return-object v7

    .line 26
    :cond_7
    :goto_3
    check-cast v0, Ljava/util/List;

    .line 27
    iget-object v1, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    .line 28
    iget-object v1, v1, Le/a/h/f/a0;->j:Le/a/h/f/a0$b;

    .line 29
    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Le/a/h/f/a0$b;

    .line 30
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "another"

    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;->values()[Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    move-result-object v7

    move v10, v8

    :goto_4
    if-ge v8, v11, :cond_9

    .line 32
    aget-object v12, v7, v8

    .line 33
    invoke-static {}, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->values()[Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    move-result-object v13

    :goto_5
    if-ge v10, v11, :cond_8

    .line 34
    aget-object v11, v13, v10

    .line 35
    invoke-virtual {v2, v12, v11}, Le/a/h/f/a0$b;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;

    move-result-object v16

    .line 36
    iget-object v9, v1, Le/a/h/f/a0$b;->a:[[Ljava/util/List;

    invoke-virtual {v1, v12}, Le/a/h/f/a0$b;->b(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;)I

    move-result v17

    aget-object v9, v9, v17

    invoke-virtual {v1, v11}, Le/a/h/f/a0$b;->c(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)I

    move-result v11

    aput-object v16, v9, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x2

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v9, 0x1

    goto :goto_4

    .line 37
    :cond_9
    iget-object v1, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    new-instance v2, Le/a/h/f/a0$a;

    new-instance v7, Le/a/h/f/n0/a$b;

    invoke-direct {v7, v0}, Le/a/h/f/n0/a$b;-><init>(Ljava/lang/Iterable;)V

    .line 38
    iget-object v0, v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->c:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    .line 39
    invoke-direct {v2, v7, v0}, Le/a/h/f/a0$a;-><init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;)V

    .line 40
    iput-object v2, v1, Le/a/h/f/a0;->i:Le/a/h/f/a0$a;

    .line 41
    sget-object v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->NON_PHONEBOOK_LIMITED:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    if-eq v5, v0, :cond_a

    .line 42
    iget-object v0, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    .line 43
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/f/z;

    if-eqz v1, :cond_a

    .line 44
    sget-object v2, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    .line 45
    iget-object v0, v0, Le/a/h/f/a0;->j:Le/a/h/f/a0$b;

    .line 46
    sget-object v3, Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;->INCLUDE_NON_FAVORITES:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    invoke-virtual {v0, v3, v2}, Le/a/h/f/a0$b;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Le/a/h/f/z;->Ms(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Z)V

    .line 47
    :cond_a
    sget-object v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->PHONEBOOK_LIMITED:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    if-eq v5, v0, :cond_b

    .line 48
    iget-object v0, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    .line 49
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/f/z;

    if-eqz v1, :cond_b

    .line 50
    sget-object v2, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->NON_PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    .line 51
    iget-object v0, v0, Le/a/h/f/a0;->j:Le/a/h/f/a0$b;

    .line 52
    sget-object v3, Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;->INCLUDE_NON_FAVORITES:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    invoke-virtual {v0, v3, v2}, Le/a/h/f/a0$b;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Le/a/h/f/z;->Ms(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Z)V

    .line 53
    :cond_b
    iget-object v0, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    .line 54
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/f/z;

    if-eqz v0, :cond_c

    .line 55
    invoke-interface {v0}, Le/a/h/f/z;->cn()V

    .line 56
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v11, "AnalyticsEvent.Builder(A\u2026                 .build()"

    const-string v7, "ContactsLoaded"

    const-string v1, "Context"

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_6

    .line 57
    :cond_d
    sget-object v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->FULL_WITH_ENTITIES:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    invoke-virtual {v4, v0}, Le/a/p5/s0/v;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 58
    :cond_e
    sget-object v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->FULL_INITIAL:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    invoke-virtual {v4, v0}, Le/a/p5/s0/v;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 59
    :cond_f
    sget-object v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->FULL_WITH_ENTITIES:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    invoke-virtual {v4, v0}, Le/a/p5/s0/v;->a(Ljava/lang/Object;)V

    .line 60
    iget-object v0, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    .line 61
    iget-boolean v2, v0, Le/a/h/f/a0;->f:Z

    if-nez v2, :cond_12

    .line 62
    iget-object v12, v0, Le/a/h/f/a0;->s:Le/a/q2/a;

    const-string v2, "identifiedContacts"

    .line 63
    invoke-static {v1, v2}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 64
    iget-object v1, v0, Le/a/h/f/a0;->t:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->a()J

    move-result-wide v1

    sub-long/2addr v1, v14

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v10, 0x0

    .line 65
    invoke-static/range {v7 .. v12}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, v0, Le/a/h/f/a0;->f:Z

    goto :goto_6

    .line 67
    :cond_10
    iget-object v0, v6, Le/a/h/f/a0$e;->k:Le/a/h/f/a0;

    .line 68
    iget-boolean v2, v0, Le/a/h/f/a0;->e:Z

    if-nez v2, :cond_11

    .line 69
    iget-object v12, v0, Le/a/h/f/a0;->s:Le/a/q2/a;

    const-string v2, "savedContacts"

    .line 70
    invoke-static {v1, v2}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 71
    iget-object v1, v0, Le/a/h/f/a0;->t:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->a()J

    move-result-wide v1

    sub-long/2addr v1, v14

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v10, 0x0

    .line 72
    invoke-static/range {v7 .. v12}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    const/4 v1, 0x1

    .line 73
    iput-boolean v1, v0, Le/a/h/f/a0;->e:Z

    .line 74
    :cond_11
    sget-object v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->PHONEBOOK_INITIAL:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    invoke-virtual {v4, v0}, Le/a/p5/s0/v;->a(Ljava/lang/Object;)V

    .line 75
    :cond_12
    :goto_6
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
