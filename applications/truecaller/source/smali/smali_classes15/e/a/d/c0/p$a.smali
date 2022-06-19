.class public final Le/a/d/c0/p$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/p;->e(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/ConnectionState;Le/a/d/x/p;Le/a/d/x/p;Ls1/w/d;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.HapticFeedbackUtilImpl$applyToneSetting$2"
    f = "HapticFeedbackUtil.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/p;

.field public final synthetic g:Le/a/d/x/p;

.field public final synthetic h:Le/a/d/x/p;

.field public final synthetic i:Lcom/truecaller/voip/ConnectionState;

.field public final synthetic j:Lcom/truecaller/voip/VoipState;


# direct methods
.method public constructor <init>(Le/a/d/c0/p;Le/a/d/x/p;Le/a/d/x/p;Lcom/truecaller/voip/ConnectionState;Lcom/truecaller/voip/VoipState;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/p$a;->f:Le/a/d/c0/p;

    iput-object p2, p0, Le/a/d/c0/p$a;->g:Le/a/d/x/p;

    iput-object p3, p0, Le/a/d/c0/p$a;->h:Le/a/d/x/p;

    iput-object p4, p0, Le/a/d/c0/p$a;->i:Lcom/truecaller/voip/ConnectionState;

    iput-object p5, p0, Le/a/d/c0/p$a;->j:Lcom/truecaller/voip/VoipState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/d/c0/p$a;

    iget-object v1, p0, Le/a/d/c0/p$a;->f:Le/a/d/c0/p;

    iget-object v2, p0, Le/a/d/c0/p$a;->g:Le/a/d/x/p;

    iget-object v3, p0, Le/a/d/c0/p$a;->h:Le/a/d/x/p;

    iget-object v4, p0, Le/a/d/c0/p$a;->i:Lcom/truecaller/voip/ConnectionState;

    iget-object v5, p0, Le/a/d/c0/p$a;->j:Lcom/truecaller/voip/VoipState;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/d/c0/p$a;-><init>(Le/a/d/c0/p;Le/a/d/x/p;Le/a/d/x/p;Lcom/truecaller/voip/ConnectionState;Lcom/truecaller/voip/VoipState;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/c0/p$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/c0/p$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/p$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/p$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/p$a;->g:Le/a/d/x/p;

    .line 5
    iget-boolean p1, p1, Le/a/d/x/p;->c:Z

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Lcom/truecaller/voip/util/VoipTone;->NO_TONE:Lcom/truecaller/voip/util/VoipTone;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/d/c0/p$a;->h:Le/a/d/x/p;

    .line 8
    iget-boolean p1, p1, Le/a/d/x/p;->c:Z

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lcom/truecaller/voip/util/VoipTone;->WAITING:Lcom/truecaller/voip/util/VoipTone;

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/d/c0/p$a;->i:Lcom/truecaller/voip/ConnectionState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 11
    sget-object p1, Lcom/truecaller/voip/util/VoipTone;->BUSY:Lcom/truecaller/voip/util/VoipTone;

    goto :goto_0

    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 12
    :cond_5
    sget-object p1, Lcom/truecaller/voip/util/VoipTone;->WAITING:Lcom/truecaller/voip/util/VoipTone;

    goto :goto_0

    .line 13
    :cond_6
    iget-object p1, p0, Le/a/d/c0/p$a;->f:Le/a/d/c0/p;

    iget-object v1, p0, Le/a/d/c0/p$a;->j:Lcom/truecaller/voip/VoipState;

    iget-object v3, p0, Le/a/d/c0/p$a;->h:Le/a/d/x/p;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 16
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 17
    :pswitch_0
    iget-boolean p1, v3, Le/a/d/x/p;->b:Z

    if-eqz p1, :cond_7

    .line 18
    sget-object p1, Lcom/truecaller/voip/util/VoipTone;->ACK:Lcom/truecaller/voip/util/VoipTone;

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/truecaller/voip/util/VoipTone;->NO_TONE:Lcom/truecaller/voip/util/VoipTone;

    goto :goto_0

    .line 19
    :pswitch_1
    sget-object p1, Lcom/truecaller/voip/util/VoipTone;->NO_TONE:Lcom/truecaller/voip/util/VoipTone;

    goto :goto_0

    .line 20
    :pswitch_2
    sget-object p1, Lcom/truecaller/voip/util/VoipTone;->BUSY:Lcom/truecaller/voip/util/VoipTone;

    goto :goto_0

    .line 21
    :pswitch_3
    sget-object p1, Lcom/truecaller/voip/util/VoipTone;->RINGING:Lcom/truecaller/voip/util/VoipTone;

    goto :goto_0

    .line 22
    :pswitch_4
    sget-object p1, Lcom/truecaller/voip/util/VoipTone;->WAITING:Lcom/truecaller/voip/util/VoipTone;

    .line 23
    :goto_0
    iget-object v1, p0, Le/a/d/c0/p$a;->f:Le/a/d/c0/p;

    iput v2, p0, Le/a/d/c0/p$a;->e:I

    invoke-virtual {v1, p1, p0}, Le/a/d/c0/p;->c(Lcom/truecaller/voip/util/VoipTone;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 24
    :cond_8
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
