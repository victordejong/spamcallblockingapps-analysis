.class public abstract Ln3/y/b/a/q0/v/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/v/h$c;,
        Ln3/y/b/a/q0/v/h$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/q0/v/d;

.field public b:Ln3/y/b/a/q0/p;

.field public c:Ln3/y/b/a/q0/h;

.field public d:Ln3/y/b/a/q0/v/f;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:Ln3/y/b/a/q0/v/h$b;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/q0/v/d;

    invoke-direct {v0}, Ln3/y/b/a/q0/v/d;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/q0/v/h;->a:Ln3/y/b/a/q0/v/d;

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 1
    iget v0, p0, Ln3/y/b/a/q0/v/h;->i:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public b(J)J
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/b/a/q0/v/h;->i:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln3/y/b/a/q0/v/h;->g:J

    return-void
.end method

.method public abstract d(Ln3/y/b/a/x0/m;)J
.end method

.method public abstract e(Ln3/y/b/a/x0/m;JLn3/y/b/a/q0/v/h$b;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public f(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ln3/y/b/a/q0/v/h$b;

    invoke-direct {p1}, Ln3/y/b/a/q0/v/h$b;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/v/h;->j:Ln3/y/b/a/q0/v/h$b;

    .line 2
    iput-wide v0, p0, Ln3/y/b/a/q0/v/h;->f:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Ln3/y/b/a/q0/v/h;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Ln3/y/b/a/q0/v/h;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Ln3/y/b/a/q0/v/h;->e:J

    .line 6
    iput-wide v0, p0, Ln3/y/b/a/q0/v/h;->g:J

    return-void
.end method
