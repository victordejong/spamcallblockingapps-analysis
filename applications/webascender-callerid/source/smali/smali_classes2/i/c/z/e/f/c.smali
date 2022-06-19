.class public final Li/c/z/e/f/c;
.super Li/c/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/lang/Object;
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
    invoke-direct {p0}, Li/c/s;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/f/c;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected j(Li/c/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/w/c;->a()Li/c/w/b;

    move-result-object v0

    invoke-interface {p1, v0}, Li/c/t;->a(Li/c/w/b;)V

    .line 2
    iget-object v0, p0, Li/c/z/e/f/c;->f:Ljava/lang/Object;

    invoke-interface {p1, v0}, Li/c/t;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
