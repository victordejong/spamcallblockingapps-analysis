.class final Li/c/b0/e/b/a$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/a;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/b/u<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/d/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/b/u<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/b/a$x;->f:Li/c/b0/d/g;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/b/a$x;->f:Li/c/b0/d/g;

    invoke-static {}, Li/c/b0/b/u;->a()Li/c/b0/b/u;

    move-result-object v1

    invoke-interface {v0, v1}, Li/c/b0/d/g;->accept(Ljava/lang/Object;)V

    return-void
.end method
