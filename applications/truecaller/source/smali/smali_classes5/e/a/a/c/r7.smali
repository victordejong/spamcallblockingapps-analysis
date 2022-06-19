.class public final Le/a/a/c/r7;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/s7;

.field public final synthetic c:I

.field public final synthetic d:Lcom/truecaller/messaging/conversation/QuickAction;


# direct methods
.method public constructor <init>(Le/a/a/c/s7;ILcom/truecaller/messaging/conversation/QuickAction;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/r7;->b:Le/a/a/c/s7;

    iput p2, p0, Le/a/a/c/r7;->c:I

    iput-object p3, p0, Le/a/a/c/r7;->d:Lcom/truecaller/messaging/conversation/QuickAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/a/c/r7;->b:Le/a/a/c/s7;

    iget v1, p0, Le/a/a/c/r7;->c:I

    iget-object v2, p0, Le/a/a/c/r7;->d:Lcom/truecaller/messaging/conversation/QuickAction;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "quickAction"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object v3, v0, Le/a/a/c/s7;->d:Le/a/a/c/c5;

    invoke-virtual {v3}, Le/a/a/c/c5;->Qj()V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object v3, v0, Le/a/a/c/s7;->d:Le/a/a/c/c5;

    invoke-virtual {v3}, Le/a/a/c/c5;->Vj()V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object v3, v0, Le/a/a/c/s7;->e:Le/a/a/c/n4;

    invoke-interface {v3}, Le/a/a/c/n4;->d2()V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object v3, v0, Le/a/a/c/s7;->e:Le/a/a/c/n4;

    invoke-interface {v3}, Le/a/a/c/n4;->V2()V

    goto :goto_0

    .line 8
    :pswitch_4
    iget-object v3, v0, Le/a/a/c/s7;->i:Le/a/a/c/b4;

    invoke-interface {v3}, Le/a/a/c/b4;->hi()V

    goto :goto_0

    .line 9
    :pswitch_5
    iget-object v3, v0, Le/a/a/c/s7;->d:Le/a/a/c/c5;

    invoke-virtual {v3}, Le/a/a/c/c5;->Sj()V

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object v3, v0, Le/a/a/c/s7;->c:Le/a/a/c/f4;

    invoke-interface {v3}, Le/a/a/c/f4;->A6()V

    goto :goto_0

    .line 11
    :pswitch_7
    iget-object v3, v0, Le/a/a/c/s7;->c:Le/a/a/c/f4;

    invoke-interface {v3}, Le/a/a/c/f4;->z1()V

    goto :goto_0

    .line 12
    :pswitch_8
    iget-object v3, v0, Le/a/a/c/s7;->c:Le/a/a/c/f4;

    invoke-interface {v3}, Le/a/a/c/f4;->c0()V

    .line 13
    :goto_0
    iget-object v3, v0, Le/a/a/c/s7;->f:Le/a/a/c/r3;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Lcom/truecaller/messaging/conversation/QuickAction;->getAnalyticsValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Le/a/a/c/s7;->getItemCount()I

    move-result v0

    check-cast v3, Le/a/a/c/s3;

    .line 14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "action"

    invoke-static {v10, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v2, v3, Le/a/a/c/s3;->b:Le/a/q2/i0;

    const-string v3, "ConversationQuickAccess"

    const-string v4, "type"

    .line 16
    invoke-static {v3, v4}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v11

    const-string v12, "name"

    const-string v13, "value"

    move-object v4, v9

    move-object v5, v12

    move-object v6, v10

    move-object v7, v13

    move-object v8, v11

    .line 17
    invoke-static/range {v4 .. v10}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v5, "buttonIndex"

    int-to-double v6, v1

    .line 18
    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "numActions"

    int-to-double v8, v0

    .line 20
    invoke-static {v1, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v4}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v11}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {v2, v0}, Le/a/q2/i0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 25
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
