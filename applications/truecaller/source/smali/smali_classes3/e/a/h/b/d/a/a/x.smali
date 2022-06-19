.class public final Le/a/h/b/d/a/a/x;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/a/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/b/d/a/a/w;",
        ">;",
        "Le/a/h/b/d/a/a/v;"
    }
.end annotation


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/b/d/a/a/u;

.field public final c:Le/a/h/b/d/a/a/m$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/b/d/a/a/x;

    const-string v2, "suggestedPremiumList"

    const-string v3, "getSuggestedPremiumList()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/b/d/a/a/x;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h/b/d/a/a/u;Le/a/h/b/d/a/a/m$e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "suggestedPremiumDataHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumClickListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p2, p0, Le/a/h/b/d/a/a/x;->c:Le/a/h/b/d/a/a/m$e;

    .line 2
    iput-object p1, p0, Le/a/h/b/d/a/a/x;->b:Le/a/h/b/d/a/a/u;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h/b/x0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/h/b/d/a/a/x;->b:Le/a/h/b/d/a/a/u;

    sget-object v1, Le/a/h/b/d/a/a/x;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/b/d/a/a/u;->F7(Le/a/h/b/d/a/a/v;Ls1/a/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h/b/d/a/a/w;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/h/b/d/a/a/x;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/h/b/x0/a;

    .line 4
    iget v0, p2, Le/a/h/b/x0/a;->a:I

    .line 5
    invoke-interface {p1, v0}, Le/a/h/b/d/a/a/w;->setIcon(I)V

    .line 6
    iget p2, p2, Le/a/h/b/x0/a;->b:I

    .line 7
    invoke-interface {p1, p2}, Le/a/h/b/d/a/a/w;->q2(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/x;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/x;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/x0/a;

    invoke-virtual {p1}, Le/a/h/b/x0/a;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x67eccfc0

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x4e5b1355    # -4.7999342E-9f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ItemEvent.LONG_CLICKED"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, Le/a/o2/h;->d:Landroid/view/View;

    .line 5
    iget-object v0, p0, Le/a/h/b/d/a/a/x;->c:Le/a/h/b/d/a/a/m$e;

    invoke-interface {v0, p1}, Le/a/h/b/d/a/a/m$e;->D3(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const-string v1, "ItemEvent.CLICKED"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget p1, p1, Le/a/o2/h;->b:I

    .line 8
    iget-object v0, p0, Le/a/h/b/d/a/a/x;->c:Le/a/h/b/d/a/a/m$e;

    invoke-virtual {p0}, Le/a/h/b/d/a/a/x;->A()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/x0/a;

    .line 9
    iget-object p1, p1, Le/a/h/b/x0/a;->c:Ljava/lang/String;

    .line 10
    invoke-interface {v0, p1}, Le/a/h/b/d/a/a/m$e;->Xf(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3
.end method
