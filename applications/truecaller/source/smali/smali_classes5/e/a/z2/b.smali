.class public final Le/a/z2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/z2/a;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Le/a/b0/e/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "regionUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Le/a/b0/e/f;->d()Z

    move-result p1

    iput-boolean p1, p0, Le/a/z2/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result v1

    xor-int/2addr v1, v0

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v2

    .line 3
    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result p1

    .line 4
    invoke-virtual {p0, v1, v2, p1}, Le/a/z2/b;->e(ZZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1
    invoke-virtual {p1, v2}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_7

    if-eqz p1, :cond_6

    const/16 v2, 0x80

    .line 2
    invoke-virtual {p1, v2}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v3

    const/16 v4, 0x100

    const/16 v5, 0x20

    const/16 v6, 0x10

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p1, v2}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p1, v6}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {p1, v5}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6
    invoke-virtual {p1, v4}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-nez v2, :cond_5

    .line 7
    invoke-virtual {p1, v6}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v2

    if-nez v2, :cond_4

    .line 8
    invoke-virtual {p1, v5}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    invoke-virtual {p1, v4}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    if-eqz v2, :cond_6

    .line 10
    :cond_5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p1

    if-nez p1, :cond_6

    move p1, v1

    goto :goto_3

    :cond_6
    move p1, v0

    :goto_3
    if-eqz p1, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    return v0
.end method

.method public c(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 4

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    xor-int/2addr v0, v2

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v3

    .line 4
    invoke-virtual {p1, v2}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result p1

    .line 5
    invoke-virtual {p0, v0, v3, p1}, Le/a/z2/b;->e(ZZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public d(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 7

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_8

    const/16 v0, 0x80

    .line 2
    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result v3

    const/16 v4, 0x100

    const/16 v5, 0x20

    const/16 v6, 0x10

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->n()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1, v6}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p1, v5}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p1, v4}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    .line 7
    invoke-virtual {p1, v6}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p1, v5}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p1, v4}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    .line 10
    :cond_5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result p1

    if-nez p1, :cond_6

    move p1, v1

    goto :goto_3

    :cond_6
    move p1, v2

    :goto_3
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :cond_8
    :goto_4
    return v1
.end method

.method public final e(ZZZ)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/z2/b;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    :goto_0
    move v1, v2

    :cond_1
    return v1

    .line 2
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
