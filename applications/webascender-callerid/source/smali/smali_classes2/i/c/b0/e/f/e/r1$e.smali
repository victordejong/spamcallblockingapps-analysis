.class final Li/c/b0/e/f/e/r1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;",
        "Li/c/b0/b/a0<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final f:Li/c/b0/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field private final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/d/c;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/r1$e;->f:Li/c/b0/d/c;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/r1$e;->g:Li/c/b0/d/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Li/c/b0/b/a0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Li/c/b0/b/a0<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/r1$e;->g:Li/c/b0/d/o;

    invoke-interface {v0, p1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Li/c/b0/b/a0;

    .line 2
    new-instance v1, Li/c/b0/e/f/e/z1;

    new-instance v2, Li/c/b0/e/f/e/r1$d;

    iget-object v3, p0, Li/c/b0/e/f/e/r1$e;->f:Li/c/b0/d/c;

    invoke-direct {v2, v3, p1}, Li/c/b0/e/f/e/r1$d;-><init>(Li/c/b0/d/c;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Li/c/b0/e/f/e/z1;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/r1$e;->a(Ljava/lang/Object;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method
