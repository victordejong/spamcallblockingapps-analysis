.class public final Li/c/b0/e/f/a/b;
.super Li/c/b0/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/b$a;,
        Li/c/b0/e/f/a/b$b;
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i;

.field final g:Li/c/b0/b/i;


# direct methods
.method public constructor <init>(Li/c/b0/b/i;Li/c/b0/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/b;->f:Li/c/b0/b/i;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/a/b;->g:Li/c/b0/b/i;

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/b;->f:Li/c/b0/b/i;

    new-instance v1, Li/c/b0/e/f/a/b$b;

    iget-object v2, p0, Li/c/b0/e/f/a/b;->g:Li/c/b0/b/i;

    invoke-direct {v1, p1, v2}, Li/c/b0/e/f/a/b$b;-><init>(Li/c/b0/b/g;Li/c/b0/b/i;)V

    invoke-interface {v0, v1}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void
.end method
