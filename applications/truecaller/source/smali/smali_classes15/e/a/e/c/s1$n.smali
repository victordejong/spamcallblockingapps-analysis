.class public Le/a/e/c/s1$n;
.super Le/a/j4/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public final d:Le/a/h/p0/c;

.field public final e:Ljava/lang/String;

.field public final synthetic f:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Ljava/lang/String;Le/a/h/p0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$n;->f:Le/a/e/c/s1;

    invoke-direct {p0}, Le/a/j4/a/a;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/e/c/s1$n;->e:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/a/e/c/s1$n;->d:Le/a/h/p0/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$n;->f:Le/a/e/c/s1;

    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/e/c/s1$n;->f:Le/a/e/c/s1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    iput-boolean p1, v0, Le/a/e/c/s1;->g1:Z

    .line 4
    iget-object p1, p0, Le/a/e/c/s1$n;->f:Le/a/e/c/s1;

    .line 5
    iget-boolean v0, p1, Le/a/e/c/s1;->g1:Z

    if-eqz v0, :cond_1

    const v0, 0x7f12017b

    goto :goto_0

    :cond_1
    const v0, 0x7f120179

    .line 6
    :goto_0
    invoke-virtual {p1, v0}, Le/a/e/x0;->TA(I)V

    .line 7
    iget-object p1, p0, Le/a/e/c/s1$n;->f:Le/a/e/c/s1;

    .line 8
    iget-object p1, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Ln3/b/a/h;->supportInvalidateOptionsMenu()V

    .line 10
    iget-object p1, p0, Le/a/e/c/s1$n;->f:Le/a/e/c/s1;

    .line 11
    iget-object p1, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/e/c/s1$n;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/e/c/s1$n;->d:Le/a/h/p0/c;

    invoke-interface {v0, p1}, Le/a/h/p0/c;->f(Ljava/lang/String;)Le/a/h/p0/e/a;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    iput-boolean v0, p1, Le/a/h/p0/e/a;->b:Z

    .line 5
    iget-object v0, p0, Le/a/e/c/s1$n;->d:Le/a/h/p0/c;

    invoke-interface {v0, p1}, Le/a/h/p0/c;->e(Le/a/h/p0/e/a;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/e/c/s1$n;->d:Le/a/h/p0/c;

    new-instance v1, Le/a/h/p0/e/a;

    iget-object v2, p0, Le/a/e/c/s1$n;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Le/a/h/p0/e/a;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p1, v1}, Le/a/h/p0/c;->c(Le/a/h/p0/e/a;)V

    .line 7
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
