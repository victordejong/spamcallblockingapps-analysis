.class public final Li/c/b0/e/f/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/e$b;,
        Li/c/b0/e/f/e/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/e;->f:Li/c/b0/b/a0;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/e$b;

    invoke-direct {v0}, Li/c/b0/e/f/e/e$b;-><init>()V

    .line 2
    new-instance v1, Li/c/b0/e/f/e/e$a;

    iget-object v2, p0, Li/c/b0/e/f/e/e;->f:Li/c/b0/b/a0;

    invoke-direct {v1, v2, v0}, Li/c/b0/e/f/e/e$a;-><init>(Li/c/b0/b/a0;Li/c/b0/e/f/e/e$b;)V

    return-object v1
.end method
