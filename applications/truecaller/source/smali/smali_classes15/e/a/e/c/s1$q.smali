.class public Le/a/e/c/s1$q;
.super Le/a/e/c/s1$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation


# instance fields
.field public final f:Lcom/truecaller/data/entity/Contact;

.field public g:Ljava/lang/Runnable;

.field public final synthetic h:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$q;->h:Le/a/e/c/s1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/a/e/c/s1$e;-><init>(Le/a/e/c/s1;Le/a/e/c/s1$a;)V

    .line 2
    iput-object p2, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    return-void
.end method

.method public constructor <init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    iput-object p1, p0, Le/a/e/c/s1$q;->h:Le/a/e/c/s1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/a/e/c/s1$e;-><init>(Le/a/e/c/s1;Le/a/e/c/s1$a;)V

    .line 4
    iput-object p2, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    .line 5
    iput-object p3, p0, Le/a/e/c/s1$q;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/a/e/c/s1$e;->a(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e/c/s1$q;->h:Le/a/e/c/s1;

    invoke-virtual {p1}, Le/a/e/x0;->SA()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/e/c/s1$q;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public b()Lcom/truecaller/data/entity/Contact;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$q;->h:Le/a/e/c/s1;

    .line 2
    iget-object v0, v0, Le/a/e/c/s1;->w1:Le/a/k3/j/b;

    .line 3
    iget-object v1, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, v1}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/e/c/s1$q;->h:Le/a/e/c/s1;

    .line 5
    iget-object v2, v0, Le/a/e/c/s1;->w1:Le/a/k3/j/b;

    .line 6
    iget-object v0, v0, Le/a/e/c/s1;->G0:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v0}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 8
    :cond_1
    :goto_0
    iget-object v2, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    const/4 v3, 0x1

    if-ne v2, v0, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 11
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 12
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 13
    invoke-virtual {v2, v5, v4}, Lcom/truecaller/data/entity/Contact;->writeToParcel(Landroid/os/Parcel;I)V

    .line 14
    invoke-virtual {v0, v6, v4}, Lcom/truecaller/data/entity/Contact;->writeToParcel(Landroid/os/Parcel;I)V

    .line 15
    invoke-virtual {v5}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-ne v2, v7, :cond_3

    .line 16
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    move v4, v2

    .line 17
    :cond_3
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    :cond_4
    :goto_1
    if-eqz v4, :cond_6

    .line 19
    iget-object v0, p0, Le/a/e/c/s1$q;->h:Le/a/e/c/s1;

    .line 20
    iget-object v0, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    if-nez v0, :cond_5

    .line 21
    iget-object v1, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    :cond_5
    return-object v1

    .line 22
    :cond_6
    iget-object v2, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 23
    iget-object v0, p0, Le/a/e/c/s1$q;->h:Le/a/e/c/s1;

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Le/a/e/c/s1$q;->h:Le/a/e/c/s1;

    .line 26
    iget-object v0, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    if-nez v0, :cond_7

    .line 27
    iget-object v1, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    :cond_7
    return-object v1

    .line 28
    :cond_8
    iget-object v2, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    .line 29
    iget-boolean v2, v2, Lcom/truecaller/data/entity/Contact;->j:Z

    if-nez v2, :cond_b

    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->d1()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    .line 31
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->d1()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    .line 32
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->X()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->X()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_b

    iget-object v2, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    .line 33
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 34
    :cond_9
    iget-object v0, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    iput-object v0, p0, Le/a/e/c/s1$e;->d:Lcom/truecaller/data/entity/Contact;

    .line 35
    iget-object v2, p0, Le/a/e/c/s1$q;->h:Le/a/e/c/s1;

    .line 36
    iget-object v2, v2, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    if-nez v2, :cond_a

    move-object v1, v0

    :cond_a
    return-object v1

    :cond_b
    if-nez v0, :cond_e

    .line 37
    iget-object v0, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->d1()Z

    move-result v0

    if-nez v0, :cond_d

    .line 38
    new-instance v0, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 39
    iput-boolean v3, v0, Lcom/truecaller/data/entity/Contact;->j:Z

    .line 40
    iget-object v1, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Number;

    .line 41
    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    goto :goto_2

    :cond_c
    return-object v0

    .line 42
    :cond_d
    iget-object v0, p0, Le/a/e/c/s1$q;->f:Lcom/truecaller/data/entity/Contact;

    :cond_e
    return-object v0
.end method
