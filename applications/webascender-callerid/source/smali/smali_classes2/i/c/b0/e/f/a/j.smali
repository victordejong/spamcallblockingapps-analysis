.class public final Li/c/b0/e/f/a/j;
.super Li/c/b0/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e;"
    }
.end annotation


# instance fields
.field final f:Lo/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/j;->f:Lo/a/a;

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/j;->f:Lo/a/a;

    new-instance v1, Li/c/b0/e/f/a/j$a;

    invoke-direct {v1, p1}, Li/c/b0/e/f/a/j$a;-><init>(Li/c/b0/b/g;)V

    invoke-interface {v0, v1}, Lo/a/a;->a(Lo/a/b;)V

    return-void
.end method
