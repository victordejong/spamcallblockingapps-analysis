.class public final Le/a/r/a0/r$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a0/r;->K3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/a0/r;


# direct methods
.method public constructor <init>(Le/a/r/a0/r;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/r$e;->b:Le/a/r/a0/r;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/r/a0/r$e;->b:Le/a/r/a0/r;

    invoke-virtual {v0}, Le/a/r/a0/r;->RA()Le/a/r/a0/w;

    move-result-object v0

    check-cast v0, Le/a/r/a0/z;

    .line 3
    iget-object v1, v0, Le/a/r/a0/z;->f:Le/a/b0/e/r/a;

    const-string v2, "region_c_accepted"

    invoke-interface {v1, v2, p1}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/r/a0/x;->c4()V

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
