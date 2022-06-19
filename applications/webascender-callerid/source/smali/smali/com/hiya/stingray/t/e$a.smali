.class final Lcom/hiya/stingray/t/e$a;
.super Lcom/hiya/stingray/t/h0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/hiya/stingray/t/n0;

.field private b:Lcom/hiya/stingray/t/y0;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/t/h0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/stingray/t/h0;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/e$a;->a:Lcom/hiya/stingray/t/n0;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " identityData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/t/e$a;->b:Lcom/hiya/stingray/t/y0;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reputationDataItem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/t/e$a;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Lcom/hiya/stingray/t/s;

    iget-object v1, p0, Lcom/hiya/stingray/t/e$a;->a:Lcom/hiya/stingray/t/n0;

    iget-object v2, p0, Lcom/hiya/stingray/t/e$a;->b:Lcom/hiya/stingray/t/y0;

    iget-object v3, p0, Lcom/hiya/stingray/t/e$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/hiya/stingray/t/e$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/t/s;-><init>(Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_3
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

.method public b(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/h0$a;
    .locals 1

    const-string v0, "Null identityData"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/e$a;->a:Lcom/hiya/stingray/t/n0;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/hiya/stingray/t/h0$a;
    .locals 1

    const-string v0, "Null phone"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/e$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/hiya/stingray/t/h0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/e$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/h0$a;
    .locals 1

    const-string v0, "Null reputationDataItem"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/e$a;->b:Lcom/hiya/stingray/t/y0;

    return-object p0
.end method
