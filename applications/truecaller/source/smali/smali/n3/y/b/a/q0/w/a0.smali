.class public final Ln3/y/b/a/q0/w/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/y/b/a/x0/v;

.field public final b:Ln3/y/b/a/x0/m;

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
    new-instance v0, Ln3/y/b/a/x0/v;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ln3/y/b/a/x0/v;-><init>(J)V

    iput-object v0, p0, Ln3/y/b/a/q0/w/a0;->a:Ln3/y/b/a/x0/v;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Ln3/y/b/a/q0/w/a0;->f:J

    .line 4
    iput-wide v0, p0, Ln3/y/b/a/q0/w/a0;->g:J

    .line 5
    iput-wide v0, p0, Ln3/y/b/a/q0/w/a0;->h:J

    .line 6
    new-instance v0, Ln3/y/b/a/x0/m;

    invoke-direct {v0}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/q0/w/a0;->b:Ln3/y/b/a/x0/m;

    return-void
.end method


# virtual methods
.method public final a(Ln3/y/b/a/q0/d;)I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/w/a0;->b:Ln3/y/b/a/x0/m;

    sget-object v1, Ln3/y/b/a/x0/x;->f:[B

    invoke-virtual {v0, v1}, Ln3/y/b/a/x0/m;->w([B)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln3/y/b/a/q0/w/a0;->c:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Ln3/y/b/a/q0/d;->f:I

    return v0
.end method
