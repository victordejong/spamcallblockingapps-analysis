.class public final Le/a/f/a/b/c$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/c;->Vq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f/a/b/c;


# direct methods
.method public constructor <init>(Le/a/f/a/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/c$f;->b:Le/a/f/a/b/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    const-string p2, "<anonymous parameter 0>"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/f/a/b/c$f;->b:Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    invoke-virtual {p1}, Le/a/f/a/b/j;->Zj()V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
