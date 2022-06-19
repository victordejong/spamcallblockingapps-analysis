.class public Lcom/hiya/stingray/t/i1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/hiya/stingray/q/c/i/b;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/q/c/i/b;

    invoke-direct {v0}, Lcom/hiya/stingray/q/c/i/b;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/b;->U0(Ljava/lang/String;)V

    const-string p1, ""

    .line 4
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/b;->R0(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/q/c/i/b;->T0(J)V

    return-object v0
.end method

.method public b(Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/q/c/i/b;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/q/c/i/b;->S0(Z)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/q/c/i/b;->T0(J)V

    return-object p1
.end method

.method public c(Lcom/hiya/stingray/q/c/i/b;Ljava/lang/String;)Lcom/hiya/stingray/q/c/i/b;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/q/c/i/b;->R0(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/q/c/i/b;->T0(J)V

    return-object p1
.end method
