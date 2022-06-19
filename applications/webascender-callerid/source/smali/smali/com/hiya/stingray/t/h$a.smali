.class final Lcom/hiya/stingray/t/h$a;
.super Lcom/hiya/stingray/t/n0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/hiya/stingray/t/o0;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/hiya/stingray/t/m0;

.field private g:Lcom/hiya/stingray/t/r0;

.field private h:Lcom/google/common/collect/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/t/n0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/stingray/t/n0;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h$a;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/t/h$a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " photoUri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/t/h$a;->c:Lcom/hiya/stingray/t/o0;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " identitySource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/t/h$a;->d:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " phoneTypeMap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/t/h$a;->e:Ljava/util/List;

    if-nez v0, :cond_4

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addressComponents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/hiya/stingray/t/h$a;->f:Lcom/hiya/stingray/t/m0;

    if-nez v0, :cond_5

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " kind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/hiya/stingray/t/h$a;->g:Lcom/hiya/stingray/t/r0;

    if-nez v0, :cond_6

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lineTypeItem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/hiya/stingray/t/h$a;->h:Lcom/google/common/collect/z;

    if-nez v0, :cond_7

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sharedIdentities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/hiya/stingray/t/h$a;->i:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    new-instance v0, Lcom/hiya/stingray/t/v;

    iget-object v3, p0, Lcom/hiya/stingray/t/h$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/hiya/stingray/t/h$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/hiya/stingray/t/h$a;->c:Lcom/hiya/stingray/t/o0;

    iget-object v6, p0, Lcom/hiya/stingray/t/h$a;->d:Ljava/util/Map;

    iget-object v7, p0, Lcom/hiya/stingray/t/h$a;->e:Ljava/util/List;

    iget-object v8, p0, Lcom/hiya/stingray/t/h$a;->f:Lcom/hiya/stingray/t/m0;

    iget-object v9, p0, Lcom/hiya/stingray/t/h$a;->g:Lcom/hiya/stingray/t/r0;

    iget-object v10, p0, Lcom/hiya/stingray/t/h$a;->h:Lcom/google/common/collect/z;

    iget-object v11, p0, Lcom/hiya/stingray/t/h$a;->i:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/hiya/stingray/t/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/o0;Ljava/util/Map;Ljava/util/List;Lcom/hiya/stingray/t/m0;Lcom/hiya/stingray/t/r0;Lcom/google/common/collect/z;Ljava/lang/String;)V

    return-object v0

    .line 21
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;)",
            "Lcom/hiya/stingray/t/n0$a;"
        }
    .end annotation

    const-string v0, "Null addressComponents"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/h$a;->e:Ljava/util/List;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;
    .locals 1

    const-string v0, "Null displayMessage"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/h$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public d(Lcom/hiya/stingray/t/o0;)Lcom/hiya/stingray/t/n0$a;
    .locals 1

    const-string v0, "Null identitySource"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/h$a;->c:Lcom/hiya/stingray/t/o0;

    return-object p0
.end method

.method public e(Lcom/hiya/stingray/t/m0;)Lcom/hiya/stingray/t/n0$a;
    .locals 1

    const-string v0, "Null kind"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/h$a;->f:Lcom/hiya/stingray/t/m0;

    return-object p0
.end method

.method public f(Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/t/n0$a;
    .locals 1

    const-string v0, "Null lineTypeItem"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/h$a;->g:Lcom/hiya/stingray/t/r0;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;
    .locals 1

    const-string v0, "Null name"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/h$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/util/Map;)Lcom/hiya/stingray/t/n0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;)",
            "Lcom/hiya/stingray/t/n0$a;"
        }
    .end annotation

    const-string v0, "Null phoneTypeMap"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/h$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;
    .locals 1

    const-string v0, "Null photoUri"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/h$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public j(Lcom/google/common/collect/z;)Lcom/hiya/stingray/t/n0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/z<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hiya/stingray/t/n0$a;"
        }
    .end annotation

    const-string v0, "Null sharedIdentities"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/h$a;->h:Lcom/google/common/collect/z;

    return-object p0
.end method
