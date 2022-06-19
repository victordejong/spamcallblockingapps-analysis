.class public final Le/a/c/f/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/truecaller/insights/models/InsightsDomain$Bill;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/c/b/j;

.field public final b:Le/a/c/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/b/j;Le/a/c/j/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/b/j;",
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statusProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payBillDeepLinkFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/f/j/b;->a:Le/a/c/b/j;

    iput-object p2, p0, Le/a/c/f/j/b;->b:Le/a/c/j/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain$Bill;Le/a/c/r/j/b;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain$Bill;",
            "Le/a/c/r/j/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/a/c/r/j/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/f/j/b;->a:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->N()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v4, Le/a/c/r/j/a$d;->c:Le/a/c/r/j/a$d;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v2}, Le/a/m0/a1$k;->y(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Le/a/c/r/j/a$c;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v11

    const/4 v4, 0x0

    const/16 v15, 0x40

    const/4 v13, 0x0

    const/16 v14, 0x40

    move-object v5, v3

    move-object v8, v2

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v14}, Le/a/c/r/j/a$c;-><init>(JLjava/lang/String;Ljava/lang/String;ZLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v3, Le/a/c/r/j/a$g;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v11

    move-object v5, v3

    move-object v9, v2

    move-object v13, v4

    move v14, v15

    invoke-direct/range {v5 .. v14}, Le/a/c/r/j/a$g;-><init>(JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lw3/b/a/b;

    move-object/from16 v4, p2

    .line 8
    iget-object v4, v4, Le/a/c/r/j/b;->h:Ljava/lang/String;

    .line 9
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lw3/b/a/b;-><init>(J)V

    .line 10
    new-instance v4, Lw3/b/a/b;

    invoke-direct {v4}, Lw3/b/a/b;-><init>()V

    .line 11
    invoke-virtual {v1, v4}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v1

    if-lez v1, :cond_1

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sget-object v4, Le/a/c/r/j/a$d;->c:Le/a/c/r/j/a$d;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v2}, Le/a/m0/a1$k;->y(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v3, Le/a/c/r/j/a$c;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v11

    const/4 v4, 0x0

    const/16 v15, 0x40

    const/4 v13, 0x0

    const/16 v14, 0x40

    move-object v5, v3

    move-object v8, v2

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v14}, Le/a/c/r/j/a$c;-><init>(JLjava/lang/String;Ljava/lang/String;ZLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v3, Le/a/c/r/j/a$g;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v11

    move-object v5, v3

    move-object v9, v2

    move-object v13, v4

    move v14, v15

    invoke-direct/range {v5 .. v14}, Le/a/c/r/j/a$g;-><init>(JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object v1
.end method

.method public final b(Lcom/truecaller/insights/models/InsightsDomain$Bill;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain$Bill;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/a/c/r/j/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v2, v0, Le/a/c/f/j/b;->a:Le/a/c/b/j;

    invoke-interface {v2}, Le/a/c/b/j;->d0()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueInsType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "creditcard"

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v2

    const-string v4, "recharge_expiry"

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrlType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "recharge"

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Le/a/c/r/j/a$e;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Recharge"

    invoke-direct {v2, v4, v3}, Le/a/c/r/j/a$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v2

    const-string v4, "prepaid_bill"

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueInsType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrlType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payat"

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    new-instance v2, Le/a/c/r/j/a$e;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Pay Bill"

    invoke-direct {v2, v4, v3}, Le/a/c/r/j/a$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    move-object/from16 v3, p1

    goto :goto_3

    .line 8
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v2

    sget-object v3, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    if-ne v2, v3, :cond_4

    .line 9
    iget-object v2, v0, Le/a/c/f/j/b;->b:Le/a/c/j/e;

    move-object/from16 v3, p1

    invoke-interface {v2, v3}, Le/a/c/j/e;->a(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Le/a/c/j/f;

    move-result-object v2

    check-cast v2, Le/a/c/j/f$a;

    goto :goto_2

    :cond_4
    move-object/from16 v3, p1

    .line 10
    iget-object v2, v0, Le/a/c/f/j/b;->b:Le/a/c/j/e;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getVendorName()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-interface {v2, v4, v5, v6, v7}, Le/a/c/j/e;->c(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)Le/a/c/j/f;

    move-result-object v2

    check-cast v2, Le/a/c/j/f$a;

    :goto_2
    move-object v7, v2

    if-eqz v7, :cond_5

    .line 16
    new-instance v2, Le/a/c/r/j/a$a$b;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x180

    move-object v4, v2

    move-object/from16 v12, p2

    invoke-direct/range {v4 .. v15}, Le/a/c/r/j/a$a$b;-><init>(JLe/a/c/j/f$a;Ljava/lang/String;ZLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    :goto_3
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v4, v5}, Le/a/m0/a1$k;->y(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 18
    new-instance v15, Le/a/c/r/j/a$a$a;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc0

    move-object v4, v15

    move-object/from16 v11, p2

    invoke-direct/range {v4 .. v14}, Le/a/c/r/j/a$a$a;-><init>(JLjava/lang/String;ZLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v4, Le/a/c/r/j/a$c;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v12

    const/4 v5, 0x0

    const/16 v16, 0x40

    const/4 v14, 0x0

    const/16 v15, 0x40

    move-object v6, v4

    move-object v9, v2

    move-object/from16 v13, p2

    invoke-direct/range {v6 .. v15}, Le/a/c/r/j/a$c;-><init>(JLjava/lang/String;Ljava/lang/String;ZLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v4, Le/a/c/r/j/a$g;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v12

    move-object v6, v4

    move-object v10, v2

    move-object v14, v5

    move/from16 v15, v16

    invoke-direct/range {v6 .. v15}, Le/a/c/r/j/a$g;-><init>(JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
