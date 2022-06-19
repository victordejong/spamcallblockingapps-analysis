.class public final Li/c/b0/e/f/f/w;
.super Li/c/b0/b/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/f/w$a;,
        Li/c/b0/e/f/f/w$c;,
        Li/c/b0/e/f/f/w$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final f:[Li/c/b0/b/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Li/c/b0/b/i0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Li/c/b0/b/i0;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li/c/b0/b/i0<",
            "+TT;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/w;->f:[Li/c/b0/b/i0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/f/w;->g:Li/c/b0/d/o;

    return-void
.end method


# virtual methods
.method protected C(Li/c/b0/b/g0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/f/w;->f:[Li/c/b0/b/i0;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3
    aget-object v0, v0, v2

    new-instance v1, Li/c/b0/e/f/f/m$a;

    new-instance v2, Li/c/b0/e/f/f/w$a;

    invoke-direct {v2, p0}, Li/c/b0/e/f/f/w$a;-><init>(Li/c/b0/e/f/f/w;)V

    invoke-direct {v1, p1, v2}, Li/c/b0/e/f/f/m$a;-><init>(Li/c/b0/b/g0;Li/c/b0/d/o;)V

    invoke-interface {v0, v1}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    return-void

    .line 4
    :cond_0
    new-instance v3, Li/c/b0/e/f/f/w$b;

    iget-object v4, p0, Li/c/b0/e/f/f/w;->g:Li/c/b0/d/o;

    invoke-direct {v3, p1, v1, v4}, Li/c/b0/e/f/f/w$b;-><init>(Li/c/b0/b/g0;ILi/c/b0/d/o;)V

    .line 5
    invoke-interface {p1, v3}, Li/c/b0/b/g0;->onSubscribe(Li/c/b0/c/c;)V

    :goto_0
    if-ge v2, v1, :cond_3

    .line 6
    invoke-virtual {v3}, Li/c/b0/e/f/f/w$b;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    aget-object p1, v0, v2

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Li/c/b0/e/f/f/w$b;->b(Ljava/lang/Throwable;I)V

    return-void

    .line 9
    :cond_2
    iget-object v4, v3, Li/c/b0/e/f/f/w$b;->h:[Li/c/b0/e/f/f/w$c;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
