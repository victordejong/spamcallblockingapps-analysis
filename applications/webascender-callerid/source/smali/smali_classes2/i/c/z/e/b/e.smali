.class public final Li/c/z/e/b/e;
.super Li/c/z/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/e/b/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final h:J

.field final i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final j:Z


# direct methods
.method public constructor <init>(Li/c/f;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/b/a;-><init>(Li/c/f;)V

    .line 2
    iput-wide p2, p0, Li/c/z/e/b/e;->h:J

    .line 3
    iput-object p4, p0, Li/c/z/e/b/e;->i:Ljava/lang/Object;

    .line 4
    iput-boolean p5, p0, Li/c/z/e/b/e;->j:Z

    return-void
.end method


# virtual methods
.method protected I(Lo/a/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v7, Li/c/z/e/b/e$a;

    iget-wide v3, p0, Li/c/z/e/b/e;->h:J

    iget-object v5, p0, Li/c/z/e/b/e;->i:Ljava/lang/Object;

    iget-boolean v6, p0, Li/c/z/e/b/e;->j:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Li/c/z/e/b/e$a;-><init>(Lo/a/b;JLjava/lang/Object;Z)V

    invoke-virtual {v0, v7}, Li/c/f;->H(Li/c/i;)V

    return-void
.end method
