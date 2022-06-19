.class public final Le/a/d/b/a/a/a$b;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Landroid/widget/CompoundButton;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d/b/a/a/a$b;->b:I

    iput-object p2, p0, Le/a/d/b/a/a/a$b;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/d/b/a/a/a$b;->b:I

    const-string v2, "<anonymous parameter 0>"

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-ne v1, v3, :cond_2

    .line 1
    check-cast p1, Landroid/widget/CompoundButton;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/d/b/a/a/a$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/a/a;

    invoke-virtual {p1}, Le/a/d/b/a/a/a;->QA()Le/a/d/b/a/a/h;

    move-result-object p1

    check-cast p1, Le/a/d/b/a/a/j;

    .line 4
    iget-object v1, p1, Le/a/d/b/a/a/j;->d:Le/a/d/b/a/d;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Le/a/d/b/a/d;->R1(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    sget-object p2, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->MIC_OFF:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->MIC_ON:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    .line 6
    :goto_0
    iget-object p1, p1, Le/a/d/b/a/a/j;->i:Le/a/d/c0/f0;

    invoke-interface {p1, p2}, Le/a/d/c0/f0;->c(Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    .line 7
    throw p1

    .line 8
    :cond_3
    check-cast p1, Landroid/widget/CompoundButton;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 9
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/a/d/b/a/a/a$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/a/a;

    invoke-virtual {p1}, Le/a/d/b/a/a/a;->QA()Le/a/d/b/a/a/h;

    move-result-object p1

    check-cast p1, Le/a/d/b/a/a/j;

    .line 11
    iget-object v1, p1, Le/a/d/b/a/a/j;->d:Le/a/d/b/a/d;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Le/a/d/b/a/d;->P1()Lq3/a/w2/h;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v1}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/x/p;

    if-eqz v1, :cond_e

    .line 12
    iget-object v1, v1, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    if-eqz v1, :cond_e

    .line 13
    iget-object v2, v1, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    .line 14
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    .line 15
    iget-object v1, p1, Le/a/d/b/a/a/j;->d:Le/a/d/b/a/d;

    if-eqz v1, :cond_b

    sget-object v2, Le/a/d/c0/x1/a$c;->a:Le/a/d/c0/x1/a$c;

    invoke-interface {v1, v2}, Le/a/d/b/a/d;->S1(Le/a/d/c0/x1/a;)V

    goto/16 :goto_3

    .line 16
    :cond_4
    iget-object v1, p1, Le/a/d/b/a/a/j;->d:Le/a/d/b/a/d;

    if-eqz v1, :cond_b

    sget-object v2, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    invoke-interface {v1, v2}, Le/a/d/b/a/d;->S1(Le/a/d/c0/x1/a;)V

    goto/16 :goto_3

    .line 17
    :cond_5
    new-instance v2, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Phone;

    iget-object v4, p1, Le/a/d/b/a/a/j;->j:Le/a/p5/c0;

    sget v5, Lcom/truecaller/voip/R$string;->voip_button_phone:I

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026string.voip_button_phone)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Phone;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v4, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;

    iget-object v5, p1, Le/a/d/b/a/a/j;->j:Le/a/p5/c0;

    sget v7, Lcom/truecaller/voip/R$string;->voip_button_speaker:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v7, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026ring.voip_button_speaker)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v5, v1, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 22
    check-cast v7, Le/a/p5/r0/a;

    .line 23
    new-instance v8, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;

    .line 24
    iget-object v9, v7, Le/a/p5/r0/a;->a:Ljava/lang/String;

    .line 25
    iget-object v7, v7, Le/a/p5/r0/a;->b:Ljava/lang/String;

    .line 26
    invoke-direct {v8, v9, v7}, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v6, v1, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 32
    instance-of v7, v6, Le/a/d/c0/x1/a$b;

    if-eqz v7, :cond_7

    goto :goto_2

    .line 33
    :cond_7
    instance-of v7, v6, Le/a/d/c0/x1/a$d;

    if-eqz v7, :cond_8

    goto :goto_2

    .line 34
    :cond_8
    instance-of v2, v6, Le/a/d/c0/x1/a$c;

    if-eqz v2, :cond_9

    move-object v2, v4

    goto :goto_2

    .line 35
    :cond_9
    instance-of v2, v6, Le/a/d/c0/x1/a$a;

    if-eqz v2, :cond_d

    new-instance v2, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;

    check-cast v6, Le/a/d/c0/x1/a$a;

    .line 36
    iget-object v4, v6, Le/a/d/c0/x1/a$a;->a:Le/a/p5/r0/a;

    .line 37
    iget-object v6, v4, Le/a/p5/r0/a;->a:Ljava/lang/String;

    .line 38
    iget-object v4, v4, Le/a/p5/r0/a;->b:Ljava/lang/String;

    .line 39
    invoke-direct {v2, v6, v4}, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_2
    iget-object v4, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/d/b/a/a/i;

    if-eqz v4, :cond_a

    invoke-interface {v4, v5, v2}, Le/a/d/b/a/a/i;->k3(Ljava/util/List;Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;)V

    .line 41
    :cond_a
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/b/a/a/i;

    if-eqz v2, :cond_b

    .line 42
    iget-object v1, v1, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 43
    invoke-static {v1}, Le/a/p5/s0/g;->K1(Le/a/d/c0/x1/a;)I

    move-result v1

    .line 44
    invoke-interface {v2, v1, v3}, Le/a/d/b/a/a/i;->D1(IZ)V

    :cond_b
    :goto_3
    if-eqz p2, :cond_c

    .line 45
    sget-object p2, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->AUDIO_ROUTE_ON:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    goto :goto_4

    .line 46
    :cond_c
    sget-object p2, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->AUDIO_ROUTE_OFF:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    .line 47
    :goto_4
    iget-object p1, p1, Le/a/d/b/a/a/j;->i:Le/a/d/c0/f0;

    invoke-interface {p1, p2}, Le/a/d/c0/f0;->c(Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;)V

    goto :goto_5

    .line 48
    :cond_d
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_e
    :goto_5
    return-object v0
.end method
