.class public final Li/c/z/e/c/t;
.super Li/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/c/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/f<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/n<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/f;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/t;->g:Li/c/n;

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
    iget-object v0, p0, Li/c/z/e/c/t;->g:Li/c/n;

    new-instance v1, Li/c/z/e/c/t$a;

    invoke-direct {v1, p1}, Li/c/z/e/c/t$a;-><init>(Lo/a/b;)V

    invoke-interface {v0, v1}, Li/c/n;->a(Li/c/l;)V

    return-void
.end method
