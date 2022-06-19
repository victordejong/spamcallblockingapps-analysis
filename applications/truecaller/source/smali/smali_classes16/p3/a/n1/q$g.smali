.class public Lp3/a/n1/q$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final a:J

.field public final synthetic b:Lp3/a/n1/q;


# direct methods
.method public constructor <init>(Lp3/a/n1/q;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/q$g;->b:Lp3/a/n1/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lp3/a/n1/q$g;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    new-instance v0, Lp3/a/n1/z0;

    invoke-direct {v0}, Lp3/a/n1/z0;-><init>()V

    .line 2
    iget-object v1, p0, Lp3/a/n1/q$g;->b:Lp3/a/n1/q;

    .line 3
    iget-object v1, v1, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    .line 4
    invoke-interface {v1, v0}, Lp3/a/n1/s;->l(Lp3/a/n1/z0;)V

    .line 5
    iget-wide v1, p0, Lp3/a/n1/q$g;->a:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    div-long/2addr v1, v6

    .line 6
    iget-wide v6, p0, Lp3/a/n1/q$g;->a:J

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    rem-long/2addr v6, v3

    const-string v3, "deadline exceeded after "

    .line 7
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8
    iget-wide v4, p0, Lp3/a/n1/q$g;->a:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    const/16 v4, 0x2d

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_0
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, ".%09d"

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s. "

    .line 12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v0, p0, Lp3/a/n1/q$g;->b:Lp3/a/n1/q;

    .line 15
    iget-object v0, v0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    .line 16
    sget-object v1, Lp3/a/g1;->i:Lp3/a/g1;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v1

    invoke-interface {v0, v1}, Lp3/a/n1/s;->h(Lp3/a/g1;)V

    return-void
.end method
