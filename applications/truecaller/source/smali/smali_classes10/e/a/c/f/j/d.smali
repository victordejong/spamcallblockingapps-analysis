.class public final Le/a/c/f/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/truecaller/insights/models/InsightsDomain$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/f/j/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain$f;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/a/c/r/j/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x4bce7b90

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_3

    const v5, 0x17e80

    if-eq v4, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v4, "bus"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move v6, v7

    :cond_1
    if-eqz v6, :cond_2

    .line 5
    sget-object v3, Le/a/c/r/j/a$d;->c:Le/a/c/r/j/a$d;

    goto/16 :goto_1

    .line 6
    :cond_2
    new-instance v3, Le/a/c/r/j/a$h$a;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getMsgId()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getSender()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->isIM()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->h()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Le/a/c/f/j/d;->a:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x60

    move-object v8, v3

    invoke-direct/range {v8 .. v17}, Le/a/c/r/j/a$h$a;-><init>(JLjava/lang/String;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Le/a/c/r/j/c;I)V

    goto :goto_1

    :cond_3
    const-string v4, "flight"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->H0(Lcom/truecaller/insights/models/InsightsDomain$f;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->I0(Lcom/truecaller/insights/models/InsightsDomain$f;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    move v6, v7

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cancel"

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v7

    if-eqz v3, :cond_5

    .line 9
    new-instance v3, Le/a/c/r/j/a$h$b;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getMsgId()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getSender()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->isIM()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrl()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Le/a/c/f/j/d;->a:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x60

    move-object v8, v3

    invoke-direct/range {v8 .. v17}, Le/a/c/r/j/a$h$b;-><init>(JLjava/lang/String;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Le/a/c/r/j/c;I)V

    goto :goto_1

    .line 10
    :cond_5
    sget-object v3, Le/a/c/r/j/a$d;->c:Le/a/c/r/j/a$d;

    goto :goto_1

    .line 11
    :cond_6
    :goto_0
    sget-object v3, Le/a/c/r/j/a$d;->c:Le/a/c/r/j/a$d;

    .line 12
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 13
    invoke-static {v1, v3, v7}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v4, Le/a/c/r/j/a$c;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getMsgId()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getSender()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->isIM()Z

    move-result v13

    .line 15
    iget-object v14, v1, Lcom/truecaller/insights/models/InsightsDomain$f;->A:Lcom/truecaller/insights/models/DomainOrigin;

    const/16 v16, 0x0

    const/16 v17, 0x40

    move-object v8, v4

    move-object v11, v3

    move-object/from16 v15, p2

    .line 16
    invoke-direct/range {v8 .. v17}, Le/a/c/r/j/a$c;-><init>(JLjava/lang/String;Ljava/lang/String;ZLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v4, Le/a/c/r/j/a$d;->c:Le/a/c/r/j/a$d;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v4, Le/a/c/r/j/a$g;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getMsgId()J

    move-result-wide v9

    .line 19
    iget-object v11, v1, Lcom/truecaller/insights/models/InsightsDomain$f;->A:Lcom/truecaller/insights/models/DomainOrigin;

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getSender()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->isIM()Z

    move-result v14

    move-object v8, v4

    move-object v12, v3

    invoke-direct/range {v8 .. v17}, Le/a/c/r/j/a$g;-><init>(JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method
