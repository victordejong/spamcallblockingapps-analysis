.class public final Le/a/h/b/d/a/a/o$g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/a/a/o;-><init>(Landroid/view/View;Le/a/p5/c;Le/a/l4/c;Le/a/h/b/d/a/a/r;Le/a/h/b/d/a/a/v;Le/a/h/b/d/a/a/c;Le/a/h/b/d/a/a/h;Le/a/h/b/d/a/a/z;Le/a/h/b/d/a/a/e0/e;)V
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
        "Le/a/h/b/d/a/a/e0/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/b/d/a/a/o;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/a/o;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/a/a/o$g;->b:Le/a/h/b/d/a/a/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/h/b/d/a/a/e0/h;

    iget-object v1, p0, Le/a/h/b/d/a/a/o$g;->b:Le/a/h/b/d/a/a/o;

    .line 4
    iget-object v1, v1, Le/a/h/b/d/a/a/o;->j:Le/a/o2/f;

    .line 5
    invoke-direct {v0, p1, v1}, Le/a/h/b/d/a/a/e0/h;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0
.end method
