.class public final Li/c/z/e/e/f;
.super Li/c/o;
.source "SourceFile"

# interfaces
.implements Li/c/z/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/o<",
        "TT;>;",
        "Li/c/z/c/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/Object;
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
    invoke-direct {p0}, Li/c/o;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/e/f;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/e/f;->f:Ljava/lang/Object;

    return-object v0
.end method

.method protected k(Li/c/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/e/h;

    iget-object v1, p0, Li/c/z/e/e/f;->f:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Li/c/z/e/e/h;-><init>(Li/c/q;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/q;->a(Li/c/w/b;)V

    .line 3
    invoke-virtual {v0}, Li/c/z/e/e/h;->run()V

    return-void
.end method
