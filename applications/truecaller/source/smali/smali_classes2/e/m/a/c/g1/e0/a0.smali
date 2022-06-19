.class public final Le/m/a/c/g1/e0/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/c/q1/c0;

.field public final b:Le/m/a/c/q1/t;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/q1/c0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Le/m/a/c/q1/c0;-><init>(J)V

    iput-object v0, p0, Le/m/a/c/g1/e0/a0;->a:Le/m/a/c/q1/c0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Le/m/a/c/g1/e0/a0;->f:J

    .line 4
    iput-wide v0, p0, Le/m/a/c/g1/e0/a0;->g:J

    .line 5
    iput-wide v0, p0, Le/m/a/c/g1/e0/a0;->h:J

    .line 6
    new-instance v0, Le/m/a/c/q1/t;

    invoke-direct {v0}, Le/m/a/c/q1/t;-><init>()V

    iput-object v0, p0, Le/m/a/c/g1/e0/a0;->b:Le/m/a/c/q1/t;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/c/g1/e;)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/e0/a0;->b:Le/m/a/c/q1/t;

    sget-object v1, Le/m/a/c/q1/d0;->f:[B

    invoke-virtual {v0, v1}, Le/m/a/c/q1/t;->z([B)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/m/a/c/g1/e0/a0;->c:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Le/m/a/c/g1/e;->f:I

    return v0
.end method
