.class public final Le/a/k/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/c;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/k/c/h0;

.field public final c:Le/a/k/j;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/k/c/h0;Le/a/k/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Le/a/k/c/h0;",
            "Le/a/k/j;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiveVideoSettingsManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdSupport"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/f;->a:Lo3/a;

    iput-object p2, p0, Le/a/k/c/f;->b:Le/a/k/c/h0;

    iput-object p3, p0, Le/a/k/c/f;->c:Le/a/k/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/c/f;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->A5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x158

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/k/c/f;->c:Le/a/k/j;

    check-cast v0, Le/a/k/k;

    invoke-virtual {v0, p1}, Le/a/k/k;->b(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/truecaller/profile/data/dto/MediaCallerIDs;

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/MediaCallerIDs;->getMediaType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Video"

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/MediaCallerIDs;->getOrientation()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Landscape"

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Le/a/p5/s0/g;->t0(Lcom/truecaller/profile/data/dto/MediaCallerIDs;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 7
    :goto_1
    check-cast v0, Lcom/truecaller/profile/data/dto/MediaCallerIDs;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/MediaCallerIDs;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object v1
.end method

.method public final b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/c/f;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->B5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x159

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/k/c/f;->c:Le/a/k/j;

    check-cast v0, Le/a/k/k;

    invoke-virtual {v0, p1}, Le/a/k/k;->b(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/truecaller/profile/data/dto/MediaCallerIDs;

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/MediaCallerIDs;->getMediaType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Video"

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/MediaCallerIDs;->getOrientation()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Portrait"

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Le/a/p5/s0/g;->t0(Lcom/truecaller/profile/data/dto/MediaCallerIDs;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 7
    :goto_1
    check-cast v0, Lcom/truecaller/profile/data/dto/MediaCallerIDs;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/MediaCallerIDs;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object v1
.end method

.method public c(Lcom/truecaller/data/entity/Contact;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Le/a/k/c/f;->d(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/a/k/c/f;->b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public d(Lcom/truecaller/data/entity/Contact;)Z
    .locals 2

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/c/f;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->F()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/k/c/f;->b:Le/a/k/c/h0;

    invoke-interface {v0}, Le/a/k/c/h0;->e()Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    move-result-object v0

    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Everyone:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
