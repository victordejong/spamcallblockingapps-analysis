.class public final Le/a/r/a0/e0/e$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a0/e0/e;->a(Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/n2/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/a0/e0/e;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/truecaller/account/network/CheckCredentialsDeviceDto;


# direct methods
.method public constructor <init>(Le/a/r/a0/e0/e;Ljava/lang/String;Lcom/truecaller/account/network/CheckCredentialsDeviceDto;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/e0/e$b;->b:Le/a/r/a0/e0/e;

    iput-object p2, p0, Le/a/r/a0/e0/e$b;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/r/a0/e0/e$b;->d:Lcom/truecaller/account/network/CheckCredentialsDeviceDto;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 2
    iget-object p1, p0, Le/a/r/a0/e0/e$b;->b:Le/a/r/a0/e0/e;

    .line 3
    iget-object p1, p1, Le/a/r/a0/e0/e;->f:Le/a/n2/a/a;

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v7, Lcom/truecaller/account/network/CheckCredentialsRequestDto;

    iget-object v2, p0, Le/a/r/a0/e0/e$b;->c:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Le/a/r/a0/e0/e$b;->d:Lcom/truecaller/account/network/CheckCredentialsDeviceDto;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/account/network/CheckCredentialsRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/account/network/CheckCredentialsDeviceDto;ILs1/z/c/f;)V

    const/4 v1, 0x2

    .line 5
    invoke-static {p1, v7, v0, v1, v0}, Le/m/d/y/n;->u(Le/a/n2/a/a;Lcom/truecaller/account/network/CheckCredentialsRequestDto;Ljava/lang/String;ILjava/lang/Object;)Le/a/n2/a/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    :goto_0
    iget-object v1, p0, Le/a/r/a0/e0/e$b;->b:Le/a/r/a0/e0/e;

    invoke-static {p1}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 9
    iget-object v1, v1, Le/a/r/a0/e0/e;->l:Le/a/r/q/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it::class.java.simpleName"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "AutoLogin"

    invoke-interface {v1, v3, v2}, Le/a/r/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    instance-of v1, p1, Ls1/l$a;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 11
    :goto_1
    check-cast v0, Le/a/n2/a/e;

    return-object v0
.end method
