.class public final Le/a/c/j/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/j/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/c/j/e<",
        "Le/a/c/j/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/b0/m/d/a;


# direct methods
.method public constructor <init>(Le/a/b0/m/d/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "senderInfoManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/j/g;->a:Le/a/b0/m/d/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Le/a/c/j/f;
    .locals 10

    const-string v0, "bill"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4
    invoke-static {p1}, Le/a/m0/a1$k;->C(Lcom/truecaller/insights/models/InsightsDomain$Bill;)D

    move-result-wide v0

    double-to-float v4, v0

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {p1}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p0

    .line 7
    invoke-static/range {v1 .. v9}, Le/a/m0/a1$k;->P(Le/a/c/j/e;Ljava/lang/String;Ljava/lang/Long;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Le/a/c/j/f;

    move-result-object p1

    check-cast p1, Le/a/c/j/f$a;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Long;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/c/j/f;
    .locals 9

    const-string v0, "senderId"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/c/j/g;->a:Le/a/b0/m/d/a;

    invoke-interface {v0, p1, p6}, Le/a/b0/m/d/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 3
    iget-object v0, p0, Le/a/c/j/g;->a:Le/a/b0/m/d/a;

    invoke-interface {v0, p1}, Le/a/b0/m/d/a;->b(Ljava/lang/String;)Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    move-result-object v6

    if-eqz p6, :cond_0

    .line 4
    new-instance v0, Le/a/c/j/f$a;

    .line 5
    new-instance v8, Le/a/c/j/a;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Le/a/c/j/a;-><init>(Ljava/lang/String;Ljava/lang/Long;FLjava/lang/String;Lcom/truecaller/common/payments/senderinfo/SenderInfo;Ljava/lang/String;)V

    .line 6
    invoke-direct {v0, p6, v8}, Le/a/c/j/f$a;-><init>(Ljava/lang/String;Le/a/c/j/a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)Le/a/c/j/f;
    .locals 15

    const-string v1, "sender"

    const-string v3, "accountNo"

    const-string v5, "type"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    .line 2
    invoke-static/range {v6 .. v14}, Le/a/m0/a1$k;->P(Le/a/c/j/e;Ljava/lang/String;Ljava/lang/Long;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Le/a/c/j/f;

    move-result-object v0

    check-cast v0, Le/a/c/j/f$a;

    return-object v0
.end method
