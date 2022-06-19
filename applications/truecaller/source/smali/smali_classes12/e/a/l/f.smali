.class public final Le/a/l/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/p2/g0;

.field public final b:Le/a/l/p2/g0;

.field public final c:Le/a/l/p2/g0;

.field public final d:Le/a/l/p2/g0;

.field public final e:Le/a/l/p2/g0;

.field public final f:Le/a/l/p2/g0;

.field public final g:Le/a/l/p2/g0;

.field public final h:Le/a/l/p2/g0;

.field public final i:Le/a/l/p2/g0;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/l/p2/g0;",
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Le/a/l/p2/g0;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/r5/i0;

.field public final m:Le/a/o5/c2/k;

.field public final n:Le/a/l/p2/b0;

.field public final o:Le/a/x/l;

.field public final p:Le/a/s2/c;

.field public final q:Le/a/q5/d;


# direct methods
.method public constructor <init>(Le/a/r5/i0;Le/a/o5/c2/k;Le/a/l/p2/b0;Le/a/x/l;Le/a/s2/c;Le/a/q5/d;)V
    .locals 26
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const-string v7, "whoViewedMeManager"

    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "partnerConfig"

    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumBlockingFeaturesRepository"

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "ghostCallManager"

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "announceCallerIdManager"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "whatsAppCallerIdManager"

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/a/l/f;->l:Le/a/r5/i0;

    iput-object v2, v0, Le/a/l/f;->m:Le/a/o5/c2/k;

    iput-object v3, v0, Le/a/l/f;->n:Le/a/l/p2/b0;

    iput-object v4, v0, Le/a/l/f;->o:Le/a/x/l;

    iput-object v5, v0, Le/a/l/f;->p:Le/a/s2/c;

    iput-object v6, v0, Le/a/l/f;->q:Le/a/q5/d;

    .line 2
    new-instance v1, Le/a/l/p2/g0;

    const v2, 0x7f120492

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v9, "premiumWhoViewedMe"

    const v10, 0x7f1204a2

    const v11, 0x7f0807e6

    const v12, 0x7f12049e

    const v14, 0x7f0807e3

    const/4 v15, 0x0

    const/16 v16, 0x40

    move-object v8, v1

    .line 4
    invoke-direct/range {v8 .. v16}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    iput-object v1, v0, Le/a/l/f;->a:Le/a/l/p2/g0;

    .line 5
    new-instance v1, Le/a/l/p2/g0;

    const v2, 0x7f12048e

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const-string v18, "premiumIncognitoMode"

    const v19, 0x7f120493

    const v20, 0x7f080732

    const v21, 0x7f12049b

    const v23, 0x7f08072f

    const/16 v24, 0x0

    const/16 v25, 0x40

    move-object/from16 v17, v1

    .line 7
    invoke-direct/range {v17 .. v25}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    iput-object v1, v0, Le/a/l/f;->b:Le/a/l/p2/g0;

    .line 8
    new-instance v1, Le/a/l/p2/g0;

    const v2, 0x7f12048f

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v5, "premiumNoAds"

    const v6, 0x7f120494

    const v7, 0x7f080757

    const v8, 0x7f12049c

    const v10, 0x7f080754

    const/4 v11, 0x0

    const/16 v12, 0x40

    move-object v4, v1

    .line 10
    invoke-direct/range {v4 .. v12}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    iput-object v1, v0, Le/a/l/f;->c:Le/a/l/p2/g0;

    .line 11
    new-instance v1, Le/a/l/p2/g0;

    const v2, 0x7f120485

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const-string v14, "premiumBadge"

    const v15, 0x7f120481

    const v16, 0x7f0806cd

    const v17, 0x7f120499

    const v19, 0x7f0806ca

    const/16 v20, 0x0

    const/16 v21, 0x40

    move-object v13, v1

    .line 13
    invoke-direct/range {v13 .. v21}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    iput-object v1, v0, Le/a/l/f;->d:Le/a/l/p2/g0;

    .line 14
    new-instance v1, Le/a/l/p2/g0;

    const v2, 0x7f12048c

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v5, "premiumContactsRequests"

    const v6, 0x7f120482

    const v7, 0x7f0806f1

    const v8, 0x7f12049a

    const v10, 0x7f0806ee

    move-object v4, v1

    .line 16
    invoke-direct/range {v4 .. v12}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    iput-object v1, v0, Le/a/l/f;->e:Le/a/l/p2/g0;

    .line 17
    invoke-virtual/range {p3 .. p3}, Le/a/l/p2/b0;->a()Ljava/util/List;

    move-result-object v1

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 20
    check-cast v2, Le/a/l/p2/z;

    .line 21
    iget v2, v2, Le/a/l/p2/z;->b:I

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const v8, 0x7f0806d6

    const/4 v9, 0x0

    const/16 v10, 0x40

    .line 23
    new-instance v1, Le/a/l/p2/g0;

    const v4, 0x7f12047d

    const v5, 0x7f0806d9

    const v6, 0x7f120498

    const-string v3, "premiumAdvancedBlocking"

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    iput-object v1, v0, Le/a/l/f;->f:Le/a/l/p2/g0;

    .line 24
    new-instance v2, Le/a/l/p2/g0;

    const v13, 0x7f120497

    const v14, 0x7f08077d

    const v15, 0x7f12049d

    const v3, 0x7f120490

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const v17, 0x7f08071b

    const/16 v18, 0x0

    const/16 v19, 0x40

    const-string v12, "premiumGhostCalls"

    move-object v11, v2

    .line 26
    invoke-direct/range {v11 .. v19}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    iput-object v2, v0, Le/a/l/f;->g:Le/a/l/p2/g0;

    .line 27
    new-instance v12, Le/a/l/p2/g0;

    const v5, 0x7f120480

    const v6, 0x7f080784

    const v7, 0x7f12047f

    const v3, 0x7f12047e

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const v9, 0x7f0806b7

    const/4 v10, 0x0

    const/16 v11, 0x40

    const-string v4, "premiumAnnounceCallerId"

    move-object v3, v12

    .line 29
    invoke-direct/range {v3 .. v11}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    iput-object v12, v0, Le/a/l/f;->h:Le/a/l/p2/g0;

    .line 30
    new-instance v3, Le/a/l/p2/g0;

    const v15, 0x7f1204a1

    const v16, 0x7f080783

    const v17, 0x7f1204a0

    const v4, 0x7f12049f

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const v19, 0x7f0807db

    const/16 v20, 0x0

    const/16 v21, 0x40

    const-string v14, "premiumWhatsappCallerId"

    move-object v13, v3

    .line 32
    invoke-direct/range {v13 .. v21}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    iput-object v3, v0, Le/a/l/f;->i:Le/a/l/p2/g0;

    const/16 v4, 0x9

    new-array v5, v4, [Ls1/k;

    .line 33
    iget-object v6, v0, Le/a/l/f;->a:Le/a/l/p2/g0;

    new-instance v7, Le/a/l/f$a;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v0}, Le/a/l/f$a;-><init>(ILjava/lang/Object;)V

    .line 34
    new-instance v9, Ls1/k;

    invoke-direct {v9, v6, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v5, v8

    .line 35
    iget-object v6, v0, Le/a/l/f;->b:Le/a/l/p2/g0;

    new-instance v7, Le/a/l/f$a;

    const/4 v9, 0x1

    invoke-direct {v7, v9, v0}, Le/a/l/f$a;-><init>(ILjava/lang/Object;)V

    .line 36
    new-instance v10, Ls1/k;

    invoke-direct {v10, v6, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v5, v9

    .line 37
    new-instance v6, Le/a/l/f$a;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v0}, Le/a/l/f$a;-><init>(ILjava/lang/Object;)V

    .line 38
    new-instance v10, Ls1/k;

    invoke-direct {v10, v2, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v5, v7

    .line 39
    new-instance v6, Le/a/l/f$a;

    const/4 v10, 0x3

    invoke-direct {v6, v10, v0}, Le/a/l/f$a;-><init>(ILjava/lang/Object;)V

    .line 40
    new-instance v11, Ls1/k;

    invoke-direct {v11, v12, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v5, v10

    .line 41
    iget-object v6, v0, Le/a/l/f;->c:Le/a/l/p2/g0;

    sget-object v11, Le/a/l/f$b;->c:Le/a/l/f$b;

    .line 42
    new-instance v13, Ls1/k;

    invoke-direct {v13, v6, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v13, v5, v6

    .line 43
    iget-object v11, v0, Le/a/l/f;->d:Le/a/l/p2/g0;

    sget-object v13, Le/a/l/f$b;->d:Le/a/l/f$b;

    .line 44
    new-instance v14, Ls1/k;

    invoke-direct {v14, v11, v13}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x5

    aput-object v14, v5, v11

    .line 45
    iget-object v13, v0, Le/a/l/f;->e:Le/a/l/p2/g0;

    new-instance v14, Le/a/l/f$a;

    invoke-direct {v14, v6, v0}, Le/a/l/f$a;-><init>(ILjava/lang/Object;)V

    .line 46
    new-instance v15, Ls1/k;

    invoke-direct {v15, v13, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x6

    aput-object v15, v5, v13

    .line 47
    new-instance v14, Le/a/l/f$a;

    invoke-direct {v14, v11, v0}, Le/a/l/f$a;-><init>(ILjava/lang/Object;)V

    .line 48
    new-instance v15, Ls1/k;

    invoke-direct {v15, v1, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x7

    aput-object v15, v5, v14

    .line 49
    new-instance v15, Le/a/l/f$a;

    invoke-direct {v15, v13, v0}, Le/a/l/f$a;-><init>(ILjava/lang/Object;)V

    .line 50
    new-instance v14, Ls1/k;

    invoke-direct {v14, v3, v15}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v15, 0x8

    aput-object v14, v5, v15

    .line 51
    invoke-static {v5}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v0, Le/a/l/f;->j:Ljava/util/Map;

    new-array v5, v4, [Le/a/l/p2/g0;

    .line 52
    iget-object v14, v0, Le/a/l/f;->a:Le/a/l/p2/g0;

    aput-object v14, v5, v8

    .line 53
    iget-object v8, v0, Le/a/l/f;->b:Le/a/l/p2/g0;

    aput-object v8, v5, v9

    aput-object v2, v5, v7

    aput-object v12, v5, v10

    aput-object v3, v5, v6

    .line 54
    iget-object v2, v0, Le/a/l/f;->c:Le/a/l/p2/g0;

    aput-object v2, v5, v11

    .line 55
    iget-object v2, v0, Le/a/l/f;->d:Le/a/l/p2/g0;

    aput-object v2, v5, v13

    .line 56
    iget-object v2, v0, Le/a/l/f;->e:Le/a/l/p2/g0;

    const/4 v3, 0x7

    aput-object v2, v5, v3

    aput-object v1, v5, v15

    const-string v1, "elements"

    .line 57
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v4}, Le/q/f/a/d/a;->Y1(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v5, v1}, Le/q/f/a/d/a;->b3([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    .line 59
    iput-object v1, v0, Le/a/l/f;->k:Ljava/util/LinkedHashSet;

    return-void
.end method
