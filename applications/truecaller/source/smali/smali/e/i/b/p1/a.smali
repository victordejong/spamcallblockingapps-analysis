.class public Le/i/b/p1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/i/b/s2/b;

.field public final c:Le/i/b/e2;

.field public final d:Le/i/b/i2/g;

.field public final e:Le/i/b/l2/b;

.field public final f:Le/i/b/u2/y;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/i/b/s2/b;Le/i/b/e2;Le/i/b/i2/g;Le/i/b/l2/b;Le/i/b/u2/y;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Le/i/b/p1/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Le/i/b/p1/a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Le/i/b/p1/a;->b:Le/i/b/s2/b;

    .line 5
    iput-object p3, p0, Le/i/b/p1/a;->c:Le/i/b/e2;

    .line 6
    iput-object p4, p0, Le/i/b/p1/a;->d:Le/i/b/i2/g;

    .line 7
    iput-object p5, p0, Le/i/b/p1/a;->e:Le/i/b/l2/b;

    .line 8
    iput-object p6, p0, Le/i/b/p1/a;->f:Le/i/b/u2/y;

    .line 9
    iput-object p7, p0, Le/i/b/p1/a;->g:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/i/b/p1/a;->e:Le/i/b/l2/b;

    .line 2
    invoke-virtual {v0}, Le/i/b/l2/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Le/i/b/l2/b;->b:Le/i/b/s2/n;

    const-string v1, "USPrivacy_Optout"

    invoke-virtual {v0, v1, v3}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v4

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Le/i/b/l2/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Le/i/b/l2/b;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Le/i/b/l2/b;->f:Ljava/util/List;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Le/i/b/p1/a;->e:Le/i/b/l2/b;

    .line 10
    iget-object v0, v0, Le/i/b/l2/b;->b:Le/i/b/s2/n;

    const-string v1, "MoPubConsent_String"

    invoke-virtual {v0, v1, v3}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    sget-object v1, Le/i/b/l2/b;->g:Ljava/util/List;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_3

    move v2, v4

    :cond_3
    if-nez v2, :cond_4

    return-void

    .line 12
    :cond_4
    iget-object v0, p0, Le/i/b/p1/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 13
    iget-object v2, p0, Le/i/b/p1/a;->c:Le/i/b/e2;

    invoke-interface {v2}, Le/i/b/e2;->a()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    return-void

    .line 14
    :cond_5
    iget-object v0, p0, Le/i/b/p1/a;->g:Ljava/util/concurrent/Executor;

    new-instance v9, Le/i/b/i2/a;

    iget-object v2, p0, Le/i/b/p1/a;->a:Landroid/content/Context;

    iget-object v4, p0, Le/i/b/p1/a;->b:Le/i/b/s2/b;

    iget-object v5, p0, Le/i/b/p1/a;->d:Le/i/b/i2/g;

    iget-object v6, p0, Le/i/b/p1/a;->f:Le/i/b/u2/y;

    iget-object v7, p0, Le/i/b/p1/a;->e:Le/i/b/l2/b;

    move-object v1, v9

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Le/i/b/i2/a;-><init>(Landroid/content/Context;Le/i/b/p1/a;Le/i/b/s2/b;Le/i/b/i2/g;Le/i/b/u2/y;Le/i/b/l2/b;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
