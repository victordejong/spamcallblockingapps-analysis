.class public final Le/a/h/f/r;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Le/a/h/f/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/f/q;


# direct methods
.method public constructor <init>(Le/a/h/f/q;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/r;->b:Le/a/h/f/q;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "view"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/h/f/g;

    iget-object v1, p0, Le/a/h/f/r;->b:Le/a/h/f/q;

    .line 4
    iget-object v2, v1, Le/a/h/f/q;->l:Le/a/l4/c;

    .line 5
    iget-object v3, v1, Le/a/h/f/q;->m:Le/a/p5/c;

    .line 6
    iget-object v1, v1, Le/a/h/f/q;->k:Le/a/o2/f;

    .line 7
    invoke-direct {v0, p1, v2, v3, v1}, Le/a/h/f/g;-><init>(Landroid/view/View;Le/a/l4/c;Le/a/p5/c;Le/a/o2/m;)V

    return-object v0
.end method
