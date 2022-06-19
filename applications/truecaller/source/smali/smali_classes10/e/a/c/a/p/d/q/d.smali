.class public final Le/a/c/a/p/d/q/d;
.super Le/a/c/a/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/a/a/a/e<",
        "Le/a/c/a/p/c/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Le/a/c/a/g/v0;

.field public final f:Le/a/c/h/h;


# direct methods
.method public constructor <init>(Le/a/c/a/g/v0;Le/a/c/h/h;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLocator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/v0;->a:Landroid/widget/LinearLayout;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Le/a/c/a/a/a/a/e;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    .line 4
    iput-object p1, p0, Le/a/c/a/p/d/q/d;->e:Le/a/c/a/g/v0;

    iput-object p2, p0, Le/a/c/a/p/d/q/d;->f:Le/a/c/h/h;

    return-void
.end method


# virtual methods
.method public S4(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/c/a/p/c/d$b;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
