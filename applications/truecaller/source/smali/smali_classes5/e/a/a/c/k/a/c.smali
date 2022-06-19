.class public final Le/a/a/c/k/a/c;
.super Le/a/a/c/k/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/k/a/b;


# instance fields
.field public final h:Le/a/o5/b0;

.field public final i:Le/a/a/c/j6;


# direct methods
.method public constructor <init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/a/c/t7;Le/a/o5/b0;Le/a/u3/g;Le/a/a/c/j6;)V
    .locals 12
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    const-string v0, "conversationState"

    move-object v1, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    move-object v2, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    move-object v5, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeListener"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProvider"

    move-object/from16 v4, p7

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v8, p9

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyResourceProvider"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Le/a/a/c/k/a/a;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/k/t;Le/a/a/c/t7;Le/a/a/c/w3;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/u3/g;)V

    iput-object v10, v9, Le/a/a/c/k/a/c;->h:Le/a/o5/b0;

    iput-object v11, v9, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 13

    .line 1
    check-cast p1, Le/a/a/c/a7;

    const-string v0, "view"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Le/a/a/c/k/a/a;->t(Le/a/a/c/a7;I)V

    .line 4
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    .line 5
    invoke-interface {v0, p2}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.messaging.data.types.Message"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/messaging/data/types/Message;

    .line 6
    iget-object v0, p2, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    instance-of v1, v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    if-eqz v0, :cond_b

    .line 7
    iget-object v1, p0, Le/a/a/c/k/a/c;->h:Le/a/o5/b0;

    iget-object v3, p2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v4, "date"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v5, v3, Lw3/b/a/e0/e;->a:J

    .line 9
    invoke-interface {v1, v5, v6}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-static {v12, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v1, p2, Lcom/truecaller/messaging/data/types/Message;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v1, ""

    .line 14
    :goto_3
    iget v3, p2, Lcom/truecaller/messaging/data/types/Message;->g:I

    const-string v5, "type"

    if-eq v3, v4, :cond_7

    const/16 v6, 0x8

    if-eq v3, v6, :cond_5

    .line 15
    iget-object v3, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    invoke-interface {v3}, Le/a/a/c/j6;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 16
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    .line 17
    iget v7, v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    .line 18
    invoke-interface {v6, v7}, Le/a/a/c/j6;->j(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 20
    :cond_5
    iget v3, v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->f:I

    if-ne v3, v4, :cond_6

    .line 21
    iget-object v3, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    invoke-interface {v3}, Le/a/a/c/j6;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 22
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    invoke-interface {v6}, Le/a/a/c/j6;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :cond_6
    iget-object v3, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    invoke-interface {v3}, Le/a/a/c/j6;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 25
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    .line 26
    iget v7, v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    .line 27
    invoke-interface {v6, v7}, Le/a/a/c/j6;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 29
    :cond_7
    iget-object v3, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    invoke-interface {v3}, Le/a/a/c/j6;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 30
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    .line 31
    iget v7, v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    .line 32
    invoke-interface {v6, v7}, Le/a/a/c/j6;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    move-object v11, v1

    .line 34
    iget v0, v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    goto :goto_5

    .line 35
    :cond_8
    iget-object v0, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    invoke-interface {v0}, Le/a/a/c/j6;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5

    .line 36
    :cond_9
    iget-object v0, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    invoke-interface {v0}, Le/a/a/c/j6;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v10, v0

    move-object v9, v2

    goto :goto_6

    .line 37
    :cond_a
    iget-object v0, p0, Le/a/a/c/k/a/c;->i:Le/a/a/c/j6;

    invoke-interface {v0, p2}, Le/a/a/c/j6;->e(Lcom/truecaller/messaging/data/types/Message;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_5
    move-object v10, v2

    move-object v9, v3

    .line 38
    :goto_6
    new-instance v0, Le/a/a/c/l6;

    const/4 v8, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Le/a/a/c/l6;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-interface {p1, v0, p2}, Le/a/a/c/a7;->L1(Le/a/a/c/l6;Lcom/truecaller/messaging/data/types/Message;)V

    return-void

    .line 40
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public m(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    .line 2
    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->D:I

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
