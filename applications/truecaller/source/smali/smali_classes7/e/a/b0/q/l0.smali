.class public final Le/a/b0/q/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/q/l0;->a:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public final a(JJLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/b0/q/l0;->b(JJ)Z

    move-result p1

    return p1
.end method

.method public final b(JJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    sub-long/2addr v0, p1

    cmp-long p1, v0, p3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/q/l0;->a:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    return-wide v0
.end method
