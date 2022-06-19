.class public final Le/a/h/b/d/a/a/j;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/b/d/a/a/i;",
        ">;",
        "Le/a/h/b/d/a/a/h;"
    }
.end annotation


# static fields
.field public static final synthetic e:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/b/d/a/a/g;

.field public final c:Le/a/h/b/d/a/a/m$c;

.field public final d:Le/a/u3/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/b/d/a/a/j;

    const-string v2, "govServicesList"

    const-string v3, "getGovServicesList()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/b/d/a/a/j;->e:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h/b/d/a/a/g;Le/a/h/b/d/a/a/m$c;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dataHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p2, p0, Le/a/h/b/d/a/a/j;->c:Le/a/h/b/d/a/a/m$c;

    iput-object p3, p0, Le/a/h/b/d/a/a/j;->d:Le/a/u3/g;

    .line 2
    iput-object p1, p0, Le/a/h/b/d/a/a/j;->b:Le/a/h/b/d/a/a/g;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h/b/v0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/h/b/d/a/a/j;->b:Le/a/h/b/d/a/a/g;

    sget-object v1, Le/a/h/b/d/a/a/j;->e:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/b/d/a/a/g;->Cb(Le/a/h/b/d/a/a/h;Ls1/a/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/h/b/d/a/a/i;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/h/b/d/a/a/j;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/h/b/v0/a;

    .line 4
    iget v0, p2, Le/a/h/b/v0/a;->a:I

    .line 5
    invoke-interface {p1, v0}, Le/a/h/b/d/a/a/i;->setIcon(I)V

    .line 6
    iget p2, p2, Le/a/h/b/v0/a;->b:I

    .line 7
    iget-object v0, p0, Le/a/h/b/d/a/a/j;->d:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->f()Le/a/u3/i;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12074f

    if-ne p2, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 9
    invoke-interface {p1, v0}, Le/a/h/b/d/a/a/i;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p1, p2}, Le/a/h/b/d/a/a/i;->setTitle(I)V

    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/j;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/j;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/v0/a;

    invoke-virtual {p1}, Le/a/h/b/v0/a;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/j;->A()Ljava/util/List;

    move-result-object v0

    .line 2
    iget v1, p1, Le/a/o2/h;->b:I

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/b/v0/a;

    .line 4
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x67eccfc0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ItemEvent.CLICKED"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Le/a/h/b/d/a/a/j;->c:Le/a/h/b/d/a/a/m$c;

    invoke-interface {p1, v0}, Le/a/h/b/d/a/a/m$c;->Pf(Le/a/h/b/v0/a;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
