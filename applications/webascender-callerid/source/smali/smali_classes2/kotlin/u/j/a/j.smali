.class public abstract Lkotlin/u/j/a/j;
.super Lkotlin/u/j/a/c;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/c/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/u/j/a/c;",
        "Lkotlin/w/c/h<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final f:I


# direct methods
.method public constructor <init>(ILkotlin/u/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/u/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlin/u/j/a/c;-><init>(Lkotlin/u/d;)V

    iput p1, p0, Lkotlin/u/j/a/j;->f:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/u/j/a/j;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/u/j/a/a;->getCompletion()Lkotlin/u/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lkotlin/w/c/r;->d(Lkotlin/w/c/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reflection.renderLambdaToString(this)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lkotlin/u/j/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
