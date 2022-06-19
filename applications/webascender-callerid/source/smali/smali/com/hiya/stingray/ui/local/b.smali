.class public Lcom/hiya/stingray/ui/local/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/hiya/stingray/ui/local/MainActivity$c;


# direct methods
.method public constructor <init>(Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hiya/stingray/ui/local/MainActivity$c;

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/local/MainActivity$c;

    const-class v2, Lcom/hiya/stingray/ui/local/e/b;

    const v3, 0x7f080154

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f110061

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f080155

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/hiya/stingray/ui/local/MainActivity$c;-><init>(ILjava/lang/Class;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/local/MainActivity$c;

    const-class v3, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    const v4, 0x7f08015e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f110060

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f08015f

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/hiya/stingray/ui/local/MainActivity$c;-><init>(ILjava/lang/Class;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 4
    new-instance v1, Lcom/hiya/stingray/ui/local/MainActivity$c;

    const-class v3, Lcom/hiya/stingray/ui/u/b;

    const v4, 0x7f080156

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f110169

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f080157

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/hiya/stingray/ui/local/MainActivity$c;-><init>(ILjava/lang/Class;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/local/MainActivity$c;

    const-class v3, Lcom/hiya/stingray/ui/premium/n;

    const v4, 0x7f08015c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f110288

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f08015d

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/hiya/stingray/ui/local/MainActivity$c;-><init>(ILjava/lang/Class;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 6
    new-instance v1, Lcom/hiya/stingray/ui/local/MainActivity$c;

    const-class v3, Lcom/hiya/stingray/ui/local/settings/n;

    const v4, 0x7f080160

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f11032a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f080161

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/hiya/stingray/ui/local/MainActivity$c;-><init>(ILjava/lang/Class;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 7
    invoke-static {v0}, Lkotlin/s/e;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/k;->k0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Lcom/hiya/stingray/ui/local/MainActivity$c;

    .line 10
    invoke-virtual {v3}, Lcom/hiya/stingray/ui/local/MainActivity$c;->a()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/hiya/stingray/ui/premium/n;

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 11
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    new-array p1, v2, [Lcom/hiya/stingray/ui/local/MainActivity$c;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lcom/hiya/stingray/ui/local/MainActivity$c;

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/b;->a:[Lcom/hiya/stingray/ui/local/MainActivity$c;

    return-void
.end method


# virtual methods
.method public a()[Lcom/hiya/stingray/ui/local/MainActivity$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/b;->a:[Lcom/hiya/stingray/ui/local/MainActivity$c;

    return-object v0
.end method
