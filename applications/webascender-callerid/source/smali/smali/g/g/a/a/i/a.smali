.class public final Lg/g/a/a/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final linkedEntities:Lg/g/a/a/i/b;
    .annotation runtime Lcom/google/gson/v/c;
        value = "linkedEntities"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "type"
    .end annotation
.end field

.field private final value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/g/a/a/i/b;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/i/a;->value:Ljava/lang/String;

    iput-object p2, p0, Lg/g/a/a/i/a;->linkedEntities:Lg/g/a/a/i/b;

    iput-object p3, p0, Lg/g/a/a/i/a;->type:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lg/g/a/a/i/b;Ljava/lang/String;ILkotlin/w/c/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_1

    const-string p3, "AugmentedFCMPushToken"

    goto :goto_0

    :cond_1
    const-string p3, "FCMPushToken"

    .line 2
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lg/g/a/a/i/a;-><init>(Ljava/lang/String;Lg/g/a/a/i/b;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidPurchaseToken"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lg/g/a/a/i/b;

    invoke-direct {v3, p2}, Lg/g/a/a/i/b;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lg/g/a/a/i/a;-><init>(Ljava/lang/String;Lg/g/a/a/i/b;Ljava/lang/String;ILkotlin/w/c/g;)V

    return-void
.end method

.method public static synthetic copy$default(Lg/g/a/a/i/a;Ljava/lang/String;Lg/g/a/a/i/b;Ljava/lang/String;ILjava/lang/Object;)Lg/g/a/a/i/a;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lg/g/a/a/i/a;->value:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lg/g/a/a/i/a;->linkedEntities:Lg/g/a/a/i/b;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lg/g/a/a/i/a;->type:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lg/g/a/a/i/a;->copy(Ljava/lang/String;Lg/g/a/a/i/b;Ljava/lang/String;)Lg/g/a/a/i/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/g/a/a/i/a;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lg/g/a/a/i/b;
    .locals 1

    iget-object v0, p0, Lg/g/a/a/i/a;->linkedEntities:Lg/g/a/a/i/b;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/g/a/a/i/a;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lg/g/a/a/i/b;Ljava/lang/String;)Lg/g/a/a/i/a;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/g/a/a/i/a;

    invoke-direct {v0, p1, p2, p3}, Lg/g/a/a/i/a;-><init>(Ljava/lang/String;Lg/g/a/a/i/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lg/g/a/a/i/a;

    if-eqz v0, :cond_0

    check-cast p1, Lg/g/a/a/i/a;

    iget-object v0, p0, Lg/g/a/a/i/a;->value:Ljava/lang/String;

    iget-object v1, p1, Lg/g/a/a/i/a;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/a/a/i/a;->linkedEntities:Lg/g/a/a/i/b;

    iget-object v1, p1, Lg/g/a/a/i/a;->linkedEntities:Lg/g/a/a/i/b;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/a/a/i/a;->type:Ljava/lang/String;

    iget-object p1, p1, Lg/g/a/a/i/a;->type:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getLinkedEntities()Lg/g/a/a/i/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/a;->linkedEntities:Lg/g/a/a/i/b;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/a;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/a;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lg/g/a/a/i/a;->value:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/g/a/a/i/a;->linkedEntities:Lg/g/a/a/i/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/g/a/a/i/a;->type:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AugmentedFcmPushTokenDTO(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/a;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkedEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/a;->linkedEntities:Lg/g/a/a/i/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/a;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
