.class public final Li/c/z/e/b/n;
.super Li/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/n$a;
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
.field private final g:Li/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/o<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/o<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/f;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/n;->g:Li/c/o;

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
    iget-object v0, p0, Li/c/z/e/b/n;->g:Li/c/o;

    new-instance v1, Li/c/z/e/b/n$a;

    invoke-direct {v1, p1}, Li/c/z/e/b/n$a;-><init>(Lo/a/b;)V

    invoke-virtual {v0, v1}, Li/c/o;->b(Li/c/q;)V

    return-void
.end method
