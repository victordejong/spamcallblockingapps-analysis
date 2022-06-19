.class final Li/c/b0/e/f/e/r1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/q<",
        "Li/c/b0/f/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:I

.field final h:Z


# direct methods
.method constructor <init>(Li/c/b0/b/v;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/r1$a;->f:Li/c/b0/b/v;

    .line 3
    iput p2, p0, Li/c/b0/e/f/e/r1$a;->g:I

    .line 4
    iput-boolean p3, p0, Li/c/b0/e/f/e/r1$a;->h:Z

    return-void
.end method


# virtual methods
.method public a()Li/c/b0/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/r1$a;->f:Li/c/b0/b/v;

    iget v1, p0, Li/c/b0/e/f/e/r1$a;->g:I

    iget-boolean v2, p0, Li/c/b0/e/f/e/r1$a;->h:Z

    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->replay(IZ)Li/c/b0/f/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/e/r1$a;->a()Li/c/b0/f/a;

    move-result-object v0

    return-object v0
.end method
