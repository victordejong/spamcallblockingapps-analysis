.class public final Le/a/v/b$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/b;->Kj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/v/b$a;->b:I

    iput-object p2, p0, Le/a/v/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/v/b$a;->b:I

    const-string v2, "afterCallWarnFriends"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1
    iget-object v1, p0, Le/a/v/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/b;

    .line 2
    iget-object v1, v1, Le/a/v/b;->m:Le/a/e0/c;

    .line 3
    check-cast v1, Le/a/g/j/m0;

    .line 4
    iget-object v1, v1, Le/a/g/j/m0;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v1, v2}, Lcom/truecaller/settings/CallingSettings;->l(Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    iget-object v1, p0, Le/a/v/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/b;

    .line 7
    iget-object v1, v1, Le/a/v/b;->m:Le/a/e0/c;

    .line 8
    check-cast v1, Le/a/g/j/m0;

    .line 9
    iget-object v1, v1, Le/a/g/j/m0;->d:Lcom/truecaller/settings/CallingSettings;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
