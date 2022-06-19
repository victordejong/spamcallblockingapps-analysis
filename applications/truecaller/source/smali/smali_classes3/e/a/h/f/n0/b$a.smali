.class public final Le/a/h/f/n0/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/n0/b;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;ZZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.contacts_list.data.SortedContactsRepositoryImpl$getContacts$2"
    f = "SortedContactsRepository.kt"
    l = {
        0x85,
        0x86,
        0x90,
        0x91,
        0x92,
        0x9c,
        0x9d,
        0x9e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/h/f/n0/b;

.field public final synthetic i:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

.field public final synthetic j:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

.field public final synthetic k:Z

.field public final synthetic l:Z


# direct methods
.method public constructor <init>(Le/a/h/f/n0/b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;ZZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/n0/b$a;->h:Le/a/h/f/n0/b;

    iput-object p2, p0, Le/a/h/f/n0/b$a;->i:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    iput-object p3, p0, Le/a/h/f/n0/b$a;->j:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    iput-boolean p4, p0, Le/a/h/f/n0/b$a;->k:Z

    iput-boolean p5, p0, Le/a/h/f/n0/b$a;->l:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/h/f/n0/b$a;

    iget-object v2, p0, Le/a/h/f/n0/b$a;->h:Le/a/h/f/n0/b;

    iget-object v3, p0, Le/a/h/f/n0/b$a;->i:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    iget-object v4, p0, Le/a/h/f/n0/b$a;->j:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    iget-boolean v5, p0, Le/a/h/f/n0/b$a;->k:Z

    iget-boolean v6, p0, Le/a/h/f/n0/b$a;->l:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Le/a/h/f/n0/b$a;-><init>(Le/a/h/f/n0/b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;ZZLs1/w/d;)V

    iput-object p1, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/h/f/n0/b$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/h/f/n0/b$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/f/n0/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/h/f/n0/b$a;->g:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    iget-object v2, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_2

    :pswitch_1
    iget-object v2, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/n0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    check-cast v2, Lq3/a/n0;

    iget-object v3, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/n0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v3

    move-object/from16 v3, p1

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    iget-object v2, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_5

    :pswitch_4
    iget-object v2, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/n0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v4, v2

    move-object/from16 v2, p1

    goto/16 :goto_4

    :pswitch_5
    iget-object v2, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    check-cast v2, Lq3/a/n0;

    iget-object v4, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    check-cast v4, Lq3/a/n0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v4

    move-object/from16 v4, p1

    goto/16 :goto_3

    :pswitch_6
    iget-object v1, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_7

    :pswitch_7
    iget-object v2, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/n0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_6

    :pswitch_8
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    .line 4
    iget-object v6, v0, Le/a/h/f/n0/b$a;->i:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x64

    const/4 v12, 0x6

    if-eqz v6, :cond_c

    const/4 v13, 0x1

    if-eq v6, v13, :cond_b

    if-eq v6, v4, :cond_8

    const/4 v4, 0x3

    if-eq v6, v4, :cond_4

    if-ne v6, v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    new-instance v9, Le/a/h/f/n0/b$a$f;

    invoke-direct {v9, v0, v5}, Le/a/h/f/n0/b$a$f;-><init>(Le/a/h/f/n0/b$a;Ls1/w/d;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, v2

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v15

    .line 6
    new-instance v9, Le/a/h/f/n0/b$a$h;

    invoke-direct {v9, v0, v5}, Le/a/h/f/n0/b$a$h;-><init>(Le/a/h/f/n0/b$a;Ls1/w/d;)V

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v11

    .line 7
    new-instance v9, Le/a/h/f/n0/b$a$c;

    invoke-direct {v9, v0, v5}, Le/a/h/f/n0/b$a$c;-><init>(Le/a/h/f/n0/b$a;Ls1/w/d;)V

    move-object v7, v3

    move-object v8, v4

    move v10, v13

    move-object v2, v11

    move-object v11, v14

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v3

    .line 8
    iput-object v15, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    iput-object v2, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    iput v12, v0, Le/a/h/f/n0/b$a;->g:I

    check-cast v3, Lq3/a/o0;

    .line 9
    invoke-virtual {v3, v0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_0

    return-object v1

    .line 10
    :cond_0
    :goto_0
    check-cast v3, Ljava/util/List;

    .line 11
    iput-object v2, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    iput-object v3, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, v0, Le/a/h/f/n0/b$a;->g:I

    invoke-interface {v15, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    return-object v1

    :cond_1
    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    .line 12
    :goto_1
    check-cast v4, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    .line 13
    iput-object v2, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    iput-object v4, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    const/16 v5, 0x8

    iput v5, v0, Le/a/h/f/n0/b$a;->g:I

    invoke-interface {v3, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, v4

    .line 14
    :goto_2
    check-cast v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    .line 15
    new-instance v4, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;

    invoke-direct {v4, v2, v1, v3}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;-><init>(Ljava/util/List;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;)V

    goto/16 :goto_8

    :cond_3
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 16
    new-instance v9, Le/a/h/f/n0/b$a$e;

    invoke-direct {v9, v0, v5}, Le/a/h/f/n0/b$a$e;-><init>(Le/a/h/f/n0/b$a;Ls1/w/d;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, v2

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v11

    .line 17
    new-instance v9, Le/a/h/f/n0/b$a$g;

    invoke-direct {v9, v0, v5}, Le/a/h/f/n0/b$a$g;-><init>(Le/a/h/f/n0/b$a;Ls1/w/d;)V

    const/16 v16, 0x0

    move-object v3, v11

    move-object/from16 v11, v16

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v11

    .line 18
    new-instance v9, Le/a/h/f/n0/b$a$b;

    invoke-direct {v9, v0, v5}, Le/a/h/f/n0/b$a$b;-><init>(Le/a/h/f/n0/b$a;Ls1/w/d;)V

    move-object v7, v12

    move-object v8, v13

    move v10, v14

    move-object v2, v11

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v5

    .line 19
    iput-object v3, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    iput-object v2, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    iput v4, v0, Le/a/h/f/n0/b$a;->g:I

    check-cast v5, Lq3/a/o0;

    .line 20
    invoke-virtual {v5, v0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_5

    return-object v1

    :cond_5
    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    .line 21
    :goto_3
    check-cast v4, Ljava/util/List;

    .line 22
    iput-object v3, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    iput-object v4, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v0, Le/a/h/f/n0/b$a;->g:I

    invoke-interface {v2, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    .line 23
    :cond_6
    :goto_4
    check-cast v2, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    .line 24
    iput-object v4, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    iput-object v2, v0, Le/a/h/f/n0/b$a;->f:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v0, Le/a/h/f/n0/b$a;->g:I

    invoke-interface {v3, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_7

    return-object v1

    :cond_7
    move-object v1, v2

    move-object v2, v4

    .line 25
    :goto_5
    check-cast v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    .line 26
    new-instance v4, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;

    invoke-direct {v4, v2, v1, v3}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;-><init>(Ljava/util/List;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;)V

    goto/16 :goto_8

    :cond_8
    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 27
    new-instance v9, Le/a/h/f/n0/b$a$d;

    invoke-direct {v9, v0, v5}, Le/a/h/f/n0/b$a$d;-><init>(Le/a/h/f/n0/b$a;Ls1/w/d;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, v2

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v11

    .line 28
    new-instance v9, Le/a/h/f/n0/b$a$a;

    invoke-direct {v9, v0, v5}, Le/a/h/f/n0/b$a$a;-><init>(Le/a/h/f/n0/b$a;Ls1/w/d;)V

    move-object v7, v3

    move-object v8, v12

    move v10, v14

    move-object v2, v11

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v3

    .line 29
    iput-object v2, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    iput v13, v0, Le/a/h/f/n0/b$a;->g:I

    check-cast v3, Lq3/a/o0;

    .line 30
    invoke-virtual {v3, v0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_9

    return-object v1

    .line 31
    :cond_9
    :goto_6
    check-cast v3, Ljava/util/List;

    .line 32
    iput-object v3, v0, Le/a/h/f/n0/b$a;->e:Ljava/lang/Object;

    iput v4, v0, Le/a/h/f/n0/b$a;->g:I

    invoke-interface {v2, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_a
    move-object v1, v3

    .line 33
    :goto_7
    check-cast v2, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    .line 34
    new-instance v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;

    invoke-direct {v3, v1, v5, v2, v4}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;-><init>(Ljava/util/List;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;I)V

    move-object v4, v3

    goto :goto_8

    .line 35
    :cond_b
    new-instance v4, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;

    .line 36
    iget-object v1, v0, Le/a/h/f/n0/b$a;->h:Le/a/h/f/n0/b;

    .line 37
    iget-object v1, v1, Le/a/h/f/n0/b;->a:Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;

    .line 38
    iget-object v2, v0, Le/a/h/f/n0/b$a;->j:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    sget-object v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;->BARE_MINIMUM:Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;

    .line 39
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 40
    sget-object v7, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->NON_PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    invoke-interface {v1, v2, v3, v6, v7}, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;Ljava/lang/Integer;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-direct {v4, v1, v5, v5, v12}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;-><init>(Ljava/util/List;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;I)V

    goto :goto_8

    .line 42
    :cond_c
    new-instance v4, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;

    .line 43
    iget-object v1, v0, Le/a/h/f/n0/b$a;->h:Le/a/h/f/n0/b;

    .line 44
    iget-object v1, v1, Le/a/h/f/n0/b;->a:Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;

    .line 45
    iget-object v2, v0, Le/a/h/f/n0/b$a;->j:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    sget-object v3, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;->BARE_MINIMUM:Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;

    .line 46
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 47
    sget-object v7, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    invoke-interface {v1, v2, v3, v6, v7}, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;Ljava/lang/Integer;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;

    move-result-object v1

    .line 48
    invoke-direct {v4, v1, v5, v5, v12}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;-><init>(Ljava/util/List;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;I)V

    :goto_8
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
