.class public final Le/a/l/g0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/a/l/e0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/l/e0;)V
    .locals 0

    iput-object p1, p0, Le/a/l/g0;->b:Ljava/lang/String;

    iput-object p2, p0, Le/a/l/g0;->c:Le/a/l/e0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/l/g0;->c:Le/a/l/e0;

    .line 2
    iget-object v0, v0, Le/a/l/e0;->L:Le/a/l/o2/c;

    .line 3
    iget-object v0, v0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const/4 v1, 0x0

    const-string v2, "showLostPremiumConsumableNotification"

    invoke-interface {v0, v2, v1}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Le/a/l/g0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x12fb31a9

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    const v2, 0x308060

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "gold"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/l/g0;->c:Le/a/l/e0;

    .line 6
    iget-object v1, v0, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v1, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v0, v1, v4, v3, v4}, Le/a/l/e0;->Zj(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "premium"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/l/g0;->c:Le/a/l/e0;

    .line 10
    iget-object v1, v0, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, v1, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    if-eqz v1, :cond_2

    .line 12
    invoke-static {v0, v1, v4, v3, v4}, Le/a/l/e0;->Zj(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)V

    .line 13
    :cond_2
    :goto_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
