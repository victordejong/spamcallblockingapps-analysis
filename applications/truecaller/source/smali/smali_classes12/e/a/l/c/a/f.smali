.class public abstract Le/a/l/c/a/f;
.super Le/a/o2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/o2/d<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Ls1/a/l;


# instance fields
.field public final b:Le/a/l/c/a/l1;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/l/c/a/f;

    const-string v2, "cards"

    const-string v3, "getCards()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/l/c/a/f;->c:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/l/c/a/l1;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/d;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/l/c/a/f;->b:Le/a/l/c/a/l1;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/l/c/a/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/l/c/a/f;->b:Le/a/l/c/a/l1;

    sget-object v1, Le/a/l/c/a/f;->c:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/l/c/a/l1;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Le/a/l/c/a/z1;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/p;

    .line 3
    iget-object v0, v0, Le/a/l/c/a/p;->a:Le/a/l/c/a/q;

    .line 4
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/c/a/p;

    .line 5
    iget-object v1, v1, Le/a/l/c/a/p;->c:Le/a/l/v2/i/b/a;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x41700000    # 15.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 6
    :goto_1
    check-cast p1, Le/a/l/c/a/z1;

    invoke-interface {p1, v0, p2}, Le/a/l/c/a/z1;->a0(Le/a/l/c/a/q;F)V

    .line 7
    invoke-interface {p1, v1}, Le/a/l/c/a/z1;->l3(Le/a/l/v2/i/b/a;)V

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
