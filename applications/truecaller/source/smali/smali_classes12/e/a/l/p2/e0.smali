.class public final Le/a/l/p2/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/l/p2/f0;

.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/l/p2/a1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/l/p2/f0;Le/a/l/p2/v0;Le/a/l/p2/a1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expireDateHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionProblemHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e0;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/l/p2/e0;->b:Le/a/l/p2/f0;

    iput-object p3, p0, Le/a/l/p2/e0;->c:Le/a/l/p2/v0;

    iput-object p4, p0, Le/a/l/p2/e0;->d:Le/a/l/p2/a1;

    return-void
.end method


# virtual methods
.method public final a()Le/a/l/p2/d0;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/l/p2/e0;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->R1()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/l/p2/e0;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->G1()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Le/a/l/p2/e0;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v3, p0, Le/a/l/p2/e0;->a:Landroid/content/Context;

    .line 4
    iget-object v4, p0, Le/a/l/p2/e0;->b:Le/a/l/p2/f0;

    invoke-virtual {v4}, Le/a/l/p2/f0;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f120476

    goto :goto_0

    :cond_0
    const v4, 0x7f120475

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 5
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(\n     \u2026       date\n            )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Le/a/l/p2/d0;

    .line 7
    iget-object v2, p0, Le/a/l/p2/e0;->b:Le/a/l/p2/f0;

    invoke-virtual {v2}, Le/a/l/p2/f0;->a()Z

    move-result v2

    .line 8
    invoke-direct {v1, v0, v2}, Le/a/l/p2/d0;-><init>(Ljava/lang/String;Z)V

    return-object v1

    .line 9
    :cond_1
    iget-object v0, p0, Le/a/l/p2/e0;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->P()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Le/a/l/p2/e0;->d:Le/a/l/p2/a1;

    invoke-virtual {v0}, Le/a/l/p2/a1;->c()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 10
    :goto_1
    iget-object v3, p0, Le/a/l/p2/e0;->c:Le/a/l/p2/v0;

    invoke-interface {v3}, Le/a/l/p2/v0;->w0()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Le/a/l/p2/e0;->b(J)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_3

    const v0, 0x7f120477

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Le/a/l/p2/e0;->b:Le/a/l/p2/f0;

    invoke-virtual {v0}, Le/a/l/p2/f0;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f120474

    goto :goto_2

    :cond_4
    const v0, 0x7f120473

    .line 12
    :goto_2
    iget-object v4, p0, Le/a/l/p2/e0;->a:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(stringRes, date)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Le/a/l/p2/d0;

    .line 14
    iget-object v2, p0, Le/a/l/p2/e0;->b:Le/a/l/p2/f0;

    invoke-virtual {v2}, Le/a/l/p2/f0;->a()Z

    move-result v2

    .line 15
    invoke-direct {v1, v0, v2}, Le/a/l/p2/d0;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public final b(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd MMM yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimpleDateFormat(PREMIUM\u2026ormat(Date(dateToFormat))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
