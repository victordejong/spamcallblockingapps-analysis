.class public final Ln3/z/j3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/z/j3/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/z/j3/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ln3/z/j3/c$c$b$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln3/z/j3/b;->b:I

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    if-le p1, v1, :cond_0

    move p1, v1

    :cond_0
    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Ln3/z/j3/b;->a:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public e1()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/j3/b;->a:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public f1(Ln3/z/j3/c$c$b$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/j3/c$c$b$c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :goto_0
    iget-object v0, p0, Ln3/z/j3/b;->a:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Ln3/z/j3/b;->b:I

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Ln3/z/j3/b;->a:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/z/j3/b;->a:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/j3/b;->a:Ljava/util/ArrayDeque;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method
