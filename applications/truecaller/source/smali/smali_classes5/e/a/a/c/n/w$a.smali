.class public final Le/a/a/c/n/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/n/w;->Ij()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ls1/k<",
        "+",
        "Ljava/util/List<",
        "+",
        "Le/a/a/g/l0/b;",
        ">;+",
        "Ljava/util/List<",
        "+",
        "Le/a/a/g/l0/b;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/n/w;


# direct methods
.method public constructor <init>(Le/a/a/c/n/w;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/n/w$a;->a:Le/a/a/c/n/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ls1/k;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Le/a/a/c/n/w$a;->a:Le/a/a/c/n/w;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Le/a/a/c/n/w;->d:Ljava/util/List;

    .line 6
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Le/a/a/c/n/w;->e:Ljava/util/List;

    .line 8
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/n/v;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/c/n/v;->Mz()V

    .line 9
    :cond_0
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/n/v;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/a/c/n/v;->Ed()V

    .line 10
    :cond_1
    invoke-virtual {v0}, Le/a/a/c/n/w;->Kj()V

    :cond_2
    return-void
.end method
