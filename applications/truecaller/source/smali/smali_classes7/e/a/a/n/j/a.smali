.class public final Le/a/a/n/j/a;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;
.implements Le/a/o2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/n/j/m;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/n/j/r;

.field public final c:Le/a/a/n/j/o;

.field public final d:Le/a/o5/b0;

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/a/o/p;


# direct methods
.method public constructor <init>(Le/a/a/n/j/r;Le/a/a/n/j/o;Le/a/o5/b0;Le/a/b0/o/a;Le/a/a/o/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageUtils"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/n/j/a;->b:Le/a/a/n/j/r;

    iput-object p2, p0, Le/a/a/n/j/a;->c:Le/a/a/n/j/o;

    iput-object p3, p0, Le/a/a/n/j/a;->d:Le/a/o5/b0;

    iput-object p4, p0, Le/a/a/n/j/a;->e:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/a/n/j/a;->f:Le/a/a/o/p;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 6

    .line 1
    check-cast p1, Le/a/a/n/j/m;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/n/j/a;->b:Le/a/a/n/j/r;

    invoke-interface {v0, p2}, Le/a/a/n/j/r;->zc(I)Le/a/a/g/l0/c;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 4
    iget v0, p2, Le/a/a/g/l0/c;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 5
    invoke-static {p2}, Le/a/c/p/a;->j3(Le/a/a/g/l0/c;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    invoke-static {v0}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ParticipantUtils.getDisp\u2026tachment.toParticipant())"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/a/a/n/j/a;->e:Le/a/b0/o/a;

    const-string v3, ""

    const-string v4, "profileFirstName"

    invoke-interface {v2, v4, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/a/n/j/a;->e:Le/a/b0/o/a;

    const-string v4, "profileLastName"

    invoke-interface {v2, v4, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {p1, v0}, Le/a/a/n/j/m;->setTitle(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    iget-object v2, p0, Le/a/a/n/j/a;->b:Le/a/a/n/j/r;

    invoke-interface {v2}, Le/a/a/n/j/r;->c8()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/a/a/n/j/a;->f:Le/a/a/o/p;

    .line 11
    iget-wide v4, p2, Le/a/a/g/l0/c;->s:J

    .line 12
    invoke-interface {v3, v4, v5}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  \u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/a/a/n/j/a;->d:Le/a/o5/b0;

    .line 14
    iget v4, p2, Le/a/a/g/l0/c;->l:I

    .line 15
    invoke-interface {v3, v4}, Le/a/o5/b0;->s(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_1
    iget-object v2, p0, Le/a/a/n/j/a;->d:Le/a/o5/b0;

    .line 17
    iget-wide v3, p2, Le/a/a/g/l0/c;->b:J

    .line 18
    invoke-interface {v2, v3, v4}, Le/a/o5/b0;->v(J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p1, v0}, Le/a/a/n/j/m;->c(Ljava/lang/String;)V

    .line 21
    iget v0, p2, Le/a/a/g/l0/c;->i:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const v0, 0x7f08037c

    goto :goto_2

    .line 22
    :cond_2
    invoke-static {p2}, Le/a/c/p/a;->j1(Le/a/a/g/l0/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f08037b

    goto :goto_2

    .line 23
    :cond_3
    iget-object v0, p0, Le/a/a/n/j/a;->b:Le/a/a/n/j/r;

    invoke-interface {v0}, Le/a/a/n/j/r;->ja()J

    move-result-wide v2

    .line 24
    iget-wide v4, p2, Le/a/a/g/l0/c;->f:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const v0, 0x7f080763

    goto :goto_2

    :cond_4
    const v0, 0x7f080774

    .line 25
    :goto_2
    invoke-interface {p1, v0}, Le/a/a/n/j/m;->setIcon(I)V

    .line 26
    iget-object v0, p0, Le/a/a/n/j/a;->b:Le/a/a/n/j/r;

    invoke-interface {v0}, Le/a/a/n/j/r;->If()Ljava/util/Set;

    move-result-object v0

    .line 27
    iget-wide v2, p2, Le/a/a/g/l0/c;->f:J

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/n/j/m;->b(Z)V

    .line 29
    iget-boolean v0, p2, Le/a/a/g/l0/c;->e:Z

    .line 30
    invoke-interface {p1, v0}, Le/a/a/n/j/m;->g(Z)V

    .line 31
    iget p2, p2, Le/a/a/g/l0/c;->i:I

    if-ne p2, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 32
    :goto_3
    invoke-interface {p1, v1}, Le/a/a/n/j/m;->h(Z)V

    :cond_6
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/a;->b:Le/a/a/n/j/r;

    invoke-interface {v0}, Le/a/a/n/j/r;->ph()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/n/j/a;->b:Le/a/a/n/j/r;

    invoke-interface {v0, p1}, Le/a/a/n/j/r;->zc(I)Le/a/a/g/l0/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-wide v0, p1, Le/a/a/g/l0/c;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/n/j/a;->b:Le/a/a/n/j/r;

    .line 2
    iget v1, p1, Le/a/o2/h;->b:I

    .line 3
    invoke-interface {v0, v1}, Le/a/a/n/j/r;->zc(I)Le/a/a/g/l0/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x67eccfc0

    if-eq v2, v3, :cond_1

    const v3, -0x4e5b1355    # -4.7999342E-9f

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "ItemEvent.LONG_CLICKED"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/a/n/j/a;->c:Le/a/a/n/j/o;

    invoke-interface {p1, v0}, Le/a/a/n/j/o;->R9(Le/a/a/g/l0/c;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const-string v2, "ItemEvent.CLICKED"

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {v0}, Le/a/c/p/a;->j1(Le/a/a/g/l0/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/a/n/j/a;->b:Le/a/a/n/j/r;

    invoke-interface {p1}, Le/a/a/n/j/r;->If()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/a/n/j/a;->c:Le/a/a/n/j/o;

    invoke-interface {p1, v0}, Le/a/a/n/j/o;->yg(Le/a/a/g/l0/c;)Z

    move-result p1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/a/n/j/a;->c:Le/a/a/n/j/o;

    invoke-interface {p1, v0}, Le/a/a/n/j/o;->o8(Le/a/a/g/l0/c;)Z

    move-result p1

    :goto_0
    move v1, p1

    :cond_3
    :goto_1
    return v1
.end method
