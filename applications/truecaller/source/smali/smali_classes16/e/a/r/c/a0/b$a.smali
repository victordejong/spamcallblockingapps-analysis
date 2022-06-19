.class public final Le/a/r/c/a0/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/c/a0/b;->b(Ls1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/common/network/country/CountryListDto$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/c/a0/b;


# direct methods
.method public constructor <init>(Le/a/r/c/a0/b;)V
    .locals 0

    iput-object p1, p0, Le/a/r/c/a0/b$a;->b:Le/a/r/c/a0/b;

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

    .line 2
    invoke-static {}, Le/a/b0/q/j;->g()Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/r/c/a0/b$a;->b:Le/a/r/c/a0/b;

    .line 4
    iget-object p1, p1, Le/a/r/c/a0/b;->a:Landroid/content/Context;

    const-string v0, "context"

    .line 5
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p1, Le/a/b0/q/k;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Le/a/b0/q/k;-><init>(Ls1/w/d;)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v0}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Le/a/b0/q/j;->g()Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    :cond_0
    return-object p1
.end method
