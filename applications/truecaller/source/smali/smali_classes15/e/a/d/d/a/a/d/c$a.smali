.class public final Le/a/d/d/a/a/d/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/d/a/a/d/c;-><init>(Landroid/view/View;Le/a/p5/c;Le/a/l4/c;Le/a/d/d/a/a/d/d;)V
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
        "Le/a/d/d/a/a/d/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/d/a/a/d/c;

.field public final synthetic c:Le/a/l4/c;

.field public final synthetic d:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/d/d/a/a/d/c;Le/a/l4/c;Le/a/p5/c;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/a/d/c$a;->b:Le/a/d/d/a/a/d/c;

    iput-object p2, p0, Le/a/d/d/a/a/d/c$a;->c:Le/a/l4/c;

    iput-object p3, p0, Le/a/d/d/a/a/d/c$a;->d:Le/a/p5/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/d/d/a/a/d/g;

    iget-object v1, p0, Le/a/d/d/a/a/d/c$a;->c:Le/a/l4/c;

    iget-object v2, p0, Le/a/d/d/a/a/d/c$a;->d:Le/a/p5/c;

    iget-object v3, p0, Le/a/d/d/a/a/d/c$a;->b:Le/a/d/d/a/a/d/c;

    .line 4
    iget-object v3, v3, Le/a/d/d/a/a/d/c;->d:Le/a/o2/f;

    .line 5
    invoke-direct {v0, p1, v1, v2, v3}, Le/a/d/d/a/a/d/g;-><init>(Landroid/view/View;Le/a/l4/c;Le/a/p5/c;Le/a/o2/m;)V

    return-object v0
.end method
