.class public final Le/a/l/c/a/z2;
.super Le/a/l/c/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/x1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/l/c/a/f<",
        "Le/a/l/c/a/y1;",
        ">;",
        "Le/a/l/c/a/x1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/l/c/a/l1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/l/c/a/f;-><init>(Le/a/l/c/a/l1;)V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/l/c/a/y1;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Le/a/l/c/a/f;->G(Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l/c/a/p;

    .line 5
    iget-object p2, p2, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 6
    instance-of v0, p2, Le/a/l/c/a/t$m;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Le/a/l/c/a/t$m;

    if-eqz p2, :cond_1

    .line 7
    iget-object v0, p2, Le/a/l/c/a/t$m;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 8
    invoke-interface {p1, v0}, Le/a/l/c/a/y1;->setAvatarXConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 9
    iget-object v0, p2, Le/a/l/c/a/t$m;->b:Ljava/lang/String;

    .line 10
    invoke-interface {p1, v0}, Le/a/l/c/a/y1;->setTitle(Ljava/lang/String;)V

    .line 11
    iget-object p2, p2, Le/a/l/c/a/t$m;->c:Ljava/lang/String;

    .line 12
    invoke-interface {p1, p2}, Le/a/l/c/a/y1;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    const p1, 0x7f0a13a5

    int-to-long v0, p1

    return-wide v0
.end method

.method public m(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/p;

    .line 2
    iget-object p1, p1, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 3
    instance-of p1, p1, Le/a/l/c/a/t$m;

    return p1
.end method
