.class public final Le/a/h/b/y0/b/d;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/y0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/b/y0/b/c;",
        ">;",
        "Le/a/h/b/y0/b/b;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/b/y0/b/a;

.field public final c:Le/a/o5/f0;

.field public final d:Le/a/p5/c0;

.field public final e:Le/a/h/b/p0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/b/y0/b/d;

    const-string v2, "searchResults"

    const-string v3, "getSearchResults()Lkotlin/Pair;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/b/y0/b/d;->f:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h/b/y0/b/a;Le/a/o5/f0;Le/a/p5/c0;Le/a/h/b/p0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "searchResultsDataHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneActionsHandler"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p2, p0, Le/a/h/b/y0/b/d;->c:Le/a/o5/f0;

    iput-object p3, p0, Le/a/h/b/y0/b/d;->d:Le/a/p5/c0;

    iput-object p4, p0, Le/a/h/b/y0/b/d;->e:Le/a/h/b/p0;

    .line 2
    iput-object p1, p0, Le/a/h/b/y0/b/d;->b:Le/a/h/b/y0/b/a;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/h/b/y0/b/c;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/h/b/y0/b/d;->c:Le/a/o5/f0;

    invoke-interface {p2}, Le/a/o5/f0;->a()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Le/a/h/b/y0/b/d;->d:Le/a/p5/c0;

    const v1, 0x7f120cda

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Le/a/h/b/y0/b/d;->b:Le/a/h/b/y0/b/a;

    sget-object v4, Le/a/h/b/y0/b/d;->f:[Ls1/a/l;

    aget-object v4, v4, v0

    invoke-interface {v3, p0, v4}, Le/a/h/b/y0/b/a;->Si(Le/a/h/b/y0/b/j;Ls1/a/l;)Ls1/k;

    move-result-object v3

    .line 6
    iget-object v3, v3, Ls1/k;->a:Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 7
    invoke-interface {p2, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Le/a/h/b/y0/b/d;->d:Le/a/p5/c0;

    const v1, 0x7f120cdb

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, v1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "if (deviceManager.hasVal\u2026truecaller)\n            }"

    .line 9
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1, p2}, Le/a/h/b/y0/b/c;->v3(Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x67eccfc0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.CLICKED"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/h/b/y0/b/d;->e:Le/a/h/b/p0;

    .line 5
    iget-object v0, p0, Le/a/h/b/y0/b/d;->b:Le/a/h/b/y0/b/a;

    sget-object v1, Le/a/h/b/y0/b/d;->f:[Ls1/a/l;

    aget-object v1, v1, v3

    invoke-interface {v0, p0, v1}, Le/a/h/b/y0/b/a;->Si(Le/a/h/b/y0/b/j;Ls1/a/l;)Ls1/k;

    move-result-object v0

    .line 6
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    sget-object v3, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_TCGM:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    .line 9
    invoke-interface {p1, v0, v1, v2, v3}, Le/a/h/b/p0;->Ow(Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;)V

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    return v2
.end method
