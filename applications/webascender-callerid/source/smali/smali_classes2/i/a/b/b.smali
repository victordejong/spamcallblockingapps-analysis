.class public final synthetic Li/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/p;


# instance fields
.field public final synthetic f:Li/a/b/r;

.field public final synthetic g:Li/a/b/e;

.field public final synthetic h:Li/a/b/e;


# direct methods
.method public synthetic constructor <init>(Li/a/b/r;Li/a/b/e;Li/a/b/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a/b/b;->f:Li/a/b/r;

    iput-object p2, p0, Li/a/b/b;->g:Li/a/b/e;

    iput-object p3, p0, Li/a/b/b;->h:Li/a/b/e;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Li/a/b/b;->f:Li/a/b/r;

    iget-object v1, p0, Li/a/b/b;->g:Li/a/b/e;

    iget-object v2, p0, Li/a/b/b;->h:Li/a/b/e;

    invoke-virtual {v0, v1, v2}, Li/a/b/r;->d(Li/a/b/e;Li/a/b/e;)V

    return-void
.end method
