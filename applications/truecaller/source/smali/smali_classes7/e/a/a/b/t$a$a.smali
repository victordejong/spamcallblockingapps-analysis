.class public final synthetic Le/a/a/b/t$a$a;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/t$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Le/a/b0/m/a/a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/a/b/s;)V
    .locals 7

    const-class v3, Le/a/a/b/s;

    const/4 v1, 0x1

    const-string v4, "onAddressLoaded"

    const-string v5, "onAddressLoaded(Lcom/truecaller/common/payments/addressprofile/AddressProfile;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Le/a/b0/m/a/a;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/a/b/s;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "addressProfile"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Le/a/a/b/s;->p:Le/a/a/i/f;

    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Le/a/a/i/f;

    .line 6
    iget-object v1, v1, Le/a/a/i/f;->a:Le/a/c/a/l/b$d;

    const/4 v3, 0x0

    .line 7
    invoke-direct {v2, v1, p1, v3}, Le/a/a/i/f;-><init>(Le/a/c/a/l/b$d;Le/a/b0/m/a/a;Z)V

    iput-object v2, v0, Le/a/a/b/s;->p:Le/a/a/i/f;

    .line 8
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/b/r;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/b/r;->D0()V

    .line 9
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
