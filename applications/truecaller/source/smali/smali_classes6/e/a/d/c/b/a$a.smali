.class public final Le/a/d/c/b/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/b/a;-><init>()V
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

    iput p1, p0, Le/a/d/c/b/a$a;->b:I

    iput-object p2, p0, Le/a/d/c/b/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/d/c/b/a$a;->b:I

    const-string v2, "<anonymous parameter 0>"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 1
    check-cast p1, Landroid/widget/CompoundButton;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/d/c/b/a$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/b/a;

    invoke-virtual {p1}, Le/a/d/c/b/a;->RA()Le/a/d/c/b/g;

    move-result-object p1

    check-cast p1, Le/a/d/c/b/o;

    .line 4
    invoke-virtual {p1}, Le/a/d/c/b/o;->Ij()Le/a/d/v/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Le/a/d/v/k/a;->e(Z)Lq3/a/p1;

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_2
    check-cast p1, Landroid/widget/CompoundButton;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 7
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/d/c/b/a$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/b/a;

    invoke-virtual {p1}, Le/a/d/c/b/a;->RA()Le/a/d/c/b/g;

    move-result-object p1

    check-cast p1, Le/a/d/c/b/o;

    .line 9
    invoke-virtual {p1}, Le/a/d/c/b/o;->Ij()Le/a/d/v/b;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 10
    invoke-interface {v1}, Le/a/d/v/b;->Y()Lq3/a/x2/i1;

    move-result-object v2

    invoke-interface {v2}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/c0/x1/b;

    .line 11
    iget-object v4, v2, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    .line 12
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    .line 13
    sget-object p1, Le/a/d/c0/x1/a$c;->a:Le/a/d/c0/x1/a$c;

    goto :goto_0

    :cond_3
    sget-object p1, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    :goto_0
    invoke-interface {v1, p1}, Le/a/d/v/k/e;->c(Le/a/d/c0/x1/a;)Lq3/a/p1;

    goto/16 :goto_3

    .line 14
    :cond_4
    new-instance p2, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Phone;

    iget-object v1, p1, Le/a/d/c/b/o;->f:Le/a/p5/c0;

    sget v4, Lcom/truecaller/voip/R$string;->voip_button_phone:I

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v1, v4, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "resourceProvider.getStri\u2026string.voip_button_phone)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Phone;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;

    iget-object v4, p1, Le/a/d/c/b/o;->f:Le/a/p5/c0;

    sget v6, Lcom/truecaller/voip/R$string;->voip_button_speaker:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026ring.voip_button_speaker)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v4, v2, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 19
    check-cast v6, Le/a/p5/r0/a;

    .line 20
    new-instance v7, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;

    .line 21
    iget-object v8, v6, Le/a/p5/r0/a;->a:Ljava/lang/String;

    .line 22
    iget-object v6, v6, Le/a/p5/r0/a;->b:Ljava/lang/String;

    .line 23
    invoke-direct {v7, v8, v6}, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v5, v2, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 29
    instance-of v6, v5, Le/a/d/c0/x1/a$b;

    if-eqz v6, :cond_6

    goto :goto_2

    .line 30
    :cond_6
    instance-of v6, v5, Le/a/d/c0/x1/a$d;

    if-eqz v6, :cond_7

    goto :goto_2

    .line 31
    :cond_7
    instance-of p2, v5, Le/a/d/c0/x1/a$c;

    if-eqz p2, :cond_8

    move-object p2, v1

    goto :goto_2

    .line 32
    :cond_8
    instance-of p2, v5, Le/a/d/c0/x1/a$a;

    if-eqz p2, :cond_a

    new-instance p2, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;

    check-cast v5, Le/a/d/c0/x1/a$a;

    .line 33
    iget-object v1, v5, Le/a/d/c0/x1/a$a;->a:Le/a/p5/r0/a;

    .line 34
    iget-object v5, v1, Le/a/p5/r0/a;->a:Ljava/lang/String;

    .line 35
    iget-object v1, v1, Le/a/p5/r0/a;->b:Ljava/lang/String;

    .line 36
    invoke-direct {p2, v5, v1}, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_2
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/b/h;

    if-eqz v1, :cond_9

    invoke-interface {v1, v4, p2}, Le/a/d/c/b/h;->k3(Ljava/util/List;Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;)V

    .line 38
    :cond_9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/b/h;

    if-eqz p1, :cond_b

    .line 39
    iget-object p2, v2, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 40
    invoke-static {p2}, Le/a/p5/s0/g;->K1(Le/a/d/c0/x1/a;)I

    move-result p2

    .line 41
    invoke-interface {p1, p2, v3}, Le/a/d/c/b/h;->D1(IZ)V

    goto :goto_3

    .line 42
    :cond_a
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_b
    :goto_3
    return-object v0
.end method
