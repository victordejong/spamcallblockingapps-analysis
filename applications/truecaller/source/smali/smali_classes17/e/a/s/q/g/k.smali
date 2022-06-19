.class public final Le/a/s/q/g/k;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/s/q/g/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/s/q/g/e;",
        ">;",
        "Le/a/s/q/g/d;"
    }
.end annotation


# instance fields
.field public final b:Le/a/s/q/g/f;

.field public final c:Le/a/s/q/g/c;


# direct methods
.method public constructor <init>(Le/a/s/q/g/f;Le/a/s/q/g/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemActionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/s/q/g/k;->b:Le/a/s/q/g/f;

    iput-object p2, p0, Le/a/s/q/g/k;->c:Le/a/s/q/g/c;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/s/q/g/e;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/s/q/g/k;->b:Le/a/s/q/g/f;

    invoke-interface {v0}, Le/a/s/q/g/f;->x1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/callhero_assistant/data/Voice;

    .line 4
    iget-object v0, p0, Le/a/s/q/g/k;->b:Le/a/s/q/g/f;

    invoke-interface {v0}, Le/a/s/q/g/f;->E0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/truecaller/callhero_assistant/data/Voice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/callhero_assistant/data/Voice;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/s/q/g/e;->r(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/callhero_assistant/data/Voice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/s/q/g/e;->setName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/callhero_assistant/data/Voice;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/s/q/g/e;->d(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1, v0}, Le/a/s/q/g/e;->l(Z)V

    const/4 p2, 0x0

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Le/a/s/q/g/k;->b:Le/a/s/q/g/f;

    invoke-interface {v1}, Le/a/s/q/g/f;->s0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 10
    invoke-interface {p1, v0}, Le/a/s/q/g/e;->h(Z)V

    .line 11
    invoke-interface {p1, p2}, Le/a/s/q/g/e;->w(I)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {p1, p2}, Le/a/s/q/g/e;->h(Z)V

    if-eqz v0, :cond_1

    .line 13
    iget-object p2, p0, Le/a/s/q/g/k;->b:Le/a/s/q/g/f;

    invoke-interface {p2}, Le/a/s/q/g/f;->t0()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f080842

    goto :goto_0

    :cond_1
    const p2, 0x7f080843

    :goto_0
    invoke-interface {p1, p2}, Le/a/s/q/g/e;->w(I)V

    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/q/g/k;->b:Le/a/s/q/g/f;

    invoke-interface {v0}, Le/a/s/q/g/f;->x1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/q/g/k;->b:Le/a/s/q/g/f;

    invoke-interface {v0}, Le/a/s/q/g/f;->x1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/callhero_assistant/data/Voice;

    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/Voice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v1, "ItemEvent.CLICKED"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/s/q/g/k;->c:Le/a/s/q/g/c;

    iget-object v1, p0, Le/a/s/q/g/k;->b:Le/a/s/q/g/f;

    invoke-interface {v1}, Le/a/s/q/g/f;->x1()Ljava/util/List;

    move-result-object v1

    .line 4
    iget p1, p1, Le/a/o2/h;->b:I

    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/callhero_assistant/data/Voice;

    invoke-interface {v0, p1}, Le/a/s/q/g/c;->E1(Lcom/truecaller/callhero_assistant/data/Voice;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
