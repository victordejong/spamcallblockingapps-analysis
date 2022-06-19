.class public Ln3/k/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/c/k$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/k/c/k$a<",
        "Ln3/k/f/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln3/k/c/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ln3/k/f/l;

    .line 2
    iget p1, p1, Ln3/k/f/l;->c:I

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ln3/k/f/l;

    .line 2
    iget-boolean p1, p1, Ln3/k/f/l;->d:Z

    return p1
.end method
