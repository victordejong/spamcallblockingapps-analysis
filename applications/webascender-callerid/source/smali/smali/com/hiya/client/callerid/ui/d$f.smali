.class public final Lcom/hiya/client/callerid/ui/d$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private final a:Lcom/hiya/client/callerid/ui/d$e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/hiya/client/callerid/ui/d$f;-><init>(Lcom/hiya/client/callerid/ui/d$e;ILkotlin/w/c/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/hiya/client/callerid/ui/d$e;)V
    .locals 1

    const-string v0, "inActiveCallBottomActionsType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/d$f;->a:Lcom/hiya/client/callerid/ui/d$e;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hiya/client/callerid/ui/d$e;ILkotlin/w/c/g;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lcom/hiya/client/callerid/ui/d$e;->DISABLED:Lcom/hiya/client/callerid/ui/d$e;

    :cond_0
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/d$f;-><init>(Lcom/hiya/client/callerid/ui/d$e;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/client/callerid/ui/d$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d$f;->a:Lcom/hiya/client/callerid/ui/d$e;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/client/callerid/ui/d$f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/client/callerid/ui/d$f;

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d$f;->a:Lcom/hiya/client/callerid/ui/d$e;

    iget-object p1, p1, Lcom/hiya/client/callerid/ui/d$f;->a:Lcom/hiya/client/callerid/ui/d$e;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d$f;->a:Lcom/hiya/client/callerid/ui/d$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InActiveCallOptions(inActiveCallBottomActionsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/d$f;->a:Lcom/hiya/client/callerid/ui/d$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
