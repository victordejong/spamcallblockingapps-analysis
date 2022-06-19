.class public abstract Le/m/a/c/g1/d0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/d0/h$c;,
        Le/m/a/c/g1/d0/h$b;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/g1/d0/d;

.field public b:Le/m/a/c/g1/s;

.field public c:Le/m/a/c/g1/i;

.field public d:Le/m/a/c/g1/d0/f;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:Le/m/a/c/g1/d0/h$b;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/g1/d0/d;

    invoke-direct {v0}, Le/m/a/c/g1/d0/d;-><init>()V

    iput-object v0, p0, Le/m/a/c/g1/d0/h;->a:Le/m/a/c/g1/d0/d;

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 1
    iget v0, p0, Le/m/a/c/g1/d0/h;->i:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le/m/a/c/g1/d0/h;->g:J

    return-void
.end method

.method public abstract c(Le/m/a/c/q1/t;)J
.end method

.method public abstract d(Le/m/a/c/q1/t;JLe/m/a/c/g1/d0/h$b;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public e(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Le/m/a/c/g1/d0/h$b;

    invoke-direct {p1}, Le/m/a/c/g1/d0/h$b;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/d0/h;->j:Le/m/a/c/g1/d0/h$b;

    .line 2
    iput-wide v0, p0, Le/m/a/c/g1/d0/h;->f:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Le/m/a/c/g1/d0/h;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Le/m/a/c/g1/d0/h;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Le/m/a/c/g1/d0/h;->e:J

    .line 6
    iput-wide v0, p0, Le/m/a/c/g1/d0/h;->g:J

    return-void
.end method
