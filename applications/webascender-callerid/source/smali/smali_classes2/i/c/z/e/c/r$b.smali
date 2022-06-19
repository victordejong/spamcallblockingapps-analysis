.class final Li/c/z/e/c/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/c/r;
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
.field final f:Li/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/l<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/l;Li/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;",
            "Li/c/n<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/r$b;->f:Li/c/l;

    .line 3
    iput-object p2, p0, Li/c/z/e/c/r$b;->g:Li/c/n;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/c/r$b;->g:Li/c/n;

    iget-object v1, p0, Li/c/z/e/c/r$b;->f:Li/c/l;

    invoke-interface {v0, v1}, Li/c/n;->a(Li/c/l;)V

    return-void
.end method
