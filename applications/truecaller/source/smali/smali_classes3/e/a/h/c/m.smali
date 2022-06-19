.class public final Le/a/h/c/m;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/c/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/c/l;",
        ">;",
        "Le/a/h/c/k;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/c/j;

.field public final c:Le/a/p5/c0;

.field public final d:Le/a/h/c/c;

.field public final e:Le/a/k3/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/c/m;

    const-string v2, "speedDialModels"

    const-string v3, "getSpeedDialModels()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/c/m;->f:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/p5/c0;Le/a/h/c/c;Le/a/h/c/j;Le/a/k3/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationHandler"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberTypeLabelProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/h/c/m;->c:Le/a/p5/c0;

    iput-object p2, p0, Le/a/h/c/m;->d:Le/a/h/c/c;

    iput-object p4, p0, Le/a/h/c/m;->e:Le/a/k3/h;

    .line 2
    iput-object p3, p0, Le/a/h/c/m;->b:Le/a/h/c/j;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h/c/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/h/c/m;->b:Le/a/h/c/j;

    sget-object v1, Le/a/h/c/m;->f:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/c/j;->X3(Le/a/h/c/k;Ls1/a/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 7

    .line 1
    check-cast p1, Le/a/h/c/l;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2}, Le/a/h/c/l;->G2(Z)V

    .line 4
    invoke-virtual {p0}, Le/a/h/c/m;->A()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/h/c/h;

    if-eqz p2, :cond_9

    .line 5
    iget-object v3, p2, Le/a/h/c/h;->a:Ljava/lang/String;

    .line 6
    iget-object v4, p2, Le/a/h/c/h;->b:Lcom/truecaller/data/entity/Number;

    .line 7
    iget-object p2, p2, Le/a/h/c/h;->c:Lcom/truecaller/data/entity/Contact;

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v3, v5

    :cond_0
    const-string v5, "number?.numberForDisplay ?: originalValue"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "it"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v0

    :goto_2
    invoke-static {p2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p2

    if-nez p2, :cond_6

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    :cond_5
    :goto_3
    if-nez v2, :cond_6

    move-object v0, v3

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    .line 11
    iget-object p2, p0, Le/a/h/c/m;->c:Le/a/p5/c0;

    iget-object v0, p0, Le/a/h/c/m;->e:Le/a/k3/h;

    invoke-static {v4, p2, v0}, Le/a/m0/a1$k;->m0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;Le/a/k3/h;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_7
    :goto_4
    invoke-interface {p1, v0}, Le/a/h/c/l;->setLabel(Ljava/lang/String;)V

    if-eqz v5, :cond_8

    move-object v3, v5

    .line 13
    :cond_8
    invoke-static {v3}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "GUIUtils.bidiFormat(displayName ?: displayNumber)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/h/c/l;->setTitle(Ljava/lang/String;)V

    .line 14
    invoke-interface {p1, v1}, Le/a/h/c/l;->e3(Z)V

    goto :goto_5

    .line 15
    :cond_9
    iget-object p2, p0, Le/a/h/c/m;->c:Le/a/p5/c0;

    const v3, 0x7f1206d5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "resourceProvider.getStri\u2026.SpeedDial_EmptySlotHint)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/h/c/l;->setTitle(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1, v2}, Le/a/h/c/l;->e3(Z)V

    .line 17
    invoke-interface {p1, v0}, Le/a/h/c/l;->setLabel(Ljava/lang/String;)V

    goto :goto_5

    .line 18
    :cond_a
    iget-object p2, p0, Le/a/h/c/m;->c:Le/a/p5/c0;

    const v2, 0x7f120f98

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p2, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "resourceProvider.getStri\u2026(R.string.text_voicemail)"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/h/c/l;->setTitle(Ljava/lang/String;)V

    .line 19
    invoke-interface {p1, v1}, Le/a/h/c/l;->G2(Z)V

    .line 20
    invoke-interface {p1, v1}, Le/a/h/c/l;->e3(Z)V

    .line 21
    invoke-interface {p1, v0}, Le/a/h/c/l;->setLabel(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/c/m;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/o2/h;->b:I

    .line 2
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v1, "ItemEvent.CLICKED"

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/h/c/m;->d:Le/a/h/c/c;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Le/a/h/c/m;->A()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/c/h;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Le/a/h/c/h;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1, v1, v0}, Le/a/h/c/c;->Xx(ILjava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
