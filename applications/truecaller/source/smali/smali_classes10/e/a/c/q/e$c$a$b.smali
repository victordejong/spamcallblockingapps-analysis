.class public final Le/a/c/q/e$c$a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/q/e$c$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ls1/l<",
        "+",
        "Lcom/truecaller/insights/models/InsightsDomain;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/l<",
        "+",
        "Le/a/c/y/m;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.insightsui.InsightsUiManagerImpl$getPagedSmsBackup$1$1"
    f = "InsightsUiManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/q/e$c$a;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/c/q/e$c$a;)V
    .locals 0

    iput-object p2, p0, Le/a/c/q/e$c$a$b;->f:Le/a/c/q/e$c$a;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance v0, Le/a/c/q/e$c$a$b;

    iget-object v1, p0, Le/a/c/q/e$c$a$b;->f:Le/a/c/q/e$c$a;

    invoke-direct {v0, p2, v1}, Le/a/c/q/e$c$a$b;-><init>(Ls1/w/d;Le/a/c/q/e$c$a;)V

    check-cast p1, Ls1/l;

    .line 1
    iget-object p1, p1, Ls1/l;->a:Ljava/lang/Object;

    .line 2
    iput-object p1, v0, Le/a/c/q/e$c$a$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/q/e$c$a$b;

    iget-object v1, p0, Le/a/c/q/e$c$a$b;->f:Le/a/c/q/e$c$a;

    invoke-direct {v0, p2, v1}, Le/a/c/q/e$c$a$b;-><init>(Ls1/w/d;Le/a/c/q/e$c$a;)V

    check-cast p1, Ls1/l;

    .line 2
    iget-object p1, p1, Ls1/l;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, v0, Le/a/c/q/e$c$a$b;->e:Ljava/lang/Object;

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/q/e$c$a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v0, v1, Le/a/c/q/e$c$a$b;->e:Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain;

    .line 3
    iget-object v2, v1, Le/a/c/q/e$c$a$b;->f:Le/a/c/q/e$c$a;

    iget-object v2, v2, Le/a/c/q/e$c$a;->b:Le/a/c/q/e;

    .line 4
    iget-object v3, v2, Le/a/c/q/e;->h:Le/a/c/y/n/d;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    instance-of v2, v0, Lcom/truecaller/insights/models/InsightsDomain$b;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain$b;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$b;->c()Lw3/b/a/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lw3/b/a/b;->O(I)Lw3/b/a/b;

    move-result-object v4

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/truecaller/insights/models/InsightsDomain$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x1ffdff

    invoke-static/range {v4 .. v28}, Lcom/truecaller/insights/models/InsightsDomain$b;->a(Lcom/truecaller/insights/models/InsightsDomain$b;Lcom/truecaller/insights/binders/utils/OrderStatus;Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lw3/b/a/b;JZLe/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;I)Lcom/truecaller/insights/models/InsightsDomain$b;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain$b;

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 7
    :goto_0
    invoke-virtual {v3, v2}, Le/a/c/y/n/d;->a(Lcom/truecaller/insights/models/InsightsDomain;)Le/a/c/y/l;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 8
    invoke-static {v0}, Le/a/c/p/a;->F0(Lcom/truecaller/insights/models/InsightsDomain;)Lw3/b/a/b;

    move-result-object v11

    .line 9
    new-instance v2, Le/a/c/y/m;

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v5

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getConversationId()J

    move-result-wide v7

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v12

    .line 14
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getSender()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Le/a/c/q/e$c$a$b;->f:Le/a/c/q/e$c$a;

    iget-object v4, v4, Le/a/c/q/e$c$a;->b:Le/a/c/q/e;

    .line 15
    iget-object v4, v4, Le/a/c/q/e;->i:Le/a/c/b/e;

    .line 16
    invoke-interface {v4}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 17
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 18
    iget-object v3, v1, Le/a/c/q/e$c$a$b;->f:Le/a/c/q/e$c$a;

    iget-object v3, v3, Le/a/c/q/e$c$a;->b:Le/a/c/q/e;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v4

    invoke-static {v3, v4}, Le/a/c/q/e;->b(Le/a/c/q/e;Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v15

    .line 19
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getActionState()Le/a/c/r/j/b;

    move-result-object v16

    move-object v4, v2

    .line 20
    invoke-direct/range {v4 .. v16}, Le/a/c/y/m;-><init>(JJLjava/lang/String;Le/a/c/y/l;Lw3/b/a/b;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/r/j/b;)V

    goto :goto_1

    .line 21
    :cond_2
    new-instance v2, Le/a/c/q/b;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/c/q/b;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 22
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    :goto_1
    new-instance v0, Ls1/l;

    invoke-direct {v0, v2}, Ls1/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
