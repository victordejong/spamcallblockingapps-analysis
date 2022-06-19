.class public final Le/a/h/b/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Le/a/h/b/e/a$c;

.field public final f:Le/a/h/b/e/a$b;

.field public final g:Landroid/view/View;

.field public final h:Le/a/q2/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/q2/a;)V
    .locals 1

    const-string v0, "targetView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/e/a;->g:Landroid/view/View;

    iput-object p2, p0, Le/a/h/b/e/a;->h:Le/a/q2/a;

    .line 2
    new-instance p1, Le/a/h/b/e/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/h/b/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/b/e/a;->c:Ls1/g;

    .line 3
    new-instance p1, Le/a/h/b/e/a$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/h/b/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/b/e/a;->d:Ls1/g;

    .line 4
    new-instance p1, Le/a/h/b/e/a$c;

    invoke-direct {p1, p0}, Le/a/h/b/e/a$c;-><init>(Le/a/h/b/e/a;)V

    iput-object p1, p0, Le/a/h/b/e/a;->e:Le/a/h/b/e/a$c;

    .line 5
    new-instance p1, Le/a/h/b/e/a$b;

    invoke-direct {p1, p0}, Le/a/h/b/e/a$b;-><init>(Le/a/h/b/e/a;)V

    iput-object p1, p0, Le/a/h/b/e/a;->f:Le/a/h/b/e/a$b;

    return-void
.end method
