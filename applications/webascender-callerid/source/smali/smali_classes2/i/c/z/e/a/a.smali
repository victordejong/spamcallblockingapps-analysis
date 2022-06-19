.class public final Li/c/z/e/a/a;
.super Li/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/a/a$a;,
        Li/c/z/e/a/a$b;
    }
.end annotation


# instance fields
.field final a:Li/c/d;

.field final b:Li/c/d;


# direct methods
.method public constructor <init>(Li/c/d;Li/c/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/a/a;->a:Li/c/d;

    .line 3
    iput-object p2, p0, Li/c/z/e/a/a;->b:Li/c/d;

    return-void
.end method


# virtual methods
.method protected m(Li/c/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/z/e/a/a;->a:Li/c/d;

    new-instance v1, Li/c/z/e/a/a$b;

    iget-object v2, p0, Li/c/z/e/a/a;->b:Li/c/d;

    invoke-direct {v1, p1, v2}, Li/c/z/e/a/a$b;-><init>(Li/c/c;Li/c/d;)V

    invoke-interface {v0, v1}, Li/c/d;->a(Li/c/c;)V

    return-void
.end method
