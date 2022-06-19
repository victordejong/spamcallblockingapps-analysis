.class public final Le/a/e3/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/i/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e3/i/c$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/e3/k/s/c;

.field public final b:Le/a/e3/i/c$a;

.field public final c:Le/a/d3/h;

.field public final d:Le/a/d3/j;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e3/k/i;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/o/c;

.field public final g:Le/a/p5/j0;

.field public final h:Le/a/k/h;

.field public final i:Le/a/d3/d;


# direct methods
.method public constructor <init>(Le/a/e3/k/s/c;Le/a/e3/i/c$a;Le/a/d3/h;Le/a/d3/j;Lo3/a;Le/a/o/c;Le/a/p5/j0;Le/a/k/h;Le/a/d3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/e3/k/s/c;",
            "Le/a/e3/i/c$a;",
            "Le/a/d3/h;",
            "Le/a/d3/j;",
            "Lo3/a<",
            "Le/a/e3/k/i;",
            ">;",
            "Le/a/o/c;",
            "Le/a/p5/j0;",
            "Le/a/k/h;",
            "Le/a/d3/d;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callingCache"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingNetworkApi"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCardRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushCallerIdStubManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlertSimSupport"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCardManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e3/i/c;->a:Le/a/e3/k/s/c;

    iput-object p2, p0, Le/a/e3/i/c;->b:Le/a/e3/i/c$a;

    iput-object p3, p0, Le/a/e3/i/c;->c:Le/a/d3/h;

    iput-object p4, p0, Le/a/e3/i/c;->d:Le/a/d3/j;

    iput-object p5, p0, Le/a/e3/i/c;->e:Lo3/a;

    iput-object p6, p0, Le/a/e3/i/c;->f:Le/a/o/c;

    iput-object p7, p0, Le/a/e3/i/c;->g:Le/a/p5/j0;

    iput-object p8, p0, Le/a/e3/i/c;->h:Le/a/k/h;

    iput-object p9, p0, Le/a/e3/i/c;->i:Le/a/d3/d;

    return-void
.end method

.method public static b(Le/a/e3/i/c;Le/a/e3/e/b;Ln3/k/h/c;ZI)Le/a/e3/e/b;
    .locals 2

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 1
    new-instance p2, Ln3/k/h/c;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 2
    iget-boolean p3, p1, Le/a/e3/e/b;->e:Z

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/a/e3/i/c;->a(Le/a/e3/e/b;Ln3/k/h/c;Z)Le/a/e3/e/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Le/a/e3/e/b;Ln3/k/h/c;Z)Le/a/e3/e/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/e3/e/b;",
            "Ln3/k/h/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;Z)",
            "Le/a/e3/e/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Ln3/k/h/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 2
    iget-object p2, p2, Ln3/k/h/c;->b:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 3
    iget-object v3, p1, Le/a/e3/e/b;->b:Ljava/lang/String;

    iget-boolean v5, p1, Le/a/e3/e/b;->d:Z

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "callState"

    invoke-static {v3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e3/e/b;

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Le/a/e3/e/b;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/Number;)Ln3/k/h/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/Number;",
            ")",
            "Ln3/k/h/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/e3/i/c;->b:Le/a/e3/i/c$a;

    invoke-virtual {p3}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Le/a/e3/i/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object p2

    .line 2
    :try_start_0
    invoke-interface {p2}, Lx3/b;->execute()Lx3/a0;

    move-result-object p2

    .line 3
    iget-object v0, p0, Le/a/e3/i/c;->a:Le/a/e3/k/s/c;

    .line 4
    iget-object v1, p2, Lx3/a0;->a:Lu3/k0;

    const-string v2, "response.raw()"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p3, p1, v1}, Le/a/e3/k/s/c;->c(Lcom/truecaller/data/entity/Number;Ljava/lang/String;Lu3/k0;)V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    iget-object p2, p2, Lx3/a0;->a:Lu3/k0;

    .line 8
    iget-object p2, p2, Lu3/k0;->d:Ljava/lang/String;

    .line 9
    new-instance p3, Ln3/k/h/c;

    invoke-direct {p3, p1, p2}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "Pair.create(true, response.message())"

    .line 10
    invoke-static {p3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    .line 11
    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    .line 12
    new-instance p3, Ln3/k/h/c;

    invoke-direct {p3, p1, p2}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "Pair.create(false, null)"

    .line 13
    invoke-static {p3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3
.end method

.method public e(Ljava/lang/String;Lcom/truecaller/data/entity/Number;)Le/a/r2/x;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/Number;",
            ")",
            "Le/a/r2/x<",
            "Le/a/e3/e/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    const-string v2, "callState"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "number"

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v12, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/data/entity/Number;->h()Ljava/lang/String;

    move-result-object v13

    .line 2
    new-instance v2, Le/a/e3/i/d;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v9, v3}, Le/a/e3/i/d;-><init>(Le/a/e3/i/c;Lcom/truecaller/data/entity/Number;Ls1/w/d;)V

    const/4 v4, 0x1

    invoke-static {v3, v2, v4, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/truecaller/data/entity/CallContextMessage;

    .line 3
    new-instance v2, Le/a/e3/i/f;

    invoke-direct {v2, v1, v9, v3}, Le/a/e3/i/f;-><init>(Le/a/e3/i/c;Lcom/truecaller/data/entity/Number;Ls1/w/d;)V

    invoke-static {v3, v2, v4, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    .line 4
    new-instance v8, Le/a/e3/e/b;

    const/4 v2, 0x0

    if-eqz v14, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    const/4 v7, 0x0

    const/16 v16, 0x14

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move-object/from16 v4, p1

    move-object/from16 v17, v8

    move/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Le/a/e3/e/b;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZI)V

    if-eqz v13, :cond_24

    .line 5
    invoke-static {v13}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_14

    :cond_1
    const-string v2, "initiated"

    .line 6
    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v14, :cond_3

    if-eqz v15, :cond_2

    .line 7
    iget-object v3, v15, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_5

    .line 8
    iget-object v3, v1, Le/a/e3/i/c;->a:Le/a/e3/k/s/c;

    invoke-interface {v3, v9, v0}, Le/a/e3/k/s/c;->a(Lcom/truecaller/data/entity/Number;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_14

    .line 9
    :cond_5
    new-instance v3, Le/a/e3/i/e;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Le/a/e3/i/e;-><init>(Le/a/e3/i/c;Ls1/w/d;)V

    const/4 v5, 0x1

    invoke-static {v4, v3, v5, v4}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_14

    .line 10
    :cond_6
    iget-object v3, v1, Le/a/e3/i/c;->c:Le/a/d3/h;

    invoke-interface {v3}, Le/a/d3/h;->a()Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_23

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 12
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    const-string v6, "[^\\d]"

    const-string v7, ""

    .line 13
    invoke-static {v6, v5, v7}, Le/d/c/a/a;->A2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    .line 15
    :cond_a
    invoke-static {v5}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    :goto_6
    if-eqz v5, :cond_b

    .line 16
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/Phone;->newBuilder()Lcom/truecaller/api/services/callerid/v1/model/Phone$b;

    move-result-object v7

    .line 17
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18
    iget-object v8, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v8, Lcom/truecaller/api/services/callerid/v1/model/Phone;

    invoke-static {v8, v5, v6}, Lcom/truecaller/api/services/callerid/v1/model/Phone;->access$1000(Lcom/truecaller/api/services/callerid/v1/model/Phone;J)V

    .line 19
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/truecaller/api/services/callerid/v1/model/Phone;

    goto :goto_9

    .line 20
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 21
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v6, 0x1

    :goto_8
    if-eqz v6, :cond_e

    const/4 v5, 0x0

    .line 22
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_f

    if-eqz v6, :cond_f

    .line 23
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;->newBuilder()Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone$a;

    move-result-object v7

    .line 24
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 25
    iget-object v8, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v8, Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;

    invoke-static {v8, v5}, Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;->access$100(Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 27
    iget-object v5, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;

    invoke-static {v5, v6}, Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;->access$400(Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;

    .line 29
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/Phone;->newBuilder()Lcom/truecaller/api/services/callerid/v1/model/Phone$b;

    move-result-object v6

    .line 30
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 31
    iget-object v7, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/truecaller/api/services/callerid/v1/model/Phone;

    invoke-static {v7, v5}, Lcom/truecaller/api/services/callerid/v1/model/Phone;->access$1200(Lcom/truecaller/api/services/callerid/v1/model/Phone;Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;)V

    .line 32
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/truecaller/api/services/callerid/v1/model/Phone;

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_22

    .line 33
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0xed73f15

    const-string v8, "Pair.create(true, respon\u2026isInitialized.toString())"

    const-string v13, "Pair.create(false, null)"

    if-eq v6, v7, :cond_14

    const v2, 0x5c2caba

    if-eq v6, v2, :cond_10

    goto/16 :goto_14

    :cond_10
    const-string v2, "ended"

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 35
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;->newBuilder()Lcom/truecaller/api/services/callerid/v1/CallEnded$Request$a;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 37
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;

    invoke-static {v2, v3}, Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;->access$400(Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;)V

    .line 38
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 39
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;

    invoke-static {v2, v5}, Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;->access$100(Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;Lcom/truecaller/api/services/callerid/v1/model/Phone;)V

    .line 40
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;

    .line 41
    :try_start_0
    iget-object v2, v1, Le/a/e3/i/c;->d:Le/a/d3/j;

    invoke-interface {v2, v12}, Le/a/f4/b/h/g;->c(Le/a/b0/b/e;)Lp3/a/q1/c;

    move-result-object v2

    check-cast v2, Le/a/t2/a/a/a/b$a;

    if-eqz v2, :cond_12

    .line 42
    invoke-virtual {v2, v0}, Le/a/t2/a/a/a/b$a;->c(Lcom/truecaller/api/services/callerid/v1/CallEnded$Request;)Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 43
    iget-object v2, v1, Le/a/e3/i/c;->a:Le/a/e3/k/s/c;

    invoke-interface {v2, v9, v0}, Le/a/e3/k/s/c;->b(Lcom/truecaller/data/entity/Number;Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;)V

    .line 44
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v2, Ln3/k/h/c;

    invoke-direct {v2, v10, v0}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 47
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_11

    goto :goto_a

    .line 48
    :cond_11
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_13

    :goto_a
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 49
    :cond_12
    new-instance v2, Ln3/k/h/c;

    const/4 v0, 0x0

    invoke-direct {v2, v11, v0}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    invoke-static {v2, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b
    const/4 v0, 0x0

    move-object/from16 v6, v17

    .line 51
    invoke-static {v1, v6, v2, v0, v4}, Le/a/e3/i/c;->b(Le/a/e3/i/c;Le/a/e3/e/b;Ln3/k/h/c;ZI)Le/a/e3/e/b;

    move-result-object v8

    goto/16 :goto_15

    .line 52
    :cond_13
    throw v0

    :cond_14
    move-object/from16 v6, v17

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "request.videoCallerId"

    .line 54
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;->newBuilder()Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request$a;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 56
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;->access$400(Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;)V

    .line 57
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 58
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;

    invoke-static {v4, v5}, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;->access$100(Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;Lcom/truecaller/api/services/callerid/v1/model/Phone;)V

    const-string v4, "CallInitiated.Request\n  \u2026         .setPhone(phone)"

    .line 59
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v14, :cond_15

    goto :goto_e

    .line 60
    :cond_15
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->newBuilder()Lcom/truecaller/api/services/callerid/v1/model/CallContext$b;

    move-result-object v4

    .line 61
    iget-object v5, v14, Lcom/truecaller/data/entity/CallContextMessage;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 63
    iget-object v7, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v7, v5}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->access$200(Lcom/truecaller/api/services/callerid/v1/model/CallContext;Ljava/lang/String;)V

    .line 64
    iget-object v5, v14, Lcom/truecaller/data/entity/CallContextMessage;->e:Lcom/truecaller/data/entity/MessageType;

    .line 65
    instance-of v7, v5, Lcom/truecaller/data/entity/MessageType$Preset;

    if-eqz v7, :cond_16

    check-cast v5, Lcom/truecaller/data/entity/MessageType$Preset;

    .line 66
    iget v5, v5, Lcom/truecaller/data/entity/MessageType$Preset;->b:I

    .line 67
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 68
    iget-object v7, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v7, v5}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->access$800(Lcom/truecaller/api/services/callerid/v1/model/CallContext;I)V

    goto :goto_d

    .line 69
    :cond_16
    instance-of v7, v5, Lcom/truecaller/data/entity/MessageType$Custom;

    if-eqz v7, :cond_17

    goto :goto_c

    .line 70
    :cond_17
    instance-of v5, v5, Lcom/truecaller/data/entity/MessageType$Undefined;

    if-eqz v5, :cond_18

    .line 71
    :goto_c
    iget-object v5, v14, Lcom/truecaller/data/entity/CallContextMessage;->c:Ljava/lang/String;

    .line 72
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 73
    iget-object v7, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v7, v5}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->access$500(Lcom/truecaller/api/services/callerid/v1/model/CallContext;Ljava/lang/String;)V

    .line 74
    :cond_18
    :goto_d
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    .line 75
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 76
    iget-object v5, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;->access$700(Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;Lcom/truecaller/api/services/callerid/v1/model/CallContext;)V

    :goto_e
    if-eqz v15, :cond_1b

    .line 77
    invoke-virtual {v3}, Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;->getCard()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    move-result-object v3

    const-string v4, "businessCard.card"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getVideosList()Ljava/util/List;

    move-result-object v3

    const-string v4, "businessCard.card.videosList"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/callerid/v1/model/Video;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/truecaller/api/services/callerid/v1/model/Video;->getVideoId()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_19
    const/4 v3, 0x0

    .line 78
    :goto_f
    iget-object v4, v15, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->a:Ljava/lang/String;

    .line 79
    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1a

    .line 80
    iget-object v3, v15, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->a:Ljava/lang/String;

    .line 81
    iget-object v4, v1, Le/a/e3/i/c;->i:Le/a/d3/d;

    invoke-interface {v4, v3}, Le/a/d3/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_10

    .line 82
    :cond_1a
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;->newBuilder()Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId$b;

    move-result-object v3

    .line 83
    iget-object v4, v15, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->a:Ljava/lang/String;

    .line 84
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 85
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;->access$100(Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;Ljava/lang/String;)V

    .line 86
    iget-object v4, v15, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 87
    iget-wide v4, v4, Lcom/truecaller/videocallerid/data/VideoDetails;->b:J

    .line 88
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 89
    iget-object v7, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;

    invoke-static {v7, v4, v5}, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;->access$400(Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;J)V

    .line 90
    iget-object v4, v15, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 91
    iget-wide v4, v4, Lcom/truecaller/videocallerid/data/VideoDetails;->c:J

    .line 92
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 93
    iget-object v7, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;

    invoke-static {v7, v4, v5}, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;->access$600(Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;J)V

    .line 94
    iget-object v4, v1, Le/a/e3/i/c;->h:Le/a/k/h;

    invoke-interface {v4}, Le/a/k/h;->K()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 96
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;->access$800(Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;Ljava/lang/String;)V

    .line 97
    iget-object v4, v15, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 98
    iget-boolean v4, v4, Lcom/truecaller/videocallerid/data/VideoDetails;->d:Z

    .line 99
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 100
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;->access$1100(Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;Z)V

    .line 101
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;

    .line 102
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 103
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;->access$1000(Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;)V

    .line 104
    :cond_1b
    :goto_10
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    .line 105
    check-cast v2, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;

    .line 106
    :try_start_1
    iget-object v3, v1, Le/a/e3/i/c;->d:Le/a/d3/j;

    invoke-interface {v3, v12}, Le/a/f4/b/h/g;->c(Le/a/b0/b/e;)Lp3/a/q1/c;

    move-result-object v3

    check-cast v3, Le/a/t2/a/a/a/b$a;

    if-eqz v3, :cond_20

    .line 107
    invoke-virtual {v3, v2}, Le/a/t2/a/a/a/b$a;->d(Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;)Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 108
    iget-object v4, v1, Le/a/e3/i/c;->a:Le/a/e3/k/s/c;

    invoke-interface {v4, v9, v3}, Le/a/e3/k/s/c;->b(Lcom/truecaller/data/entity/Number;Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;)V

    .line 109
    invoke-virtual {v2}, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;->hasVideoCallerId()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 110
    iget-object v4, v1, Le/a/e3/i/c;->h:Le/a/k/h;

    const-string v5, "request"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;->getPhone()Lcom/truecaller/api/services/callerid/v1/model/Phone;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 112
    invoke-virtual {v5}, Lcom/truecaller/api/services/callerid/v1/model/Phone;->hasPhone()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 113
    invoke-virtual {v5}, Lcom/truecaller/api/services/callerid/v1/model/Phone;->getPhone()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    .line 114
    :cond_1c
    invoke-virtual {v5}, Lcom/truecaller/api/services/callerid/v1/model/Phone;->getNonNormalizedPhone()Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Lcom/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone;->getPhone()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-static {v5}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    :cond_1d
    const/4 v5, 0x0

    .line 115
    :goto_11
    invoke-virtual {v2}, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;->getVideoCallerId()Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;

    move-result-object v7

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;->getVideoId()Ljava/lang/String;

    move-result-object v7

    const-string v9, "request.videoCallerId.videoId"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/callerid/v1/CallInitiated$Request;->getVideoCallerId()Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;

    move-result-object v2

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/callerid/v1/model/VideoCallerId;->getCallId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "request.videoCallerId.callId"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5, v7, v0}, Le/a/k/h;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1e
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v2, Ln3/k/h/c;

    invoke-direct {v2, v10, v0}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_13

    :catch_1
    move-exception v0

    .line 119
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_1f

    goto :goto_12

    .line 120
    :cond_1f
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_21

    :goto_12
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 121
    :cond_20
    new-instance v2, Ln3/k/h/c;

    const/4 v0, 0x0

    invoke-direct {v2, v11, v0}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    invoke-static {v2, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_13
    const/4 v0, 0x1

    .line 123
    invoke-virtual {v1, v6, v2, v0}, Le/a/e3/i/c;->a(Le/a/e3/e/b;Ln3/k/h/c;Z)Le/a/e3/e/b;

    move-result-object v8

    goto :goto_15

    .line 124
    :cond_21
    throw v0

    :cond_22
    move-object/from16 v6, v17

    const/4 v2, 0x0

    .line 125
    invoke-virtual {v1, v0, v13, v9}, Le/a/e3/i/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/Number;)Ln3/k/h/c;

    move-result-object v0

    invoke-static {v1, v6, v0, v2, v4}, Le/a/e3/i/c;->b(Le/a/e3/i/c;Le/a/e3/e/b;Ln3/k/h/c;ZI)Le/a/e3/e/b;

    move-result-object v8

    goto :goto_15

    :cond_23
    move-object/from16 v6, v17

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v1, v0, v13, v9}, Le/a/e3/i/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/Number;)Ln3/k/h/c;

    move-result-object v0

    invoke-static {v1, v6, v0, v2, v4}, Le/a/e3/i/c;->b(Le/a/e3/i/c;Le/a/e3/e/b;Ln3/k/h/c;ZI)Le/a/e3/e/b;

    move-result-object v8

    goto :goto_15

    :cond_24
    :goto_14
    move-object/from16 v6, v17

    :cond_25
    move-object v8, v6

    .line 127
    :goto_15
    iget-boolean v0, v8, Le/a/e3/e/b;->d:Z

    if-eqz v0, :cond_26

    .line 128
    iget-boolean v0, v8, Le/a/e3/e/b;->e:Z

    if-eqz v0, :cond_26

    .line 129
    iget-boolean v0, v8, Le/a/e3/e/b;->a:Z

    if-nez v0, :cond_26

    .line 130
    iget-object v2, v1, Le/a/e3/i/c;->g:Le/a/p5/j0;

    sget v3, Lcom/truecaller/call_alert/R$string;->context_call_error_network:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    .line 131
    iget-object v0, v1, Le/a/e3/i/c;->f:Le/a/o/c;

    invoke-interface {v0}, Le/a/o/c;->i()Lq3/a/x2/a1;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    .line 132
    :cond_26
    invoke-static {v8}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v2, "Promise.wrap(result)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
