.class public final Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;I)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->b(Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 1

    const-string v0, "$this$isVoipGroupCall"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    const-string v0, "com.truecaller.voip.manager.GROUP_VOIP"

    .line 2
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;
    .locals 2

    const-string v0, "historyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    iget v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    .line 2
    invoke-interface {p2, v0}, Le/a/o5/s1;->a(I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p2

    const-string v0, "$this$isWhatsAppCall"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    const-string v1, "com.whatsapp"

    .line 5
    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 6
    sget-object p1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->WHATSAPP_VIDEO_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->WHATSAPP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    goto :goto_2

    :cond_2
    const-string v0, "$this$isFlash"

    .line 7
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 9
    sget-object p1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->FLASH_MESSAGE:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    goto :goto_2

    :cond_4
    const-string v0, "$this$isVoipCall"

    .line 10
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    const-string v1, "com.truecaller.voip.manager.VOIP"

    .line 12
    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    sget-object p1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->VOIP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {p0, p1}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->a(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->VOIP_GROUP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 15
    sget-object p1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->CELLULAR_VIDEO_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    goto :goto_2

    .line 16
    :cond_7
    sget-object p1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->CELLULAR_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    :goto_2
    return-object p1
.end method
