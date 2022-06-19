.class public Le/a/i/a0/d$b;
.super Ln3/c0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/a0/d;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/j<",
        "Le/a/i/a0/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/a0/d;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/j;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Le/a/i/a0/b;

    .line 2
    iget-object p2, p2, Le/a/i/a0/b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v0, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `installed_packages` WHERE `package_name` = ?"

    return-object v0
.end method
