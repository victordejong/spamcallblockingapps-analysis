.class public final Li/c/b0/e/f/a/l;
.super Li/c/b0/b/e;
.source "SourceFile"


# instance fields
.field final f:Li/c/b0/b/i;


# direct methods
.method public constructor <init>(Li/c/b0/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/l;->f:Li/c/b0/b/i;

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/l;->f:Li/c/b0/b/i;

    invoke-interface {v0, p1}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void
.end method
