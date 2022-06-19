.class final Li/c/b0/e/f/e/r1$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/c<",
        "TS;",
        "Li/c/b0/b/k<",
        "TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final a:Li/c/b0/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/b<",
            "TS;",
            "Li/c/b0/b/k<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/d/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/b<",
            "TS;",
            "Li/c/b0/b/k<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/r1$k;->a:Li/c/b0/d/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Li/c/b0/b/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Li/c/b0/b/k<",
            "TT;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/r1$k;->a:Li/c/b0/d/b;

    invoke-interface {v0, p1, p2}, Li/c/b0/d/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p2, Li/c/b0/b/k;

    invoke-virtual {p0, p1, p2}, Li/c/b0/e/f/e/r1$k;->a(Ljava/lang/Object;Li/c/b0/b/k;)Ljava/lang/Object;

    return-object p1
.end method
