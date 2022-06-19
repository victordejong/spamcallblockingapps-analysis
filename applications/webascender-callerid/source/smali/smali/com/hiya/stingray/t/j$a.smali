.class final Lcom/hiya/stingray/t/j$a;
.super Lcom/hiya/stingray/t/s0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/hiya/stingray/t/n0;

.field private c:Lcom/hiya/stingray/t/y0;

.field private d:Ljava/lang/Integer;

.field private e:Lcom/hiya/stingray/util/i$a;

.field private f:Ljava/lang/Integer;

.field private g:Lcom/hiya/stingray/util/i$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/t/s0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/stingray/t/s0;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/j$a;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/hiya/stingray/t/x;

    iget-object v3, p0, Lcom/hiya/stingray/t/j$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/hiya/stingray/t/j$a;->b:Lcom/hiya/stingray/t/n0;

    iget-object v5, p0, Lcom/hiya/stingray/t/j$a;->c:Lcom/hiya/stingray/t/y0;

    iget-object v6, p0, Lcom/hiya/stingray/t/j$a;->d:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/hiya/stingray/t/j$a;->e:Lcom/hiya/stingray/util/i$a;

    iget-object v8, p0, Lcom/hiya/stingray/t/j$a;->f:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/hiya/stingray/t/j$a;->g:Lcom/hiya/stingray/util/i$b;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/hiya/stingray/t/x;-><init>(Ljava/lang/String;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Ljava/lang/Integer;Lcom/hiya/stingray/util/i$a;Ljava/lang/Integer;Lcom/hiya/stingray/util/i$b;)V

    return-object v0

    .line 5
    :cond_1
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

.method public b(Ljava/lang/Integer;)Lcom/hiya/stingray/t/s0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j$a;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(Lcom/hiya/stingray/util/i$a;)Lcom/hiya/stingray/t/s0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j$a;->e:Lcom/hiya/stingray/util/i$a;

    return-object p0
.end method

.method public d(Ljava/lang/Integer;)Lcom/hiya/stingray/t/s0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j$a;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public e(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/s0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j$a;->b:Lcom/hiya/stingray/t/n0;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/hiya/stingray/t/s0$a;
    .locals 1

    const-string v0, "Null phone"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/j$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public g(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/s0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j$a;->c:Lcom/hiya/stingray/t/y0;

    return-object p0
.end method

.method public h(Lcom/hiya/stingray/util/i$b;)Lcom/hiya/stingray/t/s0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j$a;->g:Lcom/hiya/stingray/util/i$b;

    return-object p0
.end method
