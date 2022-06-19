.class public final Li/a/d/f/z/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Li/a/d/f/z/g;

.field private b:J

.field private c:I

.field private d:I

.field private e:J


# direct methods
.method constructor <init>(Li/a/d/f/z/g;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iput-wide v1, p0, Li/a/d/f/z/e;->b:J

    const/16 v1, 0x800

    .line 3
    iput v1, p0, Li/a/d/f/z/e;->c:I

    const/16 v1, 0x200

    .line 4
    iput v1, p0, Li/a/d/f/z/e;->d:I

    const-wide/16 v1, 0x7530

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Li/a/d/f/z/e;->e:J

    const-string v0, "spanExporter"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/a/d/f/z/g;

    iput-object p1, p0, Li/a/d/f/z/e;->a:Li/a/d/f/z/g;

    return-void
.end method


# virtual methods
.method public a()Li/a/d/f/z/d;
    .locals 9

    .line 1
    new-instance v8, Li/a/d/f/z/d;

    iget-object v1, p0, Li/a/d/f/z/e;->a:Li/a/d/f/z/g;

    iget-wide v2, p0, Li/a/d/f/z/e;->b:J

    iget v4, p0, Li/a/d/f/z/e;->c:I

    iget v5, p0, Li/a/d/f/z/e;->d:I

    iget-wide v6, p0, Li/a/d/f/z/e;->e:J

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Li/a/d/f/z/d;-><init>(Li/a/d/f/z/g;JIIJ)V

    return-object v8
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Li/a/d/f/z/e;
    .locals 3

    const-string v0, "unit"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "delay must be non-negative"

    .line 2
    invoke-static {v0, v1}, Li/a/a/d/d;->a(ZLjava/lang/String;)V

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Li/a/d/f/z/e;->b:J

    return-object p0
.end method
