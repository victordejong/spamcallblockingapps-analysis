.class public Le/q/f/a/e/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/q/f/a/e/d/c;

.field public b:Le/q/f/a/e/d/c;

.field public c:Le/q/f/a/e/d/c;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Le/q/f/a/e/d/d;

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/q/f/a/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/q/f/a/f/k;Le/q/f/a/e/d/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/q/f/a/e/d/c;

    invoke-direct {v0}, Le/q/f/a/e/d/c;-><init>()V

    iput-object v0, p0, Le/q/f/a/e/c/a;->a:Le/q/f/a/e/d/c;

    .line 3
    new-instance v0, Le/q/f/a/e/d/c;

    invoke-direct {v0}, Le/q/f/a/e/d/c;-><init>()V

    iput-object v0, p0, Le/q/f/a/e/c/a;->b:Le/q/f/a/e/d/c;

    .line 4
    new-instance v0, Le/q/f/a/e/d/c;

    invoke-direct {v0}, Le/q/f/a/e/d/c;-><init>()V

    iput-object v0, p0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    .line 5
    iget-object v0, p1, Le/q/f/a/f/k;->c:Ljava/util/List;

    .line 6
    iput-object v0, p0, Le/q/f/a/e/c/a;->d:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SEATNUMB"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iput-object v0, p0, Le/q/f/a/e/c/a;->e:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/q/f/a/e/c/a;->f:Ljava/util/List;

    .line 11
    new-instance v0, Le/q/f/a/e/d/d;

    invoke-direct {v0, p2}, Le/q/f/a/e/d/d;-><init>(Le/q/f/a/e/d/a;)V

    iput-object v0, p0, Le/q/f/a/e/c/a;->g:Le/q/f/a/e/d/d;

    .line 12
    iget-object p1, p1, Le/q/f/a/f/k;->b:Ljava/util/HashMap;

    .line 13
    iput-object p1, p0, Le/q/f/a/e/c/a;->h:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Le/q/f/a/e/d/b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "MOB"

    const-string v3, "NEW"

    .line 1
    :try_start_0
    iget-object v4, v1, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    const-string v5, "INSTR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    const-string v6, "PREP"

    const-string v7, "DET"

    const-string v8, "TRANS"

    const-string v9, " "

    const/4 v10, 0x0

    const-string v11, "GDO_NONDET"

    const/4 v12, 0x1

    const/4 v13, 0x3

    if-eqz v4, :cond_3

    .line 2
    :try_start_1
    iget-object v2, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    const-string v3, "INTENT"

    const-string v4, "TRANSINTENT"

    const-string v15, "USE"

    const-string v14, "TRX"

    filled-new-array {v3, v4, v15, v8, v14}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/q/f/a/e/d/c;->e([Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "INS"

    if-eqz v2, :cond_1

    .line 3
    :try_start_2
    iget-object v2, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    const-string v4, "ART"

    filled-new-array {v7, v6, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11, v13, v3, v4}, Le/q/f/a/e/d/c;->g(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v12

    :goto_0
    if-ltz v5, :cond_0

    .line 6
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/q/f/a/e/d/b;

    .line 7
    iput-boolean v12, v6, Le/q/f/a/e/d/b;->h:Z

    .line 8
    iget-object v6, v6, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    const-string v2, "acc_name"

    .line 9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v12

    invoke-virtual {v4, v10, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Le/q/f/a/e/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v2, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    const-string v4, "from"

    new-array v5, v10, [Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v2, v4, v6, v3, v5}, Le/q/f/a/e/d/c;->f(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    const-string v4, "frm"

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6, v3, v5}, Le/q/f/a/e/d/c;->f(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    :cond_2
    const-string v2, "fromacc"

    const-string v3, "true"

    .line 11
    invoke-virtual {v1, v2, v3}, Le/q/f/a/e/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 12
    :cond_3
    iget-object v4, v1, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    const-string v14, "BILL"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    const-string v14, "REMIND"

    const-string v15, "SALDET"

    const-string v13, "CUST"

    filled-new-array {v14, v8, v15, v3, v13}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Le/q/f/a/e/d/c;->e([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 13
    iget-object v4, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    const/4 v8, 0x0

    const-string v13, "PREPV"

    filled-new-array {v7, v13, v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v11, v12, v8, v3}, Le/q/f/a/e/d/c;->g(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "billvendor"

    if-eqz v3, :cond_5

    .line 14
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v12

    :goto_1
    if-ltz v5, :cond_4

    .line 16
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/q/f/a/e/d/b;

    .line 17
    iget-object v6, v6, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-virtual {v2, v10, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Le/q/f/a/e/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 19
    :cond_5
    iget-object v3, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    invoke-virtual {v3}, Le/q/f/a/e/d/c;->i()I

    move-result v3

    if-le v3, v12, :cond_8

    iget-object v3, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    .line 20
    iget-object v5, v3, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3}, Le/q/f/a/e/d/c;->i()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/e/d/b;

    iget-object v3, v3, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 22
    iget-object v3, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    .line 23
    iget-object v5, v3, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3}, Le/q/f/a/e/d/c;->i()I

    move-result v3

    const/4 v6, 0x2

    sub-int/2addr v3, v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/e/d/b;

    iget-object v3, v3, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    .line 26
    iget-object v5, v3, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3}, Le/q/f/a/e/d/c;->i()I

    move-result v3

    const/4 v6, 0x2

    sub-int/2addr v3, v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/e/d/b;

    iget-object v3, v3, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    .line 28
    iget-object v5, v3, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v3}, Le/q/f/a/e/d/c;->i()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/e/d/b;

    iget-object v3, v3, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Le/q/f/a/e/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 30
    :cond_6
    iget-object v3, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    .line 31
    iget-object v5, v3, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v3}, Le/q/f/a/e/d/c;->i()I

    move-result v3

    const/4 v6, 0x2

    sub-int/2addr v3, v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/e/d/b;

    iget-object v3, v3, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    .line 33
    iget-object v5, v3, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v3}, Le/q/f/a/e/d/c;->i()I

    move-result v3

    const/4 v6, 0x3

    sub-int/2addr v3, v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/e/d/b;

    iget-object v3, v3, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    .line 36
    iget-object v5, v3, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v3}, Le/q/f/a/e/d/c;->i()I

    move-result v3

    const/4 v6, 0x3

    sub-int/2addr v3, v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/e/d/b;

    iget-object v3, v3, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    .line 38
    iget-object v5, v3, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v3}, Le/q/f/a/e/d/c;->i()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/e/d/b;

    iget-object v3, v3, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Le/q/f/a/e/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :cond_7
    iget-object v2, v1, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    const-string v3, "INSTRNO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    const-string v3, "FLIGHT"

    invoke-virtual {v2, v12, v3}, Le/q/f/a/e/d/c;->c(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    const-string v3, "TOTAL"

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Le/q/f/a/e/d/c;->c(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "vendor"

    const-string v3, "netflix"

    .line 41
    invoke-virtual {v1, v2, v3}, Le/q/f/a/e/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 42
    :catch_0
    :cond_8
    :goto_2
    iget-object v2, v0, Le/q/f/a/e/c/a;->c:Le/q/f/a/e/d/c;

    .line 43
    iget-object v2, v2, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v2, v0, Le/q/f/a/e/c/a;->a:Le/q/f/a/e/d/c;

    .line 45
    iget-object v2, v2, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual/range {p1 .. p1}, Le/q/f/a/e/d/b;->f()Z

    move-result v2

    if-nez v2, :cond_9

    .line 47
    iget-object v2, v0, Le/q/f/a/e/c/a;->b:Le/q/f/a/e/d/c;

    .line 48
    iget-object v2, v2, Le/q/f/a/e/d/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iget-object v1, p0, Le/q/f/a/e/c/a;->d:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
