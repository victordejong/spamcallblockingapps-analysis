.class public final Le/a/a/q0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/q0/b;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/a/i0;

.field public final c:Le/a/p5/g;

.field public final d:Le/a/a/t0/a;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/a/i0;Le/a/p5/g;Le/a/a/t0/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxCleanerDataFetcher"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/q0/f;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/q0/f;->b:Le/a/a/i0;

    iput-object p3, p0, Le/a/a/q0/f;->c:Le/a/p5/g;

    iput-object p4, p0, Le/a/a/q0/f;->d:Le/a/a/t0/a;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/q0/f;->a:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "im_group_id"

    .line 3
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "(roles & "

    const-string v4, ") != 0"

    .line 4
    invoke-static {v3, p1, v4}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "it"

    .line 6
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final b(Z)Ljava/lang/Long;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/q0/f;->a:Landroid/content/ContentResolver;

    const/4 v1, 0x5

    .line 2
    invoke-static {v1}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "MessagesTable.getContent\u2026i(Transport.TYPE_HISTORY)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info2 = 1 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Le/a/a/q0/f;->d(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "date"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    .line 4
    invoke-static/range {v0 .. v5}, Le/a/p5/s0/f;->E(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/q0/f;->a:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "MessagesTable.getContentUri(Transport.TYPE_IM)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "date"

    const/4 v4, 0x0

    const-string v5, "sequence_number DESC, date DESC LIMIT 1"

    move-object v3, p1

    .line 3
    invoke-static/range {v0 .. v5}, Le/a/p5/s0/f;->E(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final d(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "(status & 1) != 0"

    goto :goto_0

    :cond_0
    const-string p1, "(status & 1) = 0"

    :goto_0
    return-object p1
.end method

.method public final e(I)Lcom/truecaller/messaging/clevertap/NUMBERS;
    .locals 2

    if-gtz p1, :cond_0

    .line 1
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->ZERO:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_5

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->ONE:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_5

    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x2

    if-le v1, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt v0, p1, :cond_3

    .line 3
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->TWO_FIVE:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_5

    :cond_3
    :goto_0
    const/16 v0, 0xa

    const/4 v1, 0x6

    if-le v1, p1, :cond_4

    goto :goto_1

    :cond_4
    if-lt v0, p1, :cond_5

    .line 4
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->SIX_TEN:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_5

    :cond_5
    :goto_1
    const/16 v0, 0x14

    const/16 v1, 0xb

    if-le v1, p1, :cond_6

    goto :goto_2

    :cond_6
    if-lt v0, p1, :cond_7

    .line 5
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->ELEVEN_TWENTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_5

    :cond_7
    :goto_2
    const/16 v0, 0x1e

    const/16 v1, 0x15

    if-le v1, p1, :cond_8

    goto :goto_3

    :cond_8
    if-lt v0, p1, :cond_9

    .line 6
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->TWENTY_ONE_THIRTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_5

    :cond_9
    :goto_3
    const/16 v0, 0x32

    const/16 v1, 0x1f

    if-le v1, p1, :cond_a

    goto :goto_4

    :cond_a
    if-lt v0, p1, :cond_b

    .line 7
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->THIRTY_ONE_FIFTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_5

    .line 8
    :cond_b
    :goto_4
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->FIFTY_PLUS:Lcom/truecaller/messaging/clevertap/NUMBERS;

    :goto_5
    return-object p1
.end method

.method public final f(Ljava/lang/Long;)Lcom/truecaller/messaging/clevertap/NUMBERS;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->NONE:Lcom/truecaller/messaging/clevertap/NUMBERS;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/b;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v0}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object p1

    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    invoke-static {p1, v0}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object p1

    const-string v0, "Days.daysBetween(DateTim\u2026lDate(), LocalDate.now())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget p1, p1, Lw3/b/a/e0/i;->a:I

    if-gtz p1, :cond_1

    .line 4
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->ZERO:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_4

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->ONE:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_4

    :cond_2
    const/4 v0, 0x4

    const/4 v1, 0x2

    if-le v1, p1, :cond_3

    goto :goto_0

    :cond_3
    if-lt v0, p1, :cond_4

    .line 6
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->TWO_FOUR:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_4

    :cond_4
    :goto_0
    const/4 v0, 0x7

    const/4 v1, 0x5

    if-le v1, p1, :cond_5

    goto :goto_1

    :cond_5
    if-lt v0, p1, :cond_6

    .line 7
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->FIVE_SEVEN:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_4

    :cond_6
    :goto_1
    const/16 v0, 0xe

    const/16 v1, 0x8

    if-le v1, p1, :cond_7

    goto :goto_2

    :cond_7
    if-lt v0, p1, :cond_8

    .line 8
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->EIGHT_FOURTEEN:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_4

    :cond_8
    :goto_2
    const/16 v0, 0x1e

    const/16 v1, 0xf

    if-le v1, p1, :cond_9

    goto :goto_3

    :cond_9
    if-lt v0, p1, :cond_a

    .line 9
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->FIFTEEN_THIRTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_4

    .line 10
    :cond_a
    :goto_3
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->THIRTY_PLUS:Lcom/truecaller/messaging/clevertap/NUMBERS;

    :goto_4
    return-object p1
.end method

.method public final g(I)Lcom/truecaller/messaging/clevertap/NUMBERS;
    .locals 2

    if-gtz p1, :cond_0

    .line 1
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->ZERO:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->ONE:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->TWO:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_2

    :cond_2
    const/4 v0, 0x5

    const/4 v1, 0x3

    if-le v1, p1, :cond_3

    goto :goto_0

    :cond_3
    if-lt v0, p1, :cond_4

    .line 4
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->THREE_FIVE:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_2

    :cond_4
    :goto_0
    const/16 v0, 0xa

    const/4 v1, 0x6

    if-le v1, p1, :cond_5

    goto :goto_1

    :cond_5
    if-lt v0, p1, :cond_6

    .line 5
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->SIX_TEN:Lcom/truecaller/messaging/clevertap/NUMBERS;

    goto :goto_2

    .line 6
    :cond_6
    :goto_1
    sget-object p1, Lcom/truecaller/messaging/clevertap/NUMBERS;->TEN_PLUS:Lcom/truecaller/messaging/clevertap/NUMBERS;

    :goto_2
    return-object p1
.end method
