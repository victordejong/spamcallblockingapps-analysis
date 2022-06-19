.class public final Li/c/z/e/c/j;
.super Li/c/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/c/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/j<",
        "TT;>;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final f:Li/c/d;


# direct methods
.method public constructor <init>(Li/c/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/j;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/j;->f:Li/c/d;

    return-void
.end method


# virtual methods
.method protected u(Li/c/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/c/j;->f:Li/c/d;

    new-instance v1, Li/c/z/e/c/j$a;

    invoke-direct {v1, p1}, Li/c/z/e/c/j$a;-><init>(Li/c/l;)V

    invoke-interface {v0, v1}, Li/c/d;->a(Li/c/c;)V

    return-void
.end method
