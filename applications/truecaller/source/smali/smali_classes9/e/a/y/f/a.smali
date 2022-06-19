.class public Le/a/y/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/e/k;

.field public final c:Le/a/y/h/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/e/k;Le/a/y/h/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/f/a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/y/f/a;->b:Le/m/e/k;

    .line 4
    iput-object p3, p0, Le/a/y/f/a;->c:Le/a/y/h/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/y/f/a;->b:Le/m/e/k;

    const-string v2, "sender"

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const-string v3, "payload"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "timestamp"

    .line 4
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    new-instance v6, Lcom/truecaller/flashsdk/models/Flash;

    invoke-direct {v6}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v7, Lcom/truecaller/flashsdk/models/Sender;

    invoke-virtual {v1, v2, v7}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/flashsdk/models/Sender;

    iput-object v2, v6, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 7
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v3, Lcom/truecaller/flashsdk/models/Payload;

    invoke-virtual {v1, v2, v3}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/models/Payload;

    iput-object v1, v6, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 8
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/truecaller/flashsdk/models/Flash;->g:J

    const-string v1, "instanceId"

    .line 9
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v6, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 11
    iput-object p2, v6, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    :cond_2
    :goto_0
    const-string p2, "history"

    .line 12
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v6, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p2, "\ud83d\udcac"

    .line 14
    invoke-static {p2}, Le/a/m0/a1$k;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v6, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    :goto_1
    const-string p2, "state"

    .line 15
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v6, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    :cond_4
    const-string p2, "thread_id"

    .line 17
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v6, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    :cond_5
    const-string p2, "threadId"

    .line 19
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v6, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    goto :goto_3

    :cond_6
    :goto_2
    move-object v6, v4

    :cond_7
    :goto_3
    if-eqz v6, :cond_c

    .line 21
    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/Flash;->c()Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_4

    .line 22
    :cond_8
    iget-object p1, v6, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz p1, :cond_9

    .line 23
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_9

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 24
    iget-object v2, v6, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 25
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v1

    const-string v1, "+%d"

    .line 26
    invoke-static {p1, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/c/b;->E(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    const-string p1, "+"

    .line 27
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 28
    iget-object p2, v6, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 29
    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    iget-object p2, v6, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 31
    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object p2

    const-string v1, "payment_success"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 32
    iget-object p1, p0, Le/a/y/f/a;->c:Le/a/y/h/a;

    invoke-interface {p1, v6}, Le/a/y/h/a;->e(Lcom/truecaller/flashsdk/models/Flash;)V

    goto :goto_4

    .line 33
    :cond_a
    iget-object p2, v6, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 34
    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object p2

    const-string v1, "call_me_back"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 35
    invoke-interface {v0, p1}, Le/a/y/c/b;->o(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x4

    if-ge p1, p2, :cond_b

    .line 36
    iget-object p1, p0, Le/a/y/f/a;->c:Le/a/y/h/a;

    invoke-interface {p1, v6, v4}, Le/a/y/h/a;->f(Lcom/truecaller/flashsdk/models/Flash;Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 37
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 38
    iput-wide p1, v6, Lcom/truecaller/flashsdk/models/Flash;->g:J

    .line 39
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Le/a/y/f/a;->a:Landroid/content/Context;

    const-class v0, Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "extra_flash"

    .line 40
    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    iget-object p2, p0, Le/a/y/f/a;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_c
    :goto_4
    return-void
.end method
