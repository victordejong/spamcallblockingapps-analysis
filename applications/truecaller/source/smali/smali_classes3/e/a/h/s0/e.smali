.class public final Le/a/h/s0/e;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/s0/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/s0/i;",
        ">;",
        "Le/a/h/s0/h;"
    }
.end annotation


# static fields
.field public static final synthetic k:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/s0/j;

.field public final c:Le/a/h/s0/g;

.field public final d:Le/a/o5/b0;

.field public final e:Le/a/e4/b0;

.field public final f:Le/a/l4/c;

.field public final g:Le/a/k3/h;

.field public final h:Le/a/o5/s1;

.field public final i:Le/a/p5/h0;

.field public final j:Le/a/p5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/s0/e;

    const-string v2, "data"

    const-string v3, "getData()Lcom/truecaller/calling/select_number/SelectNumberData;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/s0/e;->k:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h/s0/j;Le/a/h/s0/g;Le/a/o5/b0;Le/a/e4/b0;Le/a/l4/c;Le/a/k3/h;Le/a/o5/s1;Le/a/p5/h0;Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "selectNumberModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectNumberCallable"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simInfoCache"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberTypeLabelProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telecomUtils"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themedResourceProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p2, p0, Le/a/h/s0/e;->c:Le/a/h/s0/g;

    iput-object p3, p0, Le/a/h/s0/e;->d:Le/a/o5/b0;

    iput-object p4, p0, Le/a/h/s0/e;->e:Le/a/e4/b0;

    iput-object p5, p0, Le/a/h/s0/e;->f:Le/a/l4/c;

    iput-object p6, p0, Le/a/h/s0/e;->g:Le/a/k3/h;

    iput-object p7, p0, Le/a/h/s0/e;->h:Le/a/o5/s1;

    iput-object p8, p0, Le/a/h/s0/e;->i:Le/a/p5/h0;

    iput-object p9, p0, Le/a/h/s0/e;->j:Le/a/p5/c;

    .line 2
    iput-object p1, p0, Le/a/h/s0/e;->b:Le/a/h/s0/j;

    return-void
.end method


# virtual methods
.method public final A()Le/a/h/s0/b;
    .locals 3

    iget-object v0, p0, Le/a/h/s0/e;->b:Le/a/h/s0/j;

    sget-object v1, Le/a/h/s0/e;->k:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/s0/j;->rc(Le/a/h/s0/h;Ls1/a/l;)Le/a/h/s0/b;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 9

    .line 1
    check-cast p1, Le/a/h/s0/i;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/s0/d;

    .line 6
    iget-object v0, v0, Le/a/h/s0/d;->b:Lcom/truecaller/data/entity/HistoryEvent;

    .line 7
    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object v1

    .line 8
    iget-object v1, v1, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/h/s0/d;

    .line 10
    iget-object p2, p2, Le/a/h/s0/d;->a:Lcom/truecaller/data/entity/Number;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {v0}, Le/a/e/a2;->u(Lcom/truecaller/data/entity/HistoryEvent;)Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    move-result-object v3

    .line 12
    iget-object v4, p0, Le/a/h/s0/e;->d:Le/a/o5/b0;

    .line 13
    iget-wide v5, v0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 14
    invoke-interface {v4, v5, v6}, Le/a/o5/b0;->v(J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    iget-object v5, p0, Le/a/h/s0/e;->e:Le/a/e4/b0;

    .line 16
    iget-object v6, v0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    .line 17
    invoke-interface {v5, v6}, Le/a/e4/b0;->get(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 18
    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object v6

    .line 19
    iget-boolean v6, v6, Le/a/h/s0/b;->a:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    if-eqz v5, :cond_1

    .line 20
    iget v5, v5, Lcom/truecaller/multisim/SimInfo;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 21
    :goto_1
    iget-object v6, p0, Le/a/h/s0/e;->h:Le/a/o5/s1;

    .line 22
    iget v0, v0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    .line 23
    invoke-interface {v6, v0}, Le/a/o5/s1;->a(I)Z

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    .line 24
    :goto_2
    iget-object v6, p0, Le/a/h/s0/e;->i:Le/a/p5/h0;

    iget-object v7, p0, Le/a/h/s0/e;->g:Le/a/k3/h;

    invoke-static {p2, v6, v7}, Le/a/m0/a1$k;->m0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;Le/a/k3/h;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_3

    move v7, v8

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    if-eqz v7, :cond_4

    .line 26
    iget-object v6, p0, Le/a/h/s0/e;->i:Le/a/p5/h0;

    invoke-static {p2, v6}, Le/a/m0/a1$k;->a0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;)Ljava/lang/String;

    move-result-object v6

    .line 27
    :cond_4
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v7, "GUIUtils.bidiFormat(number.numberForDisplay)"

    invoke-static {p2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/h/s0/i;->setTitle(Ljava/lang/String;)V

    .line 28
    invoke-interface {p1, v6, v3, v5, v0}, Le/a/h/s0/i;->a3(Ljava/lang/CharSequence;Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;Ljava/lang/Integer;Z)V

    .line 29
    invoke-interface {p1, v4}, Le/a/h/s0/i;->p(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object p2

    .line 31
    iget-boolean v0, p2, Le/a/h/s0/b;->b:Z

    if-eqz v0, :cond_5

    .line 32
    sget-object p2, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->MESSAGE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    goto :goto_4

    .line 33
    :cond_5
    iget-boolean v0, p2, Le/a/h/s0/b;->c:Z

    if-eqz v0, :cond_6

    .line 34
    sget-object p2, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->VOICE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    goto :goto_4

    .line 35
    :cond_6
    iget-boolean p2, p2, Le/a/h/s0/b;->a:Z

    if-eqz p2, :cond_7

    .line 36
    sget-object p2, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->SIM_ONE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    goto :goto_4

    .line 37
    :cond_7
    sget-object p2, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->CALL:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 38
    :goto_4
    invoke-interface {p1, p2}, Le/a/h/s0/i;->O(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    .line 39
    sget-object p2, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->SIM_TWO:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object v0

    .line 40
    iget-boolean v0, v0, Le/a/h/s0/b;->b:Z

    if-nez v0, :cond_8

    .line 41
    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object v0

    .line 42
    iget-boolean v0, v0, Le/a/h/s0/b;->a:Z

    if-eqz v0, :cond_8

    .line 43
    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object v0

    .line 44
    iget-boolean v0, v0, Le/a/h/s0/b;->c:Z

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    move v8, v1

    .line 45
    :goto_5
    invoke-interface {p1, p2, v8}, Le/a/h/s0/i;->G4(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Z)V

    .line 46
    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object p2

    .line 47
    iget-object p2, p2, Le/a/h/s0/b;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p2, :cond_b

    .line 48
    invoke-interface {p1}, Le/a/h/s0/i;->z()Le/a/l4/d;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    new-instance v0, Le/a/l4/d;

    iget-object v3, p0, Le/a/h/s0/e;->i:Le/a/p5/h0;

    iget-object v4, p0, Le/a/h/s0/e;->f:Le/a/l4/c;

    iget-object v5, p0, Le/a/h/s0/e;->j:Le/a/p5/c;

    invoke-direct {v0, v3, v4, v5}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    .line 49
    :goto_6
    invoke-static {p2}, Le/a/c/p/a;->m0(Lcom/truecaller/data/entity/Contact;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/a/l4/d;->Lj(Ljava/util/Set;)V

    .line 50
    invoke-interface {p1, v0}, Le/a/h/s0/i;->e(Le/a/l4/d;)V

    .line 51
    invoke-interface {p1}, Le/a/h/s0/i;->o()Le/a/b0/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    new-instance v0, Le/a/b0/a/b/a;

    iget-object v3, p0, Le/a/h/s0/e;->i:Le/a/p5/h0;

    invoke-direct {v0, v3}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    :goto_7
    const/4 v3, 0x5

    .line 52
    invoke-static {p2, v1, v1, v2, v3}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p2

    const/4 v3, 0x2

    invoke-static {v0, p2, v1, v3, v2}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 53
    invoke-interface {p1, v0}, Le/a/h/s0/i;->i(Le/a/b0/a/b/a;)V

    :cond_b
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/h/s0/b;->d:Ljava/util/ArrayList;

    .line 3
    iget v1, p1, Le/a/o2/h;->b:I

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "data.items[event.position]"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/h/s0/d;

    .line 5
    iget-object v1, v0, Le/a/h/s0/d;->b:Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v2, "ItemEvent.ACTION_SIM_TWO_CLICKED"

    .line 9
    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 10
    iget-object v2, p0, Le/a/h/s0/e;->c:Le/a/h/s0/g;

    .line 11
    iget-object v0, v0, Le/a/h/s0/d;->a:Lcom/truecaller/data/entity/Number;

    .line 12
    invoke-virtual {p0}, Le/a/h/s0/e;->A()Le/a/h/s0/b;

    move-result-object v3

    .line 13
    iget-object v3, v3, Le/a/h/s0/b;->e:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    .line 14
    invoke-interface {v2, v0, v1, p1, v3}, Le/a/h/s0/g;->I6(Lcom/truecaller/data/entity/Number;Ljava/lang/String;ILcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    const/4 p1, 0x1

    return p1
.end method
