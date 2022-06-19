.class public final Le/a/b/o/b/c$a$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/o/b/c$a$a;->run()V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.governmentServices.config.GovernmentServicesConfigManagerImpl$saveDataToDbAsync$2$1$1$1"
    f = "GovernmentServicesConfigManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/b/o/b/c$a$a;


# direct methods
.method public constructor <init>(Le/a/b/o/b/c$a$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/o/b/c$a$a$a;

    iget-object v0, p0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    invoke-direct {p1, v0, p2}, Le/a/b/o/b/c$a$a$a;-><init>(Le/a/b/o/b/c$a$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/o/b/c$a$a$a;

    iget-object v0, p0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    invoke-direct {p1, v0, p2}, Le/a/b/o/b/c$a$a$a;-><init>(Le/a/b/o/b/c$a$a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/o/b/c$a$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object v1, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v1, v1, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v1, v1, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v1, v1, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 3
    iget-object v1, v1, Le/a/b/o/b/d;->d:Le/a/b/o/c/a/a;

    .line 4
    invoke-interface {v1}, Le/a/b/o/c/a/a;->a()V

    .line 5
    iget-object v1, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v1, v1, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v1, v1, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v1, v1, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 6
    iget-object v1, v1, Le/a/b/o/b/d;->f:Le/a/b/o/c/a/c;

    .line 7
    invoke-interface {v1}, Le/a/b/o/c/a/c;->c()V

    .line 8
    iget-object v1, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v1, v1, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v1, v1, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v1, v1, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 9
    iget-object v1, v1, Le/a/b/o/b/d;->e:Le/a/b/o/c/a/e;

    .line 10
    invoke-interface {v1}, Le/a/b/o/c/a/e;->c()V

    .line 11
    iget-object v1, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v1, v1, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v1, v1, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v1, v1, Le/a/b/o/b/c;->g:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;

    .line 13
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getState()Ljava/lang/String;

    move-result-object v3

    .line 14
    iget-object v4, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v4, v4, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v4, v4, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v4, v4, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 15
    iget-object v4, v4, Le/a/b/o/b/d;->e:Le/a/b/o/c/a/e;

    .line 16
    invoke-interface {v4, v3}, Le/a/b/o/c/a/e;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 17
    iget-object v6, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v6, v6, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v6, v6, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v6, v6, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 18
    iget-object v6, v6, Le/a/b/o/b/d;->e:Le/a/b/o/c/a/e;

    .line 19
    invoke-interface {v6, v3}, Le/a/b/o/c/a/e;->a(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 20
    iget-object v4, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v4, v4, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v4, v4, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v4, v4, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 21
    iget-object v4, v4, Le/a/b/o/b/d;->e:Le/a/b/o/c/a/e;

    .line 22
    new-instance v5, Le/a/b/o/c/b/c;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v7, v6}, Le/a/b/o/c/b/c;-><init>(Ljava/lang/String;II)V

    invoke-interface {v4, v5}, Le/a/b/o/c/a/e;->d(Le/a/b/o/c/b/c;)J

    move-result-wide v4

    .line 23
    :cond_0
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getDistrict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v14, 0x1

    if-nez v6, :cond_1

    move v6, v14

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    if-eqz v6, :cond_2

    .line 24
    iget-object v6, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v6, v6, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v6, v6, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v6, v6, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 25
    iget-object v6, v6, Le/a/b/o/b/d;->e:Le/a/b/o/c/a/e;

    .line 26
    invoke-interface {v6, v3, v14}, Le/a/b/o/c/a/e;->f(Ljava/lang/String;I)V

    .line 27
    :cond_2
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getDistrict()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    .line 28
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    move v7, v14

    :cond_3
    if-nez v7, :cond_5

    .line 29
    iget-object v3, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v3, v3, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v3, v3, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v3, v3, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 30
    iget-object v3, v3, Le/a/b/o/b/d;->f:Le/a/b/o/c/a/c;

    .line 31
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getDistrict()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v4, v5}, Le/a/b/o/c/a/c;->d(Ljava/lang/String;J)J

    move-result-wide v6

    .line 32
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 33
    iget-object v6, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v6, v6, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v6, v6, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v6, v6, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 34
    iget-object v6, v6, Le/a/b/o/b/d;->f:Le/a/b/o/c/a/c;

    .line 35
    invoke-interface {v6, v9, v4, v5}, Le/a/b/o/c/a/c;->b(Ljava/lang/String;J)Z

    move-result v6

    if-nez v6, :cond_4

    .line 36
    iget-object v3, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v3, v3, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v3, v3, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v3, v3, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 37
    iget-object v3, v3, Le/a/b/o/b/d;->f:Le/a/b/o/c/a/c;

    .line 38
    new-instance v6, Le/a/b/o/c/b/a;

    const/4 v10, 0x0

    const/4 v13, 0x2

    move-object v8, v6

    move-wide v11, v4

    invoke-direct/range {v8 .. v13}, Le/a/b/o/c/b/a;-><init>(Ljava/lang/String;IJI)V

    invoke-interface {v3, v6}, Le/a/b/o/c/a/c;->f(Le/a/b/o/c/b/a;)J

    move-result-wide v6

    .line 39
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 40
    :cond_4
    iget-object v6, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v6, v6, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v6, v6, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v6, v6, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 41
    iget-object v6, v6, Le/a/b/o/b/d;->f:Le/a/b/o/c/a/c;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 43
    invoke-interface {v6, v7, v8, v14}, Le/a/b/o/c/a/c;->a(JI)V

    :cond_5
    move-object/from16 v25, v3

    .line 44
    new-instance v3, Le/a/b/o/c/b/b;

    .line 45
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v16

    .line 46
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getPhoneNumber()Ljava/lang/String;

    move-result-object v17

    .line 47
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getDesignation()Ljava/lang/String;

    move-result-object v18

    .line 48
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getDepartmentName()Ljava/lang/String;

    move-result-object v19

    .line 49
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getEmail()Ljava/lang/String;

    move-result-object v20

    .line 50
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getFax()Ljava/lang/String;

    move-result-object v21

    .line 51
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getAddress()Ljava/lang/String;

    move-result-object v22

    .line 52
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getMinistry()Ljava/lang/String;

    move-result-object v23

    .line 53
    invoke-virtual {v2}, Lcom/truecaller/bizmon/governmentServices/config/ContactResponse;->getRes()Ljava/lang/String;

    move-result-object v24

    .line 54
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object v15, v3

    move-object/from16 v26, v2

    .line 55
    invoke-direct/range {v15 .. v26}, Le/a/b/o/c/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 56
    iget-object v2, v0, Le/a/b/o/b/c$a$a$a;->e:Le/a/b/o/b/c$a$a;

    iget-object v2, v2, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iget-object v2, v2, Le/a/b/o/b/c$a;->f:Le/a/b/o/b/c;

    iget-object v2, v2, Le/a/b/o/b/c;->f:Le/a/b/o/b/d;

    .line 57
    iget-object v2, v2, Le/a/b/o/b/d;->d:Le/a/b/o/c/a/a;

    .line 58
    invoke-interface {v2, v3}, Le/a/b/o/c/a/a;->b(Le/a/b/o/c/b/b;)J

    goto/16 :goto_0

    .line 59
    :cond_6
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
