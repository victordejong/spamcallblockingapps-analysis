.class public final Le/a/d/d/a/a/d/f;
.super Le/a/d/d/a/a/d/d;
.source "SourceFile"

# interfaces
.implements Le/a/o2/l;


# instance fields
.field public b:Le/a/d/d/a/t;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/d/d/a/a/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Le/a/d/d/a/t;Z)V
    .locals 1

    const-string v0, "presenterProxy"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/d/d/a/a/d/f;->b:Le/a/d/d/a/t;

    .line 2
    iput-boolean p2, p0, Le/a/d/d/a/a/d/f;->c:Z

    return-void
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/d/d/a/a/d/f;->b:Le/a/d/d/a/t;

    return-void
.end method

.method public final C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/d/a/a/d/f;->b:Le/a/d/d/a/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/d/a/t;->Mb()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/d/d/a/a/d/e;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/d/d/a/a/d/f;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d/d/c/a;

    .line 4
    invoke-static {p2}, Le/a/p5/s0/g;->I(Le/a/d/d/c/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/d/d/a/a/d/e;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 5
    invoke-static {p2}, Le/a/p5/s0/g;->G(Le/a/d/d/c/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/d/d/a/a/d/e;->m(Ljava/util/Set;)V

    .line 6
    iget-object p2, p2, Le/a/d/d/c/a;->c:Ljava/lang/String;

    .line 7
    invoke-interface {p1, p2}, Le/a/d/d/a/a/d/e;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/a/d/f;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/a/d/f;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/c/a;

    .line 2
    iget-object p1, p1, Le/a/d/d/c/a;->a:Lcom/truecaller/data/entity/Contact;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x67eccfc0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ItemEvent.CLICKED"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Le/a/d/d/a/a/d/f;->c:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/a/d/d/a/a/d/f;->C()Ljava/util/List;

    move-result-object v0

    .line 6
    iget v1, p1, Le/a/o2/h;->b:I

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/d/c/a;

    .line 8
    iget-boolean v1, v0, Le/a/d/d/c/a;->d:Z

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Le/a/d/d/a/a/d/f;->b:Le/a/d/d/a/t;

    if-eqz v1, :cond_2

    .line 10
    iget p1, p1, Le/a/o2/h;->b:I

    .line 11
    sget-object v2, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;->SUGGESTED_CONTACTS_LIST:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;

    invoke-interface {v1, v0, p1, v2}, Le/a/d/d/a/t;->Ch(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Le/a/d/d/a/a/d/f;->b:Le/a/d/d/a/t;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/d/d/a/a/d/f;->C()Ljava/util/List;

    move-result-object v1

    .line 13
    iget p1, p1, Le/a/o2/h;->b:I

    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/c/a;

    invoke-interface {v0, p1}, Le/a/d/d/a/t;->Z5(Le/a/d/d/c/a;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
