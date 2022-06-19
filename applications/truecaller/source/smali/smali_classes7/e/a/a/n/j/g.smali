.class public final Le/a/a/n/j/g;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;
.implements Le/a/o2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/n/j/p;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/n/j/r;

.field public final c:Le/a/a/n/j/o;

.field public final d:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/a/n/j/r;Le/a/a/n/j/o;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/n/j/g;->b:Le/a/a/n/j/r;

    iput-object p2, p0, Le/a/a/n/j/g;->c:Le/a/a/n/j/o;

    iput-object p3, p0, Le/a/a/n/j/g;->d:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 7

    .line 1
    check-cast p1, Le/a/a/n/j/p;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/n/j/g;->b:Le/a/a/n/j/r;

    invoke-interface {v0, p2}, Le/a/a/n/j/r;->zc(I)Le/a/a/g/l0/c;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 4
    iget-object v0, p2, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    const-string v1, "contentType"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/truecaller/messaging/data/types/Entity;->g:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 7
    invoke-static {v0, v6, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_1
    const-string v0, ""

    if-eqz v5, :cond_4

    .line 8
    iget-object v1, p2, Le/a/a/g/l0/c;->n:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 9
    :goto_2
    invoke-interface {p1, v1}, Le/a/a/n/j/p;->setTitle(Ljava/lang/String;)V

    .line 10
    iget-object v1, p2, Le/a/a/g/l0/c;->w:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v0, v1

    .line 11
    :cond_3
    invoke-interface {p1, v0}, Le/a/a/n/j/p;->c(Ljava/lang/String;)V

    .line 12
    iget-object v0, p2, Le/a/a/g/l0/c;->m:Landroid/net/Uri;

    .line 13
    sget-object v1, Lcom/truecaller/messaging/conversation/LinkPreviewType;->DEFAULT:Lcom/truecaller/messaging/conversation/LinkPreviewType;

    invoke-interface {p1, v0, v1}, Le/a/a/n/j/p;->L3(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/LinkPreviewType;)V

    goto :goto_3

    .line 14
    :cond_4
    iget-object v1, p0, Le/a/a/n/j/g;->d:Le/a/p5/c0;

    const v2, 0x7f120d23

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026g.media_manager_web_link)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Le/a/a/n/j/p;->setTitle(Ljava/lang/String;)V

    .line 15
    iget-object v1, p2, Le/a/a/g/l0/c;->r:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object v0, v1

    .line 16
    :cond_5
    invoke-interface {p1, v0}, Le/a/a/n/j/p;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    sget-object v1, Lcom/truecaller/messaging/conversation/LinkPreviewType;->EMPTY:Lcom/truecaller/messaging/conversation/LinkPreviewType;

    invoke-interface {p1, v0, v1}, Le/a/a/n/j/p;->L3(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/LinkPreviewType;)V

    .line 18
    :goto_3
    iget-object v0, p0, Le/a/a/n/j/g;->b:Le/a/a/n/j/r;

    invoke-interface {v0}, Le/a/a/n/j/r;->If()Ljava/util/Set;

    move-result-object v0

    .line 19
    iget-wide v1, p2, Le/a/a/g/l0/c;->f:J

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/n/j/p;->b(Z)V

    .line 21
    iget-boolean p2, p2, Le/a/a/g/l0/c;->e:Z

    .line 22
    invoke-interface {p1, p2}, Le/a/a/n/j/p;->g(Z)V

    :cond_6
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/g;->b:Le/a/a/n/j/r;

    invoke-interface {v0}, Le/a/a/n/j/r;->ph()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/n/j/g;->b:Le/a/a/n/j/r;

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
    iget-object v0, p0, Le/a/a/n/j/g;->b:Le/a/a/n/j/r;

    .line 2
    iget v1, p1, Le/a/o2/h;->b:I

    .line 3
    invoke-interface {v0, v1}, Le/a/a/n/j/r;->zc(I)Le/a/a/g/l0/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x67eccfc0

    if-eq v2, v3, :cond_1

    const v3, -0x4e5b1355    # -4.7999342E-9f

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "ItemEvent.LONG_CLICKED"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/a/n/j/g;->c:Le/a/a/n/j/o;

    invoke-interface {p1, v0}, Le/a/a/n/j/o;->R9(Le/a/a/g/l0/c;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-string v2, "ItemEvent.CLICKED"

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Le/a/a/n/j/g;->c:Le/a/a/n/j/o;

    invoke-interface {p1, v0}, Le/a/a/n/j/o;->o8(Le/a/a/g/l0/c;)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method
