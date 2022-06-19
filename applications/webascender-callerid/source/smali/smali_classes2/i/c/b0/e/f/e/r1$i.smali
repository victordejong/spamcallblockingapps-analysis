.class final Li/c/b0/e/f/e/r1$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/r1$i;->f:Li/c/b0/b/c0;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/r1$i;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method
