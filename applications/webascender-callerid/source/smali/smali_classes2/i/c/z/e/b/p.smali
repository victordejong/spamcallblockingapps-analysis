.class public final Li/c/z/e/b/p;
.super Li/c/f;
.source "SourceFile"

# interfaces
.implements Li/c/z/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/f<",
        "TT;>;",
        "Li/c/z/c/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/f;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/p;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected I(Lo/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/i/e;

    iget-object v1, p0, Li/c/z/e/b/p;->g:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Li/c/z/i/e;-><init>(Lo/a/b;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/p;->g:Ljava/lang/Object;

    return-object v0
.end method
