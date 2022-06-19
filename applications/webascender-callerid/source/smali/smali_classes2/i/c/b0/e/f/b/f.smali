.class public final Li/c/b0/e/f/b/f;
.super Li/c/b0/e/c/a;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/c/a<",
        "TT;>;",
        "Li/c/b0/b/g;"
    }
.end annotation


# instance fields
.field final f:Lo/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/b<",
            "-TT;>;"
        }
    .end annotation
.end field

.field g:Li/c/b0/c/c;


# direct methods
.method public constructor <init>(Lo/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/e/c/a;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/f;->f:Lo/a/b;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/f;->g:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 2
    sget-object v0, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    iput-object v0, p0, Li/c/b0/e/f/b/f;->g:Li/c/b0/c/c;

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    iput-object v0, p0, Li/c/b0/e/f/b/f;->g:Li/c/b0/c/c;

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/f;->f:Lo/a/b;

    invoke-interface {v0}, Lo/a/b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    iput-object v0, p0, Li/c/b0/e/f/b/f;->g:Li/c/b0/c/c;

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/f;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/f;->g:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/f;->g:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/b/f;->f:Lo/a/b;

    invoke-interface {p1, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    :cond_0
    return-void
.end method
