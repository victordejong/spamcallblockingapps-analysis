.class public final Lm/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/d0;
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
    invoke-direct {p0}, Lm/d0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lm/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lm/d0;->HTTP_1_0:Lm/d0;

    invoke-static {v0}, Lm/d0;->access$getProtocol$p(Lm/d0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lm/d0;->HTTP_1_1:Lm/d0;

    invoke-static {v0}, Lm/d0;->access$getProtocol$p(Lm/d0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lm/d0;->H2_PRIOR_KNOWLEDGE:Lm/d0;

    invoke-static {v0}, Lm/d0;->access$getProtocol$p(Lm/d0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lm/d0;->HTTP_2:Lm/d0;

    invoke-static {v0}, Lm/d0;->access$getProtocol$p(Lm/d0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lm/d0;->SPDY_3:Lm/d0;

    invoke-static {v0}, Lm/d0;->access$getProtocol$p(Lm/d0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lm/d0;->QUIC:Lm/d0;

    invoke-static {v0}, Lm/d0;->access$getProtocol$p(Lm/d0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    return-object v0

    .line 7
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
