.class public final Le/a/o/p/b/e$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/b/e;->b(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/o/p/b/a;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.db.hiddennumber.HiddenNumberRepositoryImpl$getHiddenContacts$2"
    f = "HiddenNumberRepository.kt"
    l = {
        0x1c,
        0x1f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/o/p/b/e;


# direct methods
.method public constructor <init>(Le/a/o/p/b/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/p/b/e$d;->j:Le/a/o/p/b/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/p/b/e$d;

    iget-object v1, p0, Le/a/o/p/b/e$d;->j:Le/a/o/p/b/e;

    invoke-direct {v0, v1, p1}, Le/a/o/p/b/e$d;-><init>(Le/a/o/p/b/e;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/o/p/b/e$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/p/b/e$d;

    iget-object v1, p0, Le/a/o/p/b/e$d;->j:Le/a/o/p/b/e;

    invoke-direct {v0, v1, p1}, Le/a/o/p/b/e$d;-><init>(Le/a/o/p/b/e;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/p/b/e$d;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Le/a/o/p/b/e$d;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v5, v0, Le/a/o/p/b/e$d;->g:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;

    iget-object v6, v0, Le/a/o/p/b/e$d;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Le/a/o/p/b/e$d;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    move-object v9, v6

    move-object v6, v0

    move-object/from16 v32, v5

    move-object v5, v2

    move-object v2, v7

    move-object/from16 v7, v32

    goto :goto_2

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/o/p/b/e$d;->j:Le/a/o/p/b/e;

    .line 5
    iget-object v2, v2, Le/a/o/p/b/e;->c:Le/a/o/p/b/b;

    .line 6
    iput v4, v0, Le/a/o/p/b/e$d;->i:I

    .line 7
    invoke-interface {v2, v0}, Le/a/o/p/b/b;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_0
    check-cast v2, Ljava/lang/Iterable;

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, v2

    move-object v2, v5

    move-object v5, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 11
    check-cast v7, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;

    .line 12
    iget-object v8, v5, Le/a/o/p/b/e$d;->j:Le/a/o/p/b/e;

    .line 13
    iget-object v8, v8, Le/a/o/p/b/e;->b:Le/a/o/f;

    .line 14
    invoke-virtual {v7}, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v2, v5, Le/a/o/p/b/e$d;->e:Ljava/lang/Object;

    iput-object v6, v5, Le/a/o/p/b/e$d;->f:Ljava/lang/Object;

    iput-object v7, v5, Le/a/o/p/b/e$d;->g:Ljava/lang/Object;

    iput-object v2, v5, Le/a/o/p/b/e$d;->h:Ljava/lang/Object;

    iput v3, v5, Le/a/o/p/b/e$d;->i:I

    check-cast v8, Le/a/o/h;

    .line 15
    iget-object v10, v8, Le/a/o/h;->c:Ls1/w/f;

    new-instance v11, Le/a/o/i;

    const/4 v12, 0x0

    invoke-direct {v11, v8, v9, v12}, Le/a/o/i;-><init>(Le/a/o/h;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v10, v11, v5}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v6

    move-object v6, v5

    move-object v5, v2

    .line 16
    :goto_2
    check-cast v8, Le/a/o/g;

    if-nez v8, :cond_5

    .line 17
    new-instance v8, Le/a/o/p/b/a;

    const/4 v11, 0x0

    .line 18
    invoke-virtual {v7}, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 19
    invoke-virtual {v7}, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v13

    .line 20
    new-instance v7, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v31, 0xffff

    invoke-direct/range {v14 .. v31}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/4 v15, 0x0

    move-object v10, v8

    .line 21
    invoke-direct/range {v10 .. v15}, Le/a/o/p/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V

    goto :goto_4

    .line 22
    :cond_5
    new-instance v10, Le/a/o/p/b/a;

    .line 23
    iget-object v11, v8, Le/a/o/g;->a:Lcom/truecaller/data/entity/Contact;

    .line 24
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v17

    .line 25
    iget-object v11, v8, Le/a/o/g;->a:Lcom/truecaller/data/entity/Contact;

    .line 26
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v11

    const-string v12, "supportContact.contact.displayNameOrNumber"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v7}, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 28
    iget-object v7, v8, Le/a/o/g;->b:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 29
    iget-object v8, v8, Le/a/o/g;->a:Lcom/truecaller/data/entity/Contact;

    .line 30
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v4, :cond_6

    move/from16 v21, v4

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    move/from16 v21, v8

    :goto_3
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    move-object/from16 v20, v7

    .line 31
    invoke-direct/range {v16 .. v21}, Le/a/o/p/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V

    move-object v8, v10

    .line 32
    :goto_4
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    move-object v6, v9

    goto/16 :goto_1

    .line 33
    :cond_7
    check-cast v2, Ljava/util/List;

    return-object v2
.end method
