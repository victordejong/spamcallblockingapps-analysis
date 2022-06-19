.class public final Le/a/d/x/q/d$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/q/d;->c()Lq3/a/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lcom/truecaller/voip/manager/rtc/ChannelJoin;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.manager.rtc.AgoraRtcManager$join$1"
    f = "RtcManager.kt"
    l = {
        0xff,
        0x10e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/x/q/d;


# direct methods
.method public constructor <init>(Le/a/d/x/q/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/q/d$c;->f:Le/a/d/x/q/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/x/q/d$c;

    iget-object v0, p0, Le/a/d/x/q/d$c;->f:Le/a/d/x/q/d;

    invoke-direct {p1, v0, p2}, Le/a/d/x/q/d$c;-><init>(Le/a/d/x/q/d;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/x/q/d$c;

    iget-object v0, p0, Le/a/d/x/q/d$c;->f:Le/a/d/x/q/d;

    invoke-direct {p1, v0, p2}, Le/a/d/x/q/d$c;-><init>(Le/a/d/x/q/d;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/x/q/d$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/x/q/d$c;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/x/q/d$c;->f:Le/a/d/x/q/d;

    .line 5
    iget-object p1, p1, Le/a/d/x/q/d;->h:Le/a/d/c0/z1/i;

    .line 6
    iput v3, p0, Le/a/d/x/q/d$c;->e:I

    const/4 v1, 0x0

    .line 7
    invoke-interface {p1, v1, p0}, Le/a/d/c0/z1/i;->p(ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_0
    check-cast p1, Le/a/d/c0/z1/a;

    .line 9
    iget-object v1, p1, Le/a/d/c0/z1/a;->d:Ljava/lang/String;

    .line 10
    new-instance v1, Lio/agora/rtc/internal/EncryptionConfig;

    invoke-direct {v1}, Lio/agora/rtc/internal/EncryptionConfig;-><init>()V

    .line 11
    iget-object v4, p1, Le/a/d/c0/z1/a;->d:Ljava/lang/String;

    .line 12
    iput-object v4, v1, Lio/agora/rtc/internal/EncryptionConfig;->encryptionKey:Ljava/lang/String;

    .line 13
    iget-object v4, p1, Le/a/d/c0/z1/a;->c:Ljava/lang/String;

    .line 14
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Locale.US"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "AES-128-XTS"

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->AES_128_XTS:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    goto :goto_2

    :sswitch_1
    const-string v5, "MODE-END"

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->MODE_END:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    goto :goto_2

    :sswitch_2
    const-string v5, "AES-256-XTS"

    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->AES_256_XTS:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    goto :goto_2

    :sswitch_3
    const-string v5, "SM4-128-ECB"

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->SM4_128_ECB:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    goto :goto_2

    .line 19
    :cond_4
    :goto_1
    sget-object v4, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->AES_128_XTS:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 20
    :goto_2
    iput-object v4, v1, Lio/agora/rtc/internal/EncryptionConfig;->encryptionMode:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 21
    iget-object v4, p0, Le/a/d/x/q/d$c;->f:Le/a/d/x/q/d;

    .line 22
    invoke-virtual {v4}, Le/a/d/x/q/d;->j()Lio/agora/rtc/RtcEngine;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 23
    invoke-virtual {v4, v3, v1}, Lio/agora/rtc/RtcEngine;->enableEncryption(ZLio/agora/rtc/internal/EncryptionConfig;)I

    move-result v1

    .line 24
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 25
    :cond_5
    iget-object v4, p0, Le/a/d/x/q/d$c;->f:Le/a/d/x/q/d;

    .line 26
    iget-object v1, v4, Le/a/d/x/q/d;->h:Le/a/d/c0/z1/i;

    .line 27
    invoke-interface {v1}, Le/a/d/c0/z1/i;->getChannelId()Ljava/lang/String;

    move-result-object v5

    .line 28
    iget-object v6, p1, Le/a/d/c0/z1/a;->b:Ljava/lang/String;

    .line 29
    iget v7, p1, Le/a/d/c0/z1/a;->a:I

    .line 30
    iget-object v8, p1, Le/a/d/c0/z1/a;->d:Ljava/lang/String;

    .line 31
    iget-object v9, p1, Le/a/d/c0/z1/a;->c:Ljava/lang/String;

    .line 32
    iput v2, p0, Le/a/d/x/q/d$c;->e:I

    move-object v10, p0

    .line 33
    invoke-virtual/range {v4 .. v10}, Le/a/d/x/q/d;->k(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x66b94ae5 -> :sswitch_3
        -0x52e714c1 -> :sswitch_2
        0x9b22991 -> :sswitch_1
        0x73305523 -> :sswitch_0
    .end sparse-switch
.end method
