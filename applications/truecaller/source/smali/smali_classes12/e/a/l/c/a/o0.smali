.class public final Le/a/l/c/a/o0;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/h2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/l/c/a/i2;",
        ">;",
        "Le/a/l/c/a/h2;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Ls1/a/l;


# instance fields
.field public final b:Le/a/l/c/a/g2;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/l/c/a/o0;

    const-string v2, "headerItem"

    const-string v3, "getHeaderItem()Lcom/truecaller/premium/premiumusertab/list/HeaderItem;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/l/c/a/o0;->c:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/l/c/a/g2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/l/c/a/o0;->b:Le/a/l/c/a/g2;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/l/c/a/i2;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/l/c/a/o0;->b:Le/a/l/c/a/g2;

    sget-object v0, Le/a/l/c/a/o0;->c:[Ls1/a/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p2, p0, v0}, Le/a/l/c/a/g2;->z9(Le/a/l/c/a/h2;Ls1/a/l;)Le/a/l/c/a/n0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget v0, p2, Le/a/l/c/a/n0;->a:I

    .line 5
    invoke-interface {p1, v0}, Le/a/l/c/a/i2;->setIcon(I)V

    .line 6
    iget-object v0, p2, Le/a/l/c/a/n0;->b:Ljava/lang/String;

    .line 7
    invoke-interface {p1, v0}, Le/a/l/c/a/i2;->n(Ljava/lang/String;)V

    .line 8
    iget-object v0, p2, Le/a/l/c/a/n0;->c:Ljava/lang/String;

    .line 9
    invoke-interface {p1, v0}, Le/a/l/c/a/i2;->c1(Ljava/lang/String;)V

    .line 10
    iget-boolean v0, p2, Le/a/l/c/a/n0;->d:Z

    .line 11
    invoke-interface {p1, v0}, Le/a/l/c/a/i2;->k4(Z)V

    .line 12
    iget-object p2, p2, Le/a/l/c/a/n0;->e:Ljava/lang/String;

    .line 13
    invoke-interface {p1, p2}, Le/a/l/c/a/i2;->W0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/c/a/o0;->b:Le/a/l/c/a/g2;

    sget-object v1, Le/a/l/c/a/o0;->c:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/l/c/a/g2;->z9(Le/a/l/c/a/h2;Ls1/a/l;)Le/a/l/c/a/n0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
