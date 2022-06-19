.class final Li/c/b0/e/f/e/v2$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/f/e/v2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/e/f/e/v2$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;

.field private final d:Li/c/b0/b/d0;

.field final e:Z


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Li/c/b0/e/f/e/v2$k;->a:I

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/v2$k;->b:J

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/v2$k;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/e/v2$k;->d:Li/c/b0/b/d0;

    .line 6
    iput-boolean p6, p0, Li/c/b0/e/f/e/v2$k;->e:Z

    return-void
.end method


# virtual methods
.method public call()Li/c/b0/e/f/e/v2$g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/e/f/e/v2$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Li/c/b0/e/f/e/v2$l;

    iget v1, p0, Li/c/b0/e/f/e/v2$k;->a:I

    iget-wide v2, p0, Li/c/b0/e/f/e/v2$k;->b:J

    iget-object v4, p0, Li/c/b0/e/f/e/v2$k;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Li/c/b0/e/f/e/v2$k;->d:Li/c/b0/b/d0;

    iget-boolean v6, p0, Li/c/b0/e/f/e/v2$k;->e:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Li/c/b0/e/f/e/v2$l;-><init>(IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;Z)V

    return-object v7
.end method
