.class public final Lq3/b/k/p$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/b/k/p;-><init>(Ljava/lang/String;Lq3/b/k/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "[",
        "Lq3/b/i/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq3/b/k/p;


# direct methods
.method public constructor <init>(Lq3/b/k/p;)V
    .locals 0

    iput-object p1, p0, Lq3/b/k/p$d;->b:Lq3/b/k/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lq3/b/k/p$d;->b:Lq3/b/k/p;

    .line 2
    iget-object v0, v0, Lq3/b/k/p;->i:Lq3/b/k/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lq3/b/k/f;->c()[Lq3/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 6
    invoke-interface {v4}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-static {v1}, Lq3/b/k/o;->a(Ljava/util/List;)[Lq3/b/i/d;

    move-result-object v0

    return-object v0
.end method
