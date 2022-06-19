.class public final Le/a/r/z/v$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/v;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/k<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/z/v;


# direct methods
.method public constructor <init>(Le/a/r/z/v;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/v$b;->b:Le/a/r/z/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    iget-object p1, p0, Le/a/r/z/v$b;->b:Le/a/r/z/v;

    iget-object p1, p1, Le/a/r/z/v;->g:Le/a/r/z/s;

    .line 3
    iget-object p1, p1, Le/a/r/z/s;->M:Le/a/r/c/z;

    .line 4
    invoke-interface {p1}, Le/a/r/c/z;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Le/a/r/z/v$b;->b:Le/a/r/z/v;

    iget-object p1, p1, Le/a/r/z/v;->g:Le/a/r/z/s;

    .line 5
    iget-object p1, p1, Le/a/r/z/s;->R:Le/a/b0/q/e;

    .line 6
    invoke-interface {p1}, Le/a/b0/q/e;->a()Z

    move-result v0

    .line 7
    :goto_1
    new-instance p1, Ls1/k;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
