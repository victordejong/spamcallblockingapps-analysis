.class public final Le/a/l0/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l0/a;->B(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/l0/a$a;->b:I

    iput-object p2, p0, Le/a/l0/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Le/a/l0/a$a;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1
    iget-object v0, p0, Le/a/l0/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l0/a;

    .line 2
    iget-object v0, v0, Le/a/l0/a;->i:Le/a/d/f;

    .line 3
    invoke-interface {v0}, Le/a/d/f;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/l0/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l0/a;

    .line 7
    iget-object v0, v0, Le/a/l0/a;->e:Le/a/h/t0/b;

    .line 8
    invoke-interface {v0}, Le/a/h/t0/b;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 10
    :cond_2
    iget-object v0, p0, Le/a/l0/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l0/a;

    .line 11
    iget-object v0, v0, Le/a/l0/a;->f:Le/a/b0/o/a;

    const-string v2, "flash_disabled"

    .line 12
    invoke-interface {v0, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Le/a/l0/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l0/a;

    .line 13
    iget-object v0, v0, Le/a/l0/a;->f:Le/a/b0/o/a;

    const-string v2, "featureFlash"

    .line 14
    invoke-interface {v0, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 15
    :cond_4
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
