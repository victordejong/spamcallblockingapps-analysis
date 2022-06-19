.class public final Lq3/b/i/e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/b/i/e;-><init>(Ljava/lang/String;Lq3/b/i/h;ILjava/util/List;Lq3/b/i/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq3/b/i/e;


# direct methods
.method public constructor <init>(Lq3/b/i/e;)V
    .locals 0

    iput-object p1, p0, Lq3/b/i/e$a;->b:Lq3/b/i/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lq3/b/i/e$a;->b:Lq3/b/i/e;

    .line 2
    iget-object v1, v0, Lq3/b/i/e;->f:[Lq3/b/i/d;

    .line 3
    iget-object v2, v0, Lq3/b/i/e;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    const-string v1, "$this$elementDescriptors"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lq3/b/i/f;

    invoke-direct {v1, v0}, Lq3/b/i/f;-><init>(Lq3/b/i/d;)V

    .line 8
    invoke-virtual {v1}, Lq3/b/i/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    mul-int/lit8 v4, v4, 0x1f

    .line 9
    check-cast v5, Lq3/b/i/d;

    .line 10
    invoke-interface {v5}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    add-int/2addr v4, v6

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Lq3/b/i/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    mul-int/lit8 v3, v3, 0x1f

    .line 12
    check-cast v1, Lq3/b/i/d;

    .line 13
    invoke-interface {v1}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lq3/b/i/h;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v6

    :goto_2
    add-int/2addr v3, v1

    goto :goto_1

    :cond_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
