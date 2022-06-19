.class public final Li/c/b0/e/f/a/d;
.super Li/c/b0/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/d$a;
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i;

.field final g:Li/c/b0/d/a;


# direct methods
.method public constructor <init>(Li/c/b0/b/i;Li/c/b0/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/d;->f:Li/c/b0/b/i;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/a/d;->g:Li/c/b0/d/a;

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/d;->f:Li/c/b0/b/i;

    new-instance v1, Li/c/b0/e/f/a/d$a;

    iget-object v2, p0, Li/c/b0/e/f/a/d;->g:Li/c/b0/d/a;

    invoke-direct {v1, p1, v2}, Li/c/b0/e/f/a/d$a;-><init>(Li/c/b0/b/g;Li/c/b0/d/a;)V

    invoke-interface {v0, v1}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void
.end method
