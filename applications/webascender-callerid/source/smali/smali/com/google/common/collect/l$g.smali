.class final Lcom/google/common/collect/l$g;
.super Lcom/google/common/collect/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private g:I

.field final synthetic h:Lcom/google/common/collect/l;


# direct methods
.method constructor <init>(Lcom/google/common/collect/l;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/l$g;->h:Lcom/google/common/collect/l;

    invoke-direct {p0}, Lcom/google/common/collect/e;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/l$g;->f:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/l$g;->g:I

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/l$g;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/l$g;->h:Lcom/google/common/collect/l;

    .line 2
    invoke-virtual {v1}, Lcom/google/common/collect/l;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/l$g;->f:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/l$g;->h:Lcom/google/common/collect/l;

    iget-object v1, v1, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/l$g;->g:I

    aget-object v1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/l$g;->h:Lcom/google/common/collect/l;

    iget-object v1, p0, Lcom/google/common/collect/l$g;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/l;->e(Lcom/google/common/collect/l;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/l$g;->g:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l$g;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l$g;->h:Lcom/google/common/collect/l;

    invoke-virtual {v0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/l$g;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/l$g;->a()V

    .line 4
    iget v0, p0, Lcom/google/common/collect/l$g;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/l$g;->h:Lcom/google/common/collect/l;

    iget-object v1, v1, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l$g;->h:Lcom/google/common/collect/l;

    invoke-virtual {v0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/l$g;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/l$g;->a()V

    .line 4
    iget v0, p0, Lcom/google/common/collect/l$g;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/l$g;->h:Lcom/google/common/collect/l;

    iget-object v1, p0, Lcom/google/common/collect/l$g;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/l$g;->h:Lcom/google/common/collect/l;

    iget-object v1, v1, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 7
    aput-object p1, v1, v0

    return-object v2
.end method
