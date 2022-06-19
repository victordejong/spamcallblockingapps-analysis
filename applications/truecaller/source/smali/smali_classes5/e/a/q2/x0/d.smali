.class public final Le/a/q2/x0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/w0/h/e;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/b0/q/z;


# direct methods
.method public constructor <init>(Le/a/b0/q/z;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "phoneNumberHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/x0/d;->b:Le/a/b0/q/z;

    .line 2
    sget-object p1, Le/a/q2/x0/d$a;->b:Le/a/q2/x0/d$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/q2/x0/d;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/a/q2/w0/h/n;
    .locals 4

    .line 1
    sget-object v0, Le/a/q2/w0/h/n$a;->a:Le/a/q2/w0/h/n$a;

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/q2/x0/d;->b:Le/a/b0/q/z;

    .line 3
    invoke-interface {v1}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-interface {v1, p1, v2, v3}, Le/a/b0/q/z;->e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    :try_start_0
    iget-object v1, p0, Le/a/q2/x0/d;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/f/a/j;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, p1, v2}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v1

    .line 7
    iget-object v2, p0, Le/a/q2/x0/d;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/f/a/j;

    .line 8
    invoke-virtual {v2, v1}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 9
    new-instance v0, Le/a/q2/w0/h/n$b;

    invoke-direct {v0, p1, v1}, Le/a/q2/w0/h/n$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :cond_1
    return-object v0
.end method
