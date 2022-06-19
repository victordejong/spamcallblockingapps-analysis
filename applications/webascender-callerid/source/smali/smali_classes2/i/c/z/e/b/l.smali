.class public final Li/c/z/e/b/l;
.super Li/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/l$a;,
        Li/c/z/e/b/l$b;,
        Li/c/z/e/b/l$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/f;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/l;->g:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public I(Lo/a/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Li/c/z/c/a;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Li/c/z/e/b/l$a;

    move-object v1, p1

    check-cast v1, Li/c/z/c/a;

    iget-object v2, p0, Li/c/z/e/b/l;->g:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Li/c/z/e/b/l$a;-><init>(Li/c/z/c/a;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li/c/z/e/b/l$b;

    iget-object v1, p0, Li/c/z/e/b/l;->g:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Li/c/z/e/b/l$b;-><init>(Lo/a/b;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    :goto_0
    return-void
.end method
