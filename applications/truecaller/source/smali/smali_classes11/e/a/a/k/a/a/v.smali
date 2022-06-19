.class public final Le/a/a/k/a/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/a/u;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/e1;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/w4/t/b/b;

.field public final d:Landroid/content/ContentResolver;

.field public final e:Ln3/m0/y;

.field public final f:Le/a/a/i0;

.field public final g:Le/a/a/k/a/s1;

.field public final h:Ls1/w/f;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/r2/f;Le/a/w4/t/b/b;Landroid/content/ContentResolver;Ln3/m0/y;Le/a/a/i0;Le/a/a/k/a/s1;Ls1/w/f;)V
    .locals 1
    .param p8    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/e1;",
            ">;",
            "Le/a/w4/t/b/b;",
            "Landroid/content/ContentResolver;",
            "Ln3/m0/y;",
            "Le/a/a/i0;",
            "Le/a/a/k/a/s1;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messageStorage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imUserManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stubManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/a/v;->a:Lo3/a;

    iput-object p2, p0, Le/a/a/k/a/a/v;->b:Le/a/r2/f;

    iput-object p3, p0, Le/a/a/k/a/a/v;->c:Le/a/w4/t/b/b;

    iput-object p4, p0, Le/a/a/k/a/a/v;->d:Landroid/content/ContentResolver;

    iput-object p5, p0, Le/a/a/k/a/a/v;->e:Ln3/m0/y;

    iput-object p6, p0, Le/a/a/k/a/a/v;->f:Le/a/a/i0;

    iput-object p7, p0, Le/a/a/k/a/a/v;->g:Le/a/a/k/a/s1;

    iput-object p8, p0, Le/a/a/k/a/a/v;->h:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/p;
    .locals 9

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v1, "message.getTransportInfo()"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    .line 3
    iget v2, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->r:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    move-object p1, v4

    goto/16 :goto_4

    .line 4
    :pswitch_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 5
    iget v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->g:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info4"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {p0, v0, p1}, Le/a/a/k/a/a/v;->f(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Landroid/content/ContentValues;)Z

    move-result p1

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 9
    :pswitch_1
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 10
    iget v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->f:I

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info3"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {p0, v0, p1}, Le/a/a/k/a/a/v;->f(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Landroid/content/ContentValues;)Z

    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 14
    :pswitch_2
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 15
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    .line 16
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 17
    iget v2, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->e:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v7, "info2"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    iget-wide v7, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->l:J

    .line 20
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v7, "info10"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-ne p1, v3, :cond_0

    new-array p1, v5, [Ljava/lang/String;

    .line 22
    iget v2, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->e:I

    .line 23
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v6

    const-string v2, "info2 != ?"

    invoke-virtual {p0, v0, v1, v2, p1}, Le/a/a/k/a/a/v;->g(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Le/a/a/k/a/a/v;->f:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0, v0, v1}, Le/a/a/k/a/a/v;->f(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Landroid/content/ContentValues;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v6

    .line 26
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 27
    :pswitch_3
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v1, "message.getTransportInfo<ImTransportInfo>()"

    .line 28
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    .line 29
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 30
    iget v2, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->d:I

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v7, "info1"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-ne v2, v3, :cond_2

    new-array v2, v5, [Ljava/lang/String;

    .line 33
    iget v3, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->d:I

    .line 34
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "info1 != ?"

    invoke-virtual {p0, v0, v1, v3, v2}, Le/a/a/k/a/a/v;->g(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p0, v0, v1}, Le/a/a/k/a/a/v;->f(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Landroid/content/ContentValues;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_4

    .line 36
    iget-object v0, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Le/a/a/k/a/a/v;->d:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    .line 38
    invoke-static {v2}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v2

    .line 39
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    const-string v7, "message.dateSent"

    invoke-static {p1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-wide v7, p1, Lw3/b/a/e0/e;->a:J

    .line 41
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v7, "date_sent"

    invoke-virtual {v3, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-array p1, v5, [Ljava/lang/String;

    aput-object v0, p1, v6

    const-string v0, "raw_id = ?"

    .line 42
    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    move p1, v5

    goto :goto_2

    :cond_3
    move p1, v6

    :goto_2
    if-eqz p1, :cond_4

    move p1, v5

    goto :goto_3

    :cond_4
    move p1, v6

    .line 43
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_6

    .line 44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 45
    new-instance p1, Le/a/a/k/p;

    invoke-direct {p1, v5, v6, v6, v4}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    goto :goto_5

    .line 46
    :cond_5
    new-instance p1, Le/a/a/k/p;

    invoke-direct {p1, v6, v6, v6, v4}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    :goto_5
    move-object v4, p1

    :cond_6
    return-object v4

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;J)V
    .locals 5

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportType"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ln3/m0/r$a;

    const-class v1, Lcom/truecaller/messaging/transport/im/SendImReportWorker;

    invoke-direct {v0, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 3
    sget-object v1, Ln3/m0/a;->a:Ln3/m0/a;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v1, v3, v4, v2}, Ln3/m0/z$a;->e(Ln3/m0/a;JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v0

    check-cast v0, Ln3/m0/r$a;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;->getNumber()I

    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "report_type"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "message_id"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p1, Ln3/m0/f;

    invoke-direct {p1, v1}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 9
    invoke-static {p1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 10
    iget-object p2, v0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p1, p2, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 11
    iget-object p1, v0, Ln3/m0/z$a;->d:Ljava/util/Set;

    const-string p2, "send_im_report"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p1, Ln3/m0/d$a;

    invoke-direct {p1}, Ln3/m0/d$a;-><init>()V

    .line 13
    sget-object p2, Ln3/m0/q;->b:Ln3/m0/q;

    .line 14
    iput-object p2, p1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 15
    new-instance p2, Ln3/m0/d;

    invoke-direct {p2, p1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 16
    iget-object p1, v0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p2, p1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 17
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p1

    const-string p2, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/r;

    .line 18
    iget-object p2, p0, Le/a/a/k/a/a/v;->e:Ln3/m0/y;

    sget-object p3, Ln3/m0/h;->c:Ln3/m0/h;

    const-string v0, "SendImReportV2"

    invoke-virtual {p2, v0, p3, p1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "report_type"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3eb

    goto :goto_0

    :cond_1
    const/16 v0, 0x3ea

    :goto_0
    const-string v1, "transport_info"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->a()Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;

    move-result-object p1

    .line 4
    iput v0, p1, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->h:I

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->a()Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 7
    sget-object v1, Lcom/truecaller/data/entity/messaging/Participant;->B:Lcom/truecaller/data/entity/messaging/Participant;

    .line 8
    iput-object v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x2

    .line 9
    iput v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 10
    iput-object p1, v0, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    const-string v0, "Message.Builder()\n      \u2026nfo)\n            .build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Le/a/a/k/a/a/v;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Le/a/a/g/m;->d0(Lcom/truecaller/messaging/data/types/Message;Z)V

    :cond_2
    return-void
.end method

.method public d(Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;)V
    .locals 10

    const-string v0, "reportSent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getReportTypeValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    return-void

    :cond_0
    const/16 v0, 0x3e9

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    .line 2
    :goto_0
    new-instance v3, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;

    invoke-direct {v3}, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getRefMessageId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "reportSent.refMessageId"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->b(Ljava/lang/String;)Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;

    const/4 v4, 0x3

    .line 4
    iput v4, v3, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->d:I

    .line 5
    iput v4, v3, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->e:I

    .line 6
    iput v0, v3, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->h:I

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getReportTypeValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getDate()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 9
    iput-wide v4, v3, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->n:J

    .line 10
    invoke-virtual {v3}, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->a()Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    .line 11
    :cond_2
    invoke-virtual {v3}, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->a()Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    move-result-object v0

    .line 12
    new-instance v3, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v3}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v4

    const-string v5, "reportSent.recipient"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/c/p/a;->i3(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v4

    .line 14
    iput-object v4, v3, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 15
    iput v1, v3, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 16
    iput-object v0, v3, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 17
    new-instance v0, Lw3/b/a/b;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getDate()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lw3/b/a/b;-><init>(J)V

    .line 18
    iput-object v0, v3, Lcom/truecaller/messaging/data/types/Message$b;->d:Lw3/b/a/b;

    .line 19
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    const-string v3, "Message.Builder()\n      \u2026))))\n            .build()"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Le/a/a/k/a/a/v;->a:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    invoke-interface {v3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/g/m;

    const/4 v6, 0x0

    invoke-interface {v3, v0, v6}, Le/a/a/g/m;->d0(Lcom/truecaller/messaging/data/types/Message;Z)V

    .line 21
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getReportTypeValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 22
    iget-object v0, p0, Le/a/a/k/a/a/v;->b:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/e1;

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getSenderId()Ljava/lang/String;

    move-result-object v3

    const-string v7, "reportSent.senderId"

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Le/a/a/k/a/e1;->h(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    iget-object v3, p0, Le/a/a/k/a/a/v;->c:Le/a/w4/t/b/b;

    new-instance v7, Lw3/b/a/b;

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getDate()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v3, v0, v7}, Le/a/w4/t/b/b;->f(Ljava/lang/String;Lw3/b/a/b;)V

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v0

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;

    move-result-object v0

    sget-object v3, Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;->GROUP:Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;

    if-ne v0, v3, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getReportTypeValue()I

    move-result v0

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v6

    .line 26
    :cond_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v1

    const-string v3, "reportSent.recipient.group"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "group_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getSenderId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "peer_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getRefSeq()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "sequence_number"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getDate()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "date"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    iget-object p1, p0, Le/a/a/k/a/a/v;->d:Landroid/content/ContentResolver;

    .line 33
    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v2, "msg/msg_im_group_reports"

    .line 34
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_6
    :goto_1
    return-void
.end method

.method public e(Z)V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/a/k/a/a/v;->h:Ls1/w/f;

    new-instance v3, Le/a/a/k/a/a/v$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Le/a/a/k/a/a/v$a;-><init>(Le/a/a/k/a/a/v;ZLs1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final f(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Landroid/content/ContentValues;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 2
    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/k/a/a/v;->d:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    .line 4
    invoke-static {v2}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    aput-object p1, v4, v1

    const-string p1, "raw_id = ?"

    .line 6
    invoke-virtual {v0, v2, p2, p1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public final g(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/v;->d:Landroid/content/ContentResolver;

    const/4 v6, 0x2

    .line 2
    invoke-static {v6}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "conversation_id"

    const-string v3, "sequence_number"

    .line 3
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    const-string v3, "raw_id = ?"

    const/4 v5, 0x0

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ls1/k;

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 7
    :goto_0
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 10
    iget-object p1, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 12
    iget-object p1, p0, Le/a/a/k/a/a/v;->d:Landroid/content/ContentResolver;

    .line 13
    invoke-static {v6}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v0

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x28

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") AND conversation_id = ? AND sequence_number <= ?"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v5, v6, [Ljava/lang/String;

    .line 15
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {p4, v5}, Ls1/u/i;->t0([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    return v7

    :catchall_0
    move-exception p2

    .line 17
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_2
    return v8
.end method
