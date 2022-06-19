.class public final synthetic Li/a/d/f/z/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:Li/a/d/c/e;

.field public final synthetic g:Li/a/d/c/e;

.field public final synthetic h:Li/a/d/c/e;


# direct methods
.method public synthetic constructor <init>(Li/a/d/c/e;Li/a/d/c/e;Li/a/d/c/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a/d/f/z/c;->f:Li/a/d/c/e;

    iput-object p2, p0, Li/a/d/f/z/c;->g:Li/a/d/c/e;

    iput-object p3, p0, Li/a/d/f/z/c;->h:Li/a/d/c/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Li/a/d/f/z/c;->f:Li/a/d/c/e;

    iget-object v1, p0, Li/a/d/f/z/c;->g:Li/a/d/c/e;

    iget-object v2, p0, Li/a/d/f/z/c;->h:Li/a/d/c/e;

    invoke-static {v0, v1, v2}, Li/a/d/f/z/d$b;->i(Li/a/d/c/e;Li/a/d/c/e;Li/a/d/c/e;)V

    return-void
.end method
