.class public final Le/a/k3/l/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k3/l/f;


# instance fields
.field public volatile a:J

.field public volatile b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Landroid/telephony/TelephonyManager;

.field public final f:Le/a/p5/c0;

.field public final g:Le/a/k3/h;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Le/a/p5/c0;Le/a/k3/h;)V
    .locals 1

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberTypeLabelProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k3/l/g;->e:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Le/a/k3/l/g;->f:Le/a/p5/c0;

    iput-object p3, p0, Le/a/k3/l/g;->g:Le/a/k3/h;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;
    .locals 9

    const-string v0, "networkNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return-object v3

    .line 2
    :cond_1
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v0

    .line 3
    array-length v4, p1

    move v5, v2

    move-object v6, v3

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v7, p1, v5

    if-eqz v7, :cond_3

    .line 4
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move v8, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v1

    :goto_3
    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    if-nez v6, :cond_5

    move-object v6, v7

    .line 5
    :cond_5
    :try_start_0
    invoke-virtual {v0, v7, v3}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    .line 6
    new-instance v8, Lcom/truecaller/data/entity/Number;

    .line 7
    invoke-direct {v8, v7, v3}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/truecaller/data/entity/Number;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_e

    .line 9
    iget-object p1, p0, Le/a/k3/l/g;->e:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_7

    move-object p1, v3

    goto :goto_5

    .line 10
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 11
    iget-wide v4, p0, Le/a/k3/l/g;->a:J

    .line 12
    iget-object p1, p0, Le/a/k3/l/g;->c:Ljava/lang/String;

    sub-long v4, v0, v4

    .line 13
    sget-wide v7, Le/a/k3/l/h;->a:J

    cmp-long v2, v4, v7

    if-gez v2, :cond_8

    goto :goto_5

    .line 14
    :cond_8
    monitor-enter p0

    .line 15
    :try_start_1
    iget-wide v4, p0, Le/a/k3/l/g;->a:J

    .line 16
    iget-object p1, p0, Le/a/k3/l/g;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-long/2addr v0, v4

    cmp-long v0, v0, v7

    if-gez v0, :cond_9

    .line 17
    monitor-exit p0

    goto :goto_5

    .line 18
    :cond_9
    :try_start_2
    iget-object p1, p0, Le/a/k3/l/g;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, v0}, Le/a/p5/g0;->M(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 19
    iput-object p1, p0, Le/a/k3/l/g;->c:Ljava/lang/String;

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/k3/l/g;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    monitor-exit p0

    .line 22
    :goto_5
    iget-object v0, p0, Le/a/k3/l/g;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_a

    goto :goto_7

    .line 23
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 24
    iget-wide v2, p0, Le/a/k3/l/g;->b:J

    .line 25
    iget-object v4, p0, Le/a/k3/l/g;->d:Ljava/lang/String;

    sub-long v2, v0, v2

    .line 26
    sget-wide v7, Le/a/k3/l/h;->a:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_b

    :goto_6
    move-object v3, v4

    goto :goto_7

    .line 27
    :cond_b
    monitor-enter p0

    .line 28
    :try_start_3
    iget-wide v2, p0, Le/a/k3/l/g;->b:J

    .line 29
    iget-object v4, p0, Le/a/k3/l/g;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v0, v2

    cmp-long v0, v0, v7

    if-gez v0, :cond_c

    .line 30
    monitor-exit p0

    goto :goto_6

    .line 31
    :cond_c
    :try_start_4
    iget-object v0, p0, Le/a/k3/l/g;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Le/a/p5/g0;->M(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 32
    iput-object v3, p0, Le/a/k3/l/g;->d:Ljava/lang/String;

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/k3/l/g;->b:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    monitor-exit p0

    .line 35
    :goto_7
    new-instance v0, Lcom/truecaller/data/entity/Number;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object p1, v3

    :cond_d
    invoke-direct {v0, v6, p1}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/Number;->w(Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_8

    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    .line 38
    monitor-exit p0

    throw p1

    :cond_e
    :goto_8
    return-object v3
.end method

.method public b(Ljava/lang/String;)Lcom/truecaller/data/entity/Number;
    .locals 5

    const-string v0, "rawNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, v1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v2, v3}, Le/m/f/a/j;->H(Le/m/f/a/o;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v3, Lcom/truecaller/data/entity/Number;

    const-string v4, "phoneNumber"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget v2, v2, Le/m/f/a/o;->b:I

    .line 7
    invoke-virtual {v0, v2}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->rawNumberFormat:Ljava/lang/String;
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :catch_0
    :cond_0
    return-object v1
.end method

.method public c(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k3/l/g;->f:Le/a/p5/c0;

    iget-object v1, p0, Le/a/k3/l/g;->g:Le/a/k3/h;

    invoke-static {p1, v0, v1}, Le/a/m0/a1$k;->m0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;Le/a/k3/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs d([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;
    .locals 1

    const-string v0, "networkNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Le/a/k3/l/g;->a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/truecaller/data/entity/Number;

    invoke-direct {p1}, Lcom/truecaller/data/entity/Number;-><init>()V

    :goto_0
    return-object p1
.end method
