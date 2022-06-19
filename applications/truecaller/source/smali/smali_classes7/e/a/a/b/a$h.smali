.class public final Le/a/a/b/a$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;->onCreate(Landroid/os/Bundle;)V
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
        "Le/a/a/b/o0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/b/a;


# direct methods
.method public constructor <init>(Le/a/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/a$h;->b:Le/a/a/b/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "view"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/a/b/o0;

    iget-object v1, p0, Le/a/a/b/a$h;->b:Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->OA(Le/a/a/b/a;)Le/a/o2/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/b/o0;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0
.end method
