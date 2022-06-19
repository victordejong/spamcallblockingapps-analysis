.class final Li/c/b0/e/f/e/r1$b;
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
    name = "b"
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

.field final g:I

.field final h:J

.field final i:Ljava/util/concurrent/TimeUnit;

.field final j:Li/c/b0/b/d0;

.field final k:Z


# direct methods
.method constructor <init>(Li/c/b0/b/v;IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/r1$b;->f:Li/c/b0/b/v;

    .line 3
    iput p2, p0, Li/c/b0/e/f/e/r1$b;->g:I

    .line 4
    iput-wide p3, p0, Li/c/b0/e/f/e/r1$b;->h:J

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/e/r1$b;->i:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p6, p0, Li/c/b0/e/f/e/r1$b;->j:Li/c/b0/b/d0;

    .line 7
    iput-boolean p7, p0, Li/c/b0/e/f/e/r1$b;->k:Z

    return-void
.end method


# virtual methods
.method public a()Li/c/b0/f/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/r1$b;->f:Li/c/b0/b/v;

    iget v1, p0, Li/c/b0/e/f/e/r1$b;->g:I

    iget-wide v2, p0, Li/c/b0/e/f/e/r1$b;->h:J

    iget-object v4, p0, Li/c/b0/e/f/e/r1$b;->i:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Li/c/b0/e/f/e/r1$b;->j:Li/c/b0/b/d0;

    iget-boolean v6, p0, Li/c/b0/e/f/e/r1$b;->k:Z

    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/v;->replay(IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)Li/c/b0/f/a;

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
    invoke-virtual {p0}, Li/c/b0/e/f/e/r1$b;->a()Li/c/b0/f/a;

    move-result-object v0

    return-object v0
.end method
