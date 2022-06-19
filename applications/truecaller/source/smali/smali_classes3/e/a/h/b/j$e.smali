.class public final Le/a/h/b/j$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/j;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/spamcategories/SpamCategoryResult;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/b/j;


# direct methods
.method public constructor <init>(Le/a/h/b/j;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/j$e;->b:Le/a/h/b/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/spamcategories/SpamCategoryResult;

    const-string v0, "spamCategoryResult"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/h/b/j$e;->b:Le/a/h/b/j;

    invoke-virtual {v0}, Le/a/h/b/j;->OA()Le/a/h/b/t;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/h/b/v$a;->Y6(Lcom/truecaller/spamcategories/SpamCategoryResult;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
