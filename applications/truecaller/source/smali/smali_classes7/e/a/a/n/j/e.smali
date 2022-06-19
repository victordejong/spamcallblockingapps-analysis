.class public final Le/a/a/n/j/e;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;
.implements Le/a/o2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/n/j/n;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/n/j/r;

.field public final c:Le/a/a/n/j/o;

.field public final d:Le/a/o5/b0;

.field public final e:Le/a/a/i1/b;

.field public final f:Le/a/p5/h0;

.field public final g:Le/a/a/o/p;


# direct methods
.method public constructor <init>(Le/a/a/n/j/r;Le/a/a/n/j/o;Le/a/o5/b0;Le/a/a/i1/b;Le/a/p5/h0;Le/a/a/o/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageUtils"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/n/j/e;->b:Le/a/a/n/j/r;

    iput-object p2, p0, Le/a/a/n/j/e;->c:Le/a/a/n/j/o;

    iput-object p3, p0, Le/a/a/n/j/e;->d:Le/a/o5/b0;

    iput-object p4, p0, Le/a/a/n/j/e;->e:Le/a/a/i1/b;

    iput-object p5, p0, Le/a/a/n/j/e;->f:Le/a/p5/h0;

    iput-object p6, p0, Le/a/a/n/j/e;->g:Le/a/a/o/p;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 12

    .line 1
    check-cast p1, Le/a/a/n/j/n;

    .line 2
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->d:[Ljava/lang/String;

    const-string v1, "itemView"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/a/n/j/e;->b:Le/a/a/n/j/r;

    invoke-interface {v1, p2}, Le/a/a/n/j/r;->zc(I)Le/a/a/g/l0/c;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 4
    iget-object v1, p0, Le/a/a/n/j/e;->e:Le/a/a/i1/b;

    .line 5
    iget-object v2, p2, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    .line 6
    invoke-interface {v1, v2}, Le/a/a/i1/b;->e(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/AttachmentType;

    move-result-object v1

    .line 7
    iget v2, p2, Le/a/a/g/l0/c;->c:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 8
    :goto_0
    iget-object v5, p2, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    const-string v6, "contentType"

    .line 9
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v7, v0

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v0, v8

    .line 11
    invoke-static {v5, v9, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    move v5, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_2
    const-string v7, ""

    if-eqz v5, :cond_3

    .line 12
    iget-object v5, p0, Le/a/a/n/j/e;->e:Le/a/a/i1/b;

    .line 13
    iget-object v8, p2, Le/a/a/g/l0/c;->o:Ljava/lang/String;

    .line 14
    iget v9, p2, Le/a/a/g/l0/c;->p:I

    .line 15
    invoke-interface {v5, v8, v9}, Le/a/a/i1/b;->E(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 16
    :cond_3
    iget-object v5, p2, Le/a/a/g/l0/c;->n:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v3

    :goto_4
    if-nez v5, :cond_6

    .line 18
    iget-object v5, p2, Le/a/a/g/l0/c;->n:Ljava/lang/String;

    if-eqz v5, :cond_7

    goto :goto_5

    .line 19
    :cond_6
    iget v5, v1, Lcom/truecaller/messaging/conversation/AttachmentType;->title:I

    if-eqz v5, :cond_7

    iget-object v8, p0, Le/a/a/n/j/e;->f:Le/a/p5/h0;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-interface {v8, v5, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "resourceProvider.getString(type.title)"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object v5, v7

    .line 20
    :goto_5
    invoke-interface {p1, v5}, Le/a/a/n/j/n;->setTitle(Ljava/lang/String;)V

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v8, p0, Le/a/a/n/j/e;->b:Le/a/a/n/j/r;

    invoke-interface {v8}, Le/a/a/n/j/r;->c8()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Le/a/a/n/j/e;->g:Le/a/a/o/p;

    .line 24
    iget-wide v7, p2, Le/a/a/g/l0/c;->s:J

    .line 25
    invoke-interface {v6, v7, v8}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  \u2022 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 26
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    iget-object v9, p2, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    .line 28
    invoke-static {v9, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    array-length v6, v0

    move v10, v4

    :goto_6
    if-ge v10, v6, :cond_a

    aget-object v11, v0, v10

    .line 30
    invoke-static {v9, v11, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_9

    move v0, v3

    goto :goto_7

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    move v0, v4

    :goto_7
    if-eqz v0, :cond_b

    .line 31
    iget-object v0, p0, Le/a/a/n/j/e;->f:Le/a/p5/h0;

    const v6, 0x7f12001c

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "resourceProvider.getStri\u2026ring.AttachmentTypeVCard)"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 32
    :cond_b
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 33
    iget-object v6, p2, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v6}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_8

    .line 35
    :cond_c
    iget-object v0, p2, Le/a/a/g/l0/c;->n:Ljava/lang/String;

    if-eqz v0, :cond_d

    move-object v7, v0

    :cond_d
    const/16 v0, 0x2e

    .line 36
    iget-object v6, p2, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    .line 37
    invoke-static {v7, v0, v6}, Ls1/f0/v;->b0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_8
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Locale.US"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2022 "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :goto_9
    iget-object v0, p0, Le/a/a/n/j/e;->d:Le/a/o5/b0;

    .line 40
    iget-wide v6, p2, Le/a/a/g/l0/c;->b:J

    .line 41
    invoke-interface {v0, v6, v7}, Le/a/o5/b0;->v(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1, v0}, Le/a/a/n/j/n;->c(Ljava/lang/String;)V

    .line 44
    invoke-interface {p1, v2}, Le/a/a/n/j/n;->J0(Z)V

    .line 45
    iget v0, p2, Le/a/a/g/l0/c;->i:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_e

    const v0, 0x7f08037c

    goto :goto_a

    .line 46
    :cond_e
    invoke-static {p2}, Le/a/c/p/a;->j1(Le/a/a/g/l0/c;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f08037b

    goto :goto_a

    .line 47
    :cond_f
    iget v0, v1, Lcom/truecaller/messaging/conversation/AttachmentType;->icon:I

    if-eqz v0, :cond_10

    goto :goto_a

    :cond_10
    const v0, 0x7f08037e

    .line 48
    :goto_a
    invoke-interface {p1, v0, v2}, Le/a/a/n/j/n;->m4(IZ)V

    .line 49
    iget-object v0, p0, Le/a/a/n/j/e;->b:Le/a/a/n/j/r;

    invoke-interface {v0}, Le/a/a/n/j/r;->If()Ljava/util/Set;

    move-result-object v0

    .line 50
    iget-wide v1, p2, Le/a/a/g/l0/c;->f:J

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/n/j/n;->b(Z)V

    .line 52
    iget-boolean v0, p2, Le/a/a/g/l0/c;->e:Z

    .line 53
    invoke-interface {p1, v0}, Le/a/a/n/j/n;->g(Z)V

    .line 54
    iget v0, p2, Le/a/a/g/l0/c;->i:I

    if-ne v0, v3, :cond_11

    move v4, v3

    .line 55
    :cond_11
    invoke-interface {p1, v4}, Le/a/a/n/j/n;->h(Z)V

    .line 56
    iget-object p2, p2, Le/a/a/g/l0/c;->m:Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    .line 57
    invoke-static {p2}, Le/a/p5/s0/f;->n(Landroid/net/Uri;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_12

    goto :goto_b

    :cond_12
    move-object p2, v0

    :goto_b
    invoke-interface {p1, p2}, Le/a/a/n/j/n;->V2(Landroid/net/Uri;)V

    :cond_13
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/e;->b:Le/a/a/n/j/r;

    invoke-interface {v0}, Le/a/a/n/j/r;->ph()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/n/j/e;->b:Le/a/a/n/j/r;

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
    iget-object v0, p0, Le/a/a/n/j/e;->b:Le/a/a/n/j/r;

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

    iget-object p1, p0, Le/a/a/n/j/e;->c:Le/a/a/n/j/o;

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

    iget-object p1, p0, Le/a/a/n/j/e;->b:Le/a/a/n/j/r;

    invoke-interface {p1}, Le/a/a/n/j/r;->If()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/a/n/j/e;->c:Le/a/a/n/j/o;

    invoke-interface {p1, v0}, Le/a/a/n/j/o;->yg(Le/a/a/g/l0/c;)Z

    move-result p1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/a/n/j/e;->c:Le/a/a/n/j/o;

    invoke-interface {p1, v0}, Le/a/a/n/j/o;->o8(Le/a/a/g/l0/c;)Z

    move-result p1

    :goto_0
    move v1, p1

    :cond_3
    :goto_1
    return v1
.end method
