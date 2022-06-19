.class public final Lcom/hiya/stingray/t/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/t/a1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/a1;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/common/n$c;",
            ">;"
        }
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v4, Lcom/hiya/stingray/t/a1;

    .line 3
    invoke-virtual {v4}, Lcom/hiya/stingray/t/a1;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    new-instance v3, Lcom/hiya/stingray/ui/common/n$c;

    invoke-virtual {v4}, Lcom/hiya/stingray/t/a1;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {v3, v2, v6}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/hiya/stingray/t/a1;->d()Ljava/lang/String;

    move-result-object v3

    move v2, v5

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lkotlin/s/k;->p()V

    throw v1

    :cond_3
    return-object v0
.end method
