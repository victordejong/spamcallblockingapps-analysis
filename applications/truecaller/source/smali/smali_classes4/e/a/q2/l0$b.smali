.class public final Le/a/q2/l0$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/l0;->b(JLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.analytics.MessageAnalyticsDataHelperImpl$getIncomingMessagesNotificationsAnalyticsParams$2"
    f = "MessageAnalyticsDataHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/q2/l0;

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Le/a/q2/l0;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/l0$b;->e:Le/a/q2/l0;

    iput-wide p2, p0, Le/a/q2/l0$b;->f:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/l0$b;

    iget-object v0, p0, Le/a/q2/l0$b;->e:Le/a/q2/l0;

    iget-wide v1, p0, Le/a/q2/l0$b;->f:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/q2/l0$b;-><init>(Le/a/q2/l0;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/l0$b;

    iget-object v0, p0, Le/a/q2/l0$b;->e:Le/a/q2/l0;

    iget-wide v1, p0, Le/a/q2/l0$b;->f:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/q2/l0$b;-><init>(Le/a/q2/l0;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/l0$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, ""

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/q2/l0$b;->e:Le/a/q2/l0;

    .line 3
    iget-object v1, p1, Le/a/q2/l0;->b:Landroid/content/ContentResolver;

    .line 4
    iget-wide v2, p0, Le/a/q2/l0$b;->f:J

    .line 5
    sget-object p1, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v4, "message_notifications_analytics"

    .line 7
    invoke-virtual {p1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 8
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 10
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 11
    iget-object v2, p0, Le/a/q2/l0$b;->e:Le/a/q2/l0;

    .line 12
    iget-object v2, v2, Le/a/q2/l0;->c:Le/a/a/g/g;

    .line 13
    invoke-interface {v2, p1}, Le/a/a/g/g;->e(Landroid/database/Cursor;)Le/a/a/g/j0/r;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    new-instance v0, Ls1/k;

    invoke-interface {p1}, Le/a/a/g/j0/r;->y()Le/a/a/g/l0/d;

    move-result-object v2

    const-string v3, "$this$toAnalyticsTransport"

    .line 16
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget v2, v2, Le/a/a/g/l0/d;->b:I

    .line 18
    invoke-static {v2}, Le/m/d/y/n;->c0(I)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-interface {p1}, Le/a/a/g/j0/r;->y()Le/a/a/g/l0/d;

    move-result-object v3

    invoke-static {v3}, Le/m/d/y/n;->x1(Le/a/a/g/l0/d;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 21
    :goto_0
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_1

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

    :cond_1
    :goto_1
    return-object v1
.end method
