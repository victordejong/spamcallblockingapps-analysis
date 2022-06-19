.class final Li/c/b0/e/b/a$c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;",
        "Li/c/b0/j/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/TimeUnit;

.field final g:Li/c/b0/b/d0;


# direct methods
.method constructor <init>(Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/b/a$c0;->f:Ljava/util/concurrent/TimeUnit;

    .line 3
    iput-object p2, p0, Li/c/b0/e/b/a$c0;->g:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Li/c/b0/j/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Li/c/b0/j/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/j/b;

    iget-object v1, p0, Li/c/b0/e/b/a$c0;->g:Li/c/b0/b/d0;

    iget-object v2, p0, Li/c/b0/e/b/a$c0;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Li/c/b0/b/d0;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Li/c/b0/e/b/a$c0;->f:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Li/c/b0/j/b;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/e/b/a$c0;->a(Ljava/lang/Object;)Li/c/b0/j/b;

    move-result-object p1

    return-object p1
.end method
