.class public final Li/c/b0/e/f/b/g;
.super Li/c/b0/b/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final g:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/l;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/g;->g:Li/c/b0/b/a0;

    return-void
.end method


# virtual methods
.method protected u(Lo/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/g;->g:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/b/g$a;

    invoke-direct {v1, p1}, Li/c/b0/e/f/b/g$a;-><init>(Lo/a/b;)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
