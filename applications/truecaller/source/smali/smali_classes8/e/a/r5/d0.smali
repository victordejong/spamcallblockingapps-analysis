.class public final Le/a/r5/d0;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;
.implements Le/a/o2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/r5/x;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Ls1/a/l;


# instance fields
.field public final b:Le/a/r5/e0;

.field public final c:Le/a/r5/e0;

.field public final d:Le/a/r5/a;

.field public final e:Le/a/r5/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/r5/d0;

    const-string v2, "profileViewEvents"

    const-string v3, "getProfileViewEvents()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/r5/d0;->f:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/r5/e0;Le/a/r5/a;Le/a/r5/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "whoViewedMeListModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeHandler"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactDetailsOpenable"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/r5/d0;->c:Le/a/r5/e0;

    iput-object p2, p0, Le/a/r5/d0;->d:Le/a/r5/a;

    iput-object p3, p0, Le/a/r5/d0;->e:Le/a/r5/b;

    .line 2
    iput-object p1, p0, Le/a/r5/d0;->b:Le/a/r5/e0;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/r5/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/r5/d0;->b:Le/a/r5/e0;

    sget-object v1, Le/a/r5/d0;->f:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/r5/e0;->Hc(Le/a/r5/d0;Ls1/a/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/r5/x;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/r5/d0;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/r5/o;

    .line 4
    iget-object v0, p2, Le/a/r5/o;->e:Lcom/truecaller/data/entity/Contact;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/r5/x;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Address;->getShortDisplayableAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-interface {p1, v1}, Le/a/r5/x;->w1(Ljava/lang/String;)V

    .line 7
    iget-wide v3, p2, Le/a/r5/o;->b:J

    .line 8
    invoke-interface {p1, v3, v4}, Le/a/r5/x;->T(J)V

    .line 9
    iget-boolean v1, p0, Le/a/o2/c;->a:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Le/a/r5/d0;->c:Le/a/r5/e0;

    invoke-interface {v1, p2}, Le/a/r5/e0;->Kf(Le/a/r5/o;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    move p2, v3

    :goto_2
    invoke-interface {p1, p2}, Le/a/r5/x;->b(Z)V

    const/4 p2, 0x7

    .line 11
    invoke-static {v0, v3, v3, v2, p2}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/r5/x;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/r5/d0;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x67eccfc0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v2, -0x4e5b1355    # -4.7999342E-9f

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "ItemEvent.LONG_CLICKED"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iget p1, p1, Le/a/o2/h;->b:I

    .line 5
    iget-boolean v0, p0, Le/a/o2/c;->a:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/r5/d0;->d:Le/a/r5/a;

    invoke-interface {v0}, Le/a/r5/a;->P()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iput-boolean v3, p0, Le/a/o2/c;->a:Z

    .line 8
    iget-object v0, p0, Le/a/r5/d0;->c:Le/a/r5/e0;

    invoke-virtual {p0}, Le/a/r5/d0;->A()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r5/o;

    invoke-interface {v0, p1}, Le/a/r5/e0;->u5(Le/a/r5/o;)V

    goto :goto_1

    :cond_2
    const-string v1, "ItemEvent.CLICKED"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget p1, p1, Le/a/o2/h;->b:I

    .line 11
    iget-boolean v0, p0, Le/a/o2/c;->a:Z

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Le/a/r5/d0;->c:Le/a/r5/e0;

    invoke-virtual {p0}, Le/a/r5/d0;->A()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r5/o;

    invoke-interface {v0, p1}, Le/a/r5/e0;->u5(Le/a/r5/o;)V

    :cond_3
    :goto_0
    move v3, v4

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0}, Le/a/r5/d0;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r5/o;

    .line 14
    iget-object v5, p1, Le/a/r5/o;->e:Lcom/truecaller/data/entity/Contact;

    .line 15
    iget-object v4, p0, Le/a/r5/d0;->e:Le/a/r5/b;

    .line 16
    sget-object v6, Lcom/truecaller/details_view/analytics/SourceType;->WhoViewedMe:Lcom/truecaller/details_view/analytics/SourceType;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x15

    .line 17
    invoke-interface/range {v4 .. v9}, Le/a/r5/b;->L1(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ZZI)V

    :goto_1
    move v4, v3

    :cond_5
    :goto_2
    return v4
.end method
