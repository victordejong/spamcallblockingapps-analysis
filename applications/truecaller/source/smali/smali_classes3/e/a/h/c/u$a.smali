.class public final Le/a/h/c/u$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/c/u;-><init>(Le/a/h/c/k;Landroid/view/View;)V
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
        "Le/a/h/c/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/c/u;


# direct methods
.method public constructor <init>(Le/a/h/c/u;)V
    .locals 0

    iput-object p1, p0, Le/a/h/c/u$a;->b:Le/a/h/c/u;

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
    new-instance v0, Le/a/h/c/i;

    iget-object v1, p0, Le/a/h/c/u$a;->b:Le/a/h/c/u;

    .line 4
    iget-object v1, v1, Le/a/h/c/u;->c:Le/a/o2/f;

    .line 5
    invoke-direct {v0, p1, v1}, Le/a/h/c/i;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0
.end method
