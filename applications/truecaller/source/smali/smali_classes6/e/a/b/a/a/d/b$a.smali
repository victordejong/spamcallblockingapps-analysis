.class public final Le/a/b/a/a/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/d/b;-><init>(Le/a/b/a/a/b/a;Le/a/p5/h0;Le/a/b/a/a/c/e/a;Le/a/g5/p;Ln3/m0/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/c/a/c/a<",
        "Le/a/b/a/a/c/e/b;",
        "Landroidx/lifecycle/LiveData<",
        "Le/a/b/l/l<",
        "+",
        "Le/a/b/l/q<",
        "Ls1/s;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/d/b;


# direct methods
.method public constructor <init>(Le/a/b/a/a/d/b;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/d/b$a;->a:Le/a/b/a/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Le/a/b/a/a/c/e/b;

    .line 2
    instance-of v0, p1, Le/a/b/a/a/c/e/b$a;

    if-eqz v0, :cond_0

    new-instance v0, Ln3/v/k0;

    new-instance v1, Le/a/b/l/l;

    check-cast p1, Le/a/b/a/a/c/e/b$a;

    const-string v2, "$this$toResource"

    .line 3
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Le/a/b/l/q$a;

    .line 5
    iget p1, p1, Le/a/b/a/a/c/e/b$a;->a:I

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v4, p1, v4, v3}, Le/a/b/l/q$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V

    .line 7
    invoke-direct {v1, v2}, Le/a/b/l/l;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ln3/v/k0;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Le/a/b/a/a/c/e/b$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/b/a/a/d/b$a;->a:Le/a/b/a/a/d/b;

    .line 9
    iget-object v0, v0, Le/a/b/a/a/d/b;->n:Le/a/b/a/a/b/a;

    .line 10
    check-cast p1, Le/a/b/a/a/c/e/b$b;

    .line 11
    iget-object p1, p1, Le/a/b/a/a/c/e/b$b;->a:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    .line 12
    invoke-interface {v0, p1}, Le/a/b/a/a/b/a;->d(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 13
    new-instance v0, Le/a/b/a/a/d/a;

    invoke-direct {v0, p0}, Le/a/b/a/a/d/a;-><init>(Le/a/b/a/a/d/b$a;)V

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->Q0(Landroidx/lifecycle/LiveData;Ln3/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string p1, "Transformations.map(this) { transform(it) }"

    invoke-static {v0, p1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
