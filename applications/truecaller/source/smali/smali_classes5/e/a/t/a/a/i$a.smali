.class public final Le/a/t/a/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/a/i;->Ij()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/t/a/a/s<",
        "Ljava/util/List<",
        "+",
        "Le/a/t/a/a/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/a/i;


# direct methods
.method public constructor <init>(Le/a/t/a/a/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/a/i$a;->a:Le/a/t/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/t/a/a/i$a;->a:Le/a/t/a/a/i;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/a/h;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Le/a/t/a/a/h;->f(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/t/a/a/i$a;->a:Le/a/t/a/a/i;

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/a/h;

    if-eqz p1, :cond_1

    .line 6
    sget v0, Lcom/truecaller/android/truemoji/R$string;->ErrorConnectionGeneral:I

    invoke-interface {p1, v0}, Le/a/t/a/a/h;->a(I)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/t/a/a/i$a;->a:Le/a/t/a/a/i;

    .line 4
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/t/a/a/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, v1}, Le/a/t/a/a/h;->f(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/t/a/a/i$a;->a:Le/a/t/a/a/i;

    .line 7
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/t/a/a/h;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1, v1}, Le/a/t/a/a/h;->g(Ljava/util/List;Z)V

    :cond_1
    return-void
.end method
