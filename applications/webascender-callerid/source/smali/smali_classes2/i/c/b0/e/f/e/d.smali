.class public final Li/c/b0/e/f/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/d;->f:Li/c/b0/b/a0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/d;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/d$a;

    iget-object v1, p0, Li/c/b0/e/f/e/d;->g:Ljava/lang/Object;

    invoke-direct {v0, v1}, Li/c/b0/e/f/e/d$a;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/d;->f:Li/c/b0/b/a0;

    invoke-interface {v1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 3
    invoke-virtual {v0}, Li/c/b0/e/f/e/d$a;->b()Li/c/b0/e/f/e/d$a$a;

    move-result-object v0

    return-object v0
.end method
