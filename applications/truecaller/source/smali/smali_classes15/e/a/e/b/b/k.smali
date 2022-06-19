.class public final Le/a/e/b/b/k;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/e/b/b/j;",
        ">;",
        "Le/a/e/b/b/i;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/g1/b;

.field public final c:Le/a/a/o/p;

.field public final d:Le/a/e/b/b/g;

.field public final e:Le/a/e/b/b/h;


# direct methods
.method public constructor <init>(Le/a/a/g1/b;Le/a/a/o/p;Le/a/e/b/b/g;Le/a/e/b/b/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "translateManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManagerUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/e/b/b/k;->b:Le/a/a/g1/b;

    iput-object p2, p0, Le/a/e/b/b/k;->c:Le/a/a/o/p;

    iput-object p3, p0, Le/a/e/b/b/k;->d:Le/a/e/b/b/g;

    iput-object p4, p0, Le/a/e/b/b/k;->e:Le/a/e/b/b/h;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    check-cast p1, Le/a/e/b/b/j;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/e/b/b/k;->e:Le/a/e/b/b/h;

    invoke-interface {v0}, Le/a/e/b/b/h;->e1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/e/b/b/k;->e:Le/a/e/b/b/h;

    invoke-interface {v0}, Le/a/e/b/b/h;->if()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5
    iget-object v1, p0, Le/a/e/b/b/k;->b:Le/a/a/g1/b;

    invoke-interface {v1, p2}, Le/a/a/g1/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/e/b/b/j;->setText(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Le/a/e/b/b/k;->c:Le/a/a/o/p;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/e/b/b/j;->q0(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    invoke-interface {p1, v0}, Le/a/e/b/b/j;->z2(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Le/a/e/b/b/j;->z2(Z)V

    .line 9
    :goto_0
    iget-object v0, p0, Le/a/e/b/b/k;->e:Le/a/e/b/b/h;

    invoke-interface {v0}, Le/a/e/b/b/h;->f1()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1, p2}, Le/a/e/b/b/j;->b(Z)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/b/k;->e:Le/a/e/b/b/h;

    invoke-interface {v0}, Le/a/e/b/b/h;->e1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/b/k;->e:Le/a/e/b/b/h;

    invoke-interface {v0}, Le/a/e/b/b/h;->e1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/b/k;->e:Le/a/e/b/b/h;

    invoke-interface {v0}, Le/a/e/b/b/h;->e1()Ljava/util/List;

    move-result-object v0

    .line 2
    iget v1, p1, Le/a/o2/h;->b:I

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x67eccfc0

    if-eq v1, v2, :cond_2

    const v2, -0x4e5b1355    # -4.7999342E-9f

    if-eq v1, v2, :cond_1

    const v2, 0x5e1764bf

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "lang.pack.ACTION_DELETE"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/e/b/b/k;->d:Le/a/e/b/b/g;

    invoke-interface {p1, v0}, Le/a/e/b/b/g;->w5(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const-string v1, "ItemEvent.LONG_CLICKED"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/e/b/b/k;->d:Le/a/e/b/b/g;

    invoke-interface {p1, v0}, Le/a/e/b/b/g;->p3(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const-string v1, "ItemEvent.CLICKED"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/e/b/b/k;->d:Le/a/e/b/b/g;

    invoke-interface {p1, v0}, Le/a/e/b/b/g;->k6(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
