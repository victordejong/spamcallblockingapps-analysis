.class public final synthetic Le/a/v4/u0/i$a;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v4/u0/i;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/v4/u0/i;)V
    .locals 7

    const-class v3, Le/a/v4/u0/i;

    const/4 v1, 0x0

    const-string v4, "exitWithRejectRequest"

    const-string v5, "exitWithRejectRequest()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/v4/u0/i;

    .line 2
    iget-object v1, v0, Le/a/v4/u0/i;->j:Lcom/truecaller/sdk/push/PushAppData;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Le/a/v4/u0/i;->l:Le/a/v4/b0;

    invoke-virtual {v2, v1}, Le/a/v4/b0;->b(Lcom/truecaller/sdk/push/PushAppData;)V

    .line 4
    :cond_0
    iget-object v0, v0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Le/a/v4/w0/b;->V1()V

    .line 6
    :cond_1
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
