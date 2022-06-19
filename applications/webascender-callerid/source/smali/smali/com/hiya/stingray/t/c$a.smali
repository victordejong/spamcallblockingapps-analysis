.class final Lcom/hiya/stingray/t/c$a;
.super Lcom/hiya/stingray/t/d0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Long;

.field private d:Lcom/hiya/stingray/t/f0;

.field private e:Lcom/hiya/stingray/t/b0;

.field private f:Ljava/lang/Boolean;

.field private g:Lcom/hiya/stingray/t/y0;

.field private h:Lcom/hiya/stingray/t/n0;

.field private i:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/t/d0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/stingray/t/d0;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/c$a;->a:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/hiya/stingray/t/c$a;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " durationInSeconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/t/c$a;->c:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " utcTimeMillis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/t/c$a;->d:Lcom/hiya/stingray/t/f0;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/t/c$a;->e:Lcom/hiya/stingray/t/b0;

    if-nez v0, :cond_4

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " blockStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/hiya/stingray/t/c$a;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/hiya/stingray/t/c$a;->g:Lcom/hiya/stingray/t/y0;

    if-nez v0, :cond_6

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reputationDataItem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/hiya/stingray/t/c$a;->h:Lcom/hiya/stingray/t/n0;

    if-nez v0, :cond_7

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " identityData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    new-instance v0, Lcom/hiya/stingray/t/q;

    iget-object v3, p0, Lcom/hiya/stingray/t/c$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hiya/stingray/t/c$a;->b:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/hiya/stingray/t/c$a;->c:Ljava/lang/Long;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/hiya/stingray/t/c$a;->d:Lcom/hiya/stingray/t/f0;

    iget-object v8, p0, Lcom/hiya/stingray/t/c$a;->e:Lcom/hiya/stingray/t/b0;

    iget-object v1, p0, Lcom/hiya/stingray/t/c$a;->f:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v10, p0, Lcom/hiya/stingray/t/c$a;->g:Lcom/hiya/stingray/t/y0;

    iget-object v11, p0, Lcom/hiya/stingray/t/c$a;->h:Lcom/hiya/stingray/t/n0;

    iget-object v12, p0, Lcom/hiya/stingray/t/c$a;->i:Ljava/lang/Integer;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/hiya/stingray/t/q;-><init>(Ljava/lang/String;IJLcom/hiya/stingray/t/f0;Lcom/hiya/stingray/t/b0;ZLcom/hiya/stingray/t/y0;Lcom/hiya/stingray/t/n0;Ljava/lang/Integer;)V

    return-object v0

    .line 22
    :cond_8
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

.method public b(Lcom/hiya/stingray/t/b0;)Lcom/hiya/stingray/t/d0$a;
    .locals 1

    const-string v0, "Null blockStatus"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/c$a;->e:Lcom/hiya/stingray/t/b0;

    return-object p0
.end method

.method public c(Lcom/hiya/stingray/t/f0;)Lcom/hiya/stingray/t/d0$a;
    .locals 1

    const-string v0, "Null callState"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/c$a;->d:Lcom/hiya/stingray/t/f0;

    return-object p0
.end method

.method public d(I)Lcom/hiya/stingray/t/d0$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/t/c$a;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public e(Ljava/lang/Integer;)Lcom/hiya/stingray/t/d0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/c$a;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public f(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/d0$a;
    .locals 1

    const-string v0, "Null identityData"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/c$a;->h:Lcom/hiya/stingray/t/n0;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/hiya/stingray/t/d0$a;
    .locals 1

    const-string v0, "Null phone"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/c$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public h(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/d0$a;
    .locals 1

    const-string v0, "Null reputationDataItem"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/c$a;->g:Lcom/hiya/stingray/t/y0;

    return-object p0
.end method

.method public i(Z)Lcom/hiya/stingray/t/d0$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/t/c$a;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public j(J)Lcom/hiya/stingray/t/d0$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/t/c$a;->c:Ljava/lang/Long;

    return-object p0
.end method
