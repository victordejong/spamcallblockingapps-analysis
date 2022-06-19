.class Lcom/hiya/stingray/q/a/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/a/j;->q(Ljava/lang/String;ZZ)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/util/List<",
        "Lg/g/a/a/i/c;",
        ">;",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/i/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Z

.field final synthetic g:Lcom/hiya/stingray/q/a/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/a/j;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/a/j$d;->g:Lcom/hiya/stingray/q/a/j;

    iput-boolean p2, p0, Lcom/hiya/stingray/q/a/j$d;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/a/j$d$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/q/a/j$d$a;-><init>(Lcom/hiya/stingray/q/a/j$d;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/a/j$d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
