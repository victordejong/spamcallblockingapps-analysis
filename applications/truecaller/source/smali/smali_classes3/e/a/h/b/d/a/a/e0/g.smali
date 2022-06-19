.class public final Le/a/h/b/d/a/a/e0/g;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/a/e0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/b/d/a/a/e0/f;",
        ">;",
        "Le/a/h/b/d/a/a/e0/e;"
    }
.end annotation


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/b/d/a/a/e0/d;

.field public final c:Le/a/h/b/d/a/a/m$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/b/d/a/a/e0/g;

    const-string v2, "hotline"

    const-string v3, "getHotline()Lcom/truecaller/calling/dialer/call_log/items/suggested/hotline/Hotline;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/b/d/a/a/e0/g;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h/b/d/a/a/e0/d;Le/a/h/b/d/a/a/m$d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "hotlineDataHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p2, p0, Le/a/h/b/d/a/a/e0/g;->c:Le/a/h/b/d/a/a/m$d;

    .line 2
    iput-object p1, p0, Le/a/h/b/d/a/a/e0/g;->b:Le/a/h/b/d/a/a/e0/d;

    return-void
.end method


# virtual methods
.method public final A()Le/a/h/b/d/a/a/e0/a;
    .locals 3

    iget-object v0, p0, Le/a/h/b/d/a/a/e0/g;->b:Le/a/h/b/d/a/a/e0/d;

    sget-object v1, Le/a/h/b/d/a/a/e0/g;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/b/d/a/a/e0/d;->lc(Le/a/h/b/d/a/a/e0/e;Ls1/a/l;)Le/a/h/b/d/a/a/e0/a;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h/b/d/a/a/e0/f;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/h/b/d/a/a/e0/g;->A()Le/a/h/b/d/a/a/e0/a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget v0, p2, Le/a/h/b/d/a/a/e0/a;->a:I

    .line 5
    invoke-interface {p1, v0}, Le/a/h/b/d/a/a/e0/f;->setIcon(I)V

    .line 6
    iget p2, p2, Le/a/h/b/d/a/a/e0/a;->b:I

    .line 7
    invoke-interface {p1, p2}, Le/a/h/b/d/a/a/e0/f;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/e0/g;->A()Le/a/h/b/d/a/a/e0/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/e0/g;->A()Le/a/h/b/d/a/a/e0/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/h/b/d/a/a/e0/a;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x67eccfc0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.CLICKED"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Le/a/h/b/d/a/a/e0/g;->A()Le/a/h/b/d/a/a/e0/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Le/a/h/b/d/a/a/e0/g;->c:Le/a/h/b/d/a/a/m$d;

    .line 6
    iget v1, p1, Le/a/h/b/d/a/a/e0/a;->b:I

    .line 7
    iget-object p1, p1, Le/a/h/b/d/a/a/e0/a;->c:Ljava/lang/String;

    .line 8
    invoke-interface {v0, p1, v1}, Le/a/h/b/d/a/a/m$d;->N3(Ljava/lang/String;I)V

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
