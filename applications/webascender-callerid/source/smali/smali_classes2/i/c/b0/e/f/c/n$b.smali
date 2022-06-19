.class final Li/c/b0/e/f/c/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/r;Li/c/b0/b/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;",
            "Li/c/b0/b/t<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/n$b;->f:Li/c/b0/b/r;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/c/n$b;->g:Li/c/b0/b/t;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/n$b;->g:Li/c/b0/b/t;

    iget-object v1, p0, Li/c/b0/e/f/c/n$b;->f:Li/c/b0/b/r;

    invoke-interface {v0, v1}, Li/c/b0/b/t;->a(Li/c/b0/b/r;)V

    return-void
.end method
