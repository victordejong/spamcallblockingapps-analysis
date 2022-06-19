.class public final Li/c/b0/e/f/b/o;
.super Li/c/b0/e/f/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/b/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final h:Li/c/b0/d/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final i:J


# direct methods
.method public constructor <init>(Li/c/b0/b/l;JLi/c/b0/d/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/l<",
            "TT;>;J",
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/b/a;-><init>(Li/c/b0/b/l;)V

    .line 2
    iput-object p4, p0, Li/c/b0/e/f/b/o;->h:Li/c/b0/d/p;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/b/o;->i:J

    return-void
.end method


# virtual methods
.method public u(Lo/a/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Li/c/b0/e/j/e;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Li/c/b0/e/j/e;-><init>(Z)V

    .line 2
    invoke-interface {p1, v5}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    .line 3
    new-instance v7, Li/c/b0/e/f/b/o$a;

    iget-wide v2, p0, Li/c/b0/e/f/b/o;->i:J

    iget-object v4, p0, Li/c/b0/e/f/b/o;->h:Li/c/b0/d/p;

    iget-object v6, p0, Li/c/b0/e/f/b/a;->g:Li/c/b0/b/l;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Li/c/b0/e/f/b/o$a;-><init>(Lo/a/b;JLi/c/b0/d/p;Li/c/b0/e/j/e;Lo/a/a;)V

    .line 4
    invoke-virtual {v7}, Li/c/b0/e/f/b/o$a;->a()V

    return-void
.end method
