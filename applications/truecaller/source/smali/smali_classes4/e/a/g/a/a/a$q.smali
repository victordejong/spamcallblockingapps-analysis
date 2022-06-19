.class public final Le/a/g/a/a/a$q;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;->aA(Z)V
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
.field public final synthetic b:Le/a/g/a/a/a;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;Z)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/a$q;->b:Le/a/g/a/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/a/a$q;->b:Le/a/g/a/a/a;

    invoke-virtual {v0}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/a/i;

    .line 2
    iget-object v1, v0, Le/a/g/a/m;->u:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Le/a/g/a/a/i;->Xk(Z)V

    .line 5
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
