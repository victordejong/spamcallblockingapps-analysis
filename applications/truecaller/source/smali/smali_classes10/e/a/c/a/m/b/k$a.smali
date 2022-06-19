.class public final Le/a/c/a/m/b/k$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/b/k;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.qa.presentation.ReminderViewModel$showSmartNotif$1$1$1"
    f = "ReminderViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/v/h/g;

.field public final synthetic f:Le/a/c/a/m/b/k;


# direct methods
.method public constructor <init>(Le/a/c/v/h/g;Ls1/w/d;Le/a/c/a/m/b/k;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/b/k$a;->e:Le/a/c/v/h/g;

    iput-object p3, p0, Le/a/c/a/m/b/k$a;->f:Le/a/c/a/m/b/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/b/k$a;

    iget-object v0, p0, Le/a/c/a/m/b/k$a;->e:Le/a/c/v/h/g;

    iget-object v1, p0, Le/a/c/a/m/b/k$a;->f:Le/a/c/a/m/b/k;

    invoke-direct {p1, v0, p2, v1}, Le/a/c/a/m/b/k$a;-><init>(Le/a/c/v/h/g;Ls1/w/d;Le/a/c/a/m/b/k;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/c/a/m/b/k$a;->e:Le/a/c/v/h/g;

    iget-object v0, p0, Le/a/c/a/m/b/k$a;->f:Le/a/c/a/m/b/k;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v0, Le/a/c/a/m/b/k;->g:Le/a/c/a/m/b/i;

    .line 6
    iget-object v0, v0, Le/a/c/a/m/b/i;->f:Le/a/c/i/l/f/a;

    .line 7
    invoke-interface {v0, p1}, Le/a/c/i/l/f/a;->e(Le/a/c/v/h/g;)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c/a/m/b/k$a;->f:Le/a/c/a/m/b/k;

    iget-object p1, p1, Le/a/c/a/m/b/k;->g:Le/a/c/a/m/b/i;

    .line 3
    iget-object p1, p1, Le/a/c/a/m/b/i;->f:Le/a/c/i/l/f/a;

    .line 4
    iget-object v0, p0, Le/a/c/a/m/b/k$a;->e:Le/a/c/v/h/g;

    invoke-interface {p1, v0}, Le/a/c/i/l/f/a;->e(Le/a/c/v/h/g;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
