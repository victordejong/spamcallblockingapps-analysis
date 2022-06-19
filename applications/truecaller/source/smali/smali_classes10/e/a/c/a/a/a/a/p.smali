.class public final Le/a/c/a/a/a/a/p;
.super Le/a/c/a/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/a/a/a/e<",
        "Lcom/truecaller/insights/ui/models/AdapterItem$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Landroid/view/View;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/c/a/g/r0;

.field public final g:Le/a/c/a/i/h;

.field public final h:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/a/g/r0;Le/a/c/a/i/h;Le/a/c/b/j;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsLogger"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/r0;->a:Lcom/google/android/material/card/MaterialCardView;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Le/a/c/a/a/a/a/e;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    iput-object p1, p0, Le/a/c/a/a/a/a/p;->f:Le/a/c/a/g/r0;

    iput-object p2, p0, Le/a/c/a/a/a/a/p;->g:Le/a/c/a/i/h;

    iput-object p3, p0, Le/a/c/a/a/a/a/p;->h:Le/a/c/b/j;

    .line 3
    new-instance p1, Le/a/c/a/a/a/a/p$a;

    invoke-direct {p1, p0}, Le/a/c/a/a/a/a/p$a;-><init>(Le/a/c/a/a/a/a/p;)V

    iput-object p1, p0, Le/a/c/a/a/a/a/p;->e:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public S4(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$g;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
