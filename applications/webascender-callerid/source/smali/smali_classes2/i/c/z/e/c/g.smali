.class public final Li/c/z/e/c/g;
.super Li/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/c/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b;"
    }
.end annotation


# instance fields
.field final a:Li/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/n;Li/c/y/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/n<",
            "TT;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/g;->a:Li/c/n;

    .line 3
    iput-object p2, p0, Li/c/z/e/c/g;->b:Li/c/y/d;

    return-void
.end method


# virtual methods
.method protected m(Li/c/c;)V
    .locals 2

    .line 1
    new-instance v0, Li/c/z/e/c/g$a;

    iget-object v1, p0, Li/c/z/e/c/g;->b:Li/c/y/d;

    invoke-direct {v0, p1, v1}, Li/c/z/e/c/g$a;-><init>(Li/c/c;Li/c/y/d;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/c;->a(Li/c/w/b;)V

    .line 3
    iget-object p1, p0, Li/c/z/e/c/g;->a:Li/c/n;

    invoke-interface {p1, v0}, Li/c/n;->a(Li/c/l;)V

    return-void
.end method
