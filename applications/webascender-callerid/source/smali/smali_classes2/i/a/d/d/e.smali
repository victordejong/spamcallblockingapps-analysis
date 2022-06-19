.class public final Li/a/d/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/c/d;


# instance fields
.field private final a:Li/a/d/c/d;

.field private final b:J

.field private final c:J


# direct methods
.method private constructor <init>(Li/a/d/c/d;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/a/d/d/e;->a:Li/a/d/c/d;

    .line 3
    iput-wide p2, p0, Li/a/d/d/e;->b:J

    .line 4
    iput-wide p4, p0, Li/a/d/d/e;->c:J

    return-void
.end method

.method public static c(Li/a/d/c/d;)Li/a/d/d/e;
    .locals 7

    .line 1
    new-instance v6, Li/a/d/d/e;

    invoke-interface {p0}, Li/a/d/c/d;->b()J

    move-result-wide v2

    invoke-interface {p0}, Li/a/d/c/d;->a()J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Li/a/d/d/e;-><init>(Li/a/d/c/d;JJ)V

    return-object v6
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/d/e;->a:Li/a/d/c/d;

    invoke-interface {v0}, Li/a/d/c/d;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object v0, p0, Li/a/d/d/e;->a:Li/a/d/c/d;

    invoke-interface {v0}, Li/a/d/c/d;->a()J

    move-result-wide v0

    iget-wide v2, p0, Li/a/d/d/e;->c:J

    sub-long/2addr v0, v2

    .line 2
    iget-wide v2, p0, Li/a/d/d/e;->b:J

    add-long/2addr v2, v0

    return-wide v2
.end method
