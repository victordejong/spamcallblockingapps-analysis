.class final Li/c/b0/e/f/e/r1$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/q<",
        "Li/c/b0/f/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Li/c/b0/b/d0;

.field final j:Z


# direct methods
.method constructor <init>(Li/c/b0/b/v;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/r1$m;->f:Li/c/b0/b/v;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/r1$m;->g:J

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/r1$m;->h:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/e/r1$m;->i:Li/c/b0/b/d0;

    .line 6
    iput-boolean p6, p0, Li/c/b0/e/f/e/r1$m;->j:Z

    return-void
.end method


# virtual methods
.method public a()Li/c/b0/f/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/r1$m;->f:Li/c/b0/b/v;

    iget-wide v1, p0, Li/c/b0/e/f/e/r1$m;->g:J

    iget-object v3, p0, Li/c/b0/e/f/e/r1$m;->h:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Li/c/b0/e/f/e/r1$m;->i:Li/c/b0/b/d0;

    iget-boolean v5, p0, Li/c/b0/e/f/e/r1$m;->j:Z

    invoke-virtual/range {v0 .. v5}, Li/c/b0/b/v;->replay(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/f/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/e/r1$m;->a()Li/c/b0/f/a;

    move-result-object v0

    return-object v0
.end method
