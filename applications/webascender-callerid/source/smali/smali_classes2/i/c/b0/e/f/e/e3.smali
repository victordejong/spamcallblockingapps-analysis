.class public final Li/c/b0/e/f/e/e3;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/e3$b;,
        Li/c/b0/e/f/e/e3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final i:I


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/d/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/e3;->f:Li/c/b0/b/a0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/e3;->g:Li/c/b0/b/a0;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/e/e3;->h:Li/c/b0/d/d;

    .line 5
    iput p4, p0, Li/c/b0/e/f/e/e3;->i:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Li/c/b0/e/f/e/e3$a;

    iget v2, p0, Li/c/b0/e/f/e/e3;->i:I

    iget-object v3, p0, Li/c/b0/e/f/e/e3;->f:Li/c/b0/b/a0;

    iget-object v4, p0, Li/c/b0/e/f/e/e3;->g:Li/c/b0/b/a0;

    iget-object v5, p0, Li/c/b0/e/f/e/e3;->h:Li/c/b0/d/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/e3$a;-><init>(Li/c/b0/b/c0;ILi/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/d;)V

    .line 2
    invoke-interface {p1, v6}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    invoke-virtual {v6}, Li/c/b0/e/f/e/e3$a;->d()V

    return-void
.end method
