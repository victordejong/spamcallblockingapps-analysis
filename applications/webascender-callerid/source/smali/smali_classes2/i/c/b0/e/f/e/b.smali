.class public final Li/c/b0/e/f/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/b$a;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field final g:I


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/b;->f:Li/c/b0/b/a0;

    .line 3
    iput p2, p0, Li/c/b0/e/f/e/b;->g:I

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/b$a;

    iget v1, p0, Li/c/b0/e/f/e/b;->g:I

    invoke-direct {v0, v1}, Li/c/b0/e/f/e/b$a;-><init>(I)V

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/b;->f:Li/c/b0/b/a0;

    invoke-interface {v1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-object v0
.end method
