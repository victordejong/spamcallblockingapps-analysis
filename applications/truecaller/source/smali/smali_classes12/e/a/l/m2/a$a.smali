.class public final Le/a/l/m2/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/m2/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/m2/a;


# direct methods
.method public constructor <init>(Le/a/l/m2/a;)V
    .locals 0

    iput-object p1, p0, Le/a/l/m2/a$a;->b:Le/a/l/m2/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/l/m2/a$a;->b:Le/a/l/m2/a;

    .line 4
    iget-object v0, p1, Le/a/l/m2/a;->a:Le/a/l/m2/b;

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Le/a/l/m2/a;->d:Le/a/l/n2/f;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {v0, p1}, Le/a/l/m2/b;->Yg(Le/a/l/n2/f;)V

    goto :goto_0

    :cond_0
    const-string p1, "subscription"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
