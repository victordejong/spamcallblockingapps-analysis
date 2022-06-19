.class public final Le/a/g3/d$h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g3/d;->updatePushRegistrationId(Le/a/d4/e;Ljava/lang/String;)V
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
    c = "com.truecaller.clevertap.CleverTapManagerImpl$updatePushRegistrationId$1"
    f = "CleverTapManagerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/g3/d;

.field public final synthetic f:Le/a/d4/e;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/g3/d;Le/a/d4/e;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g3/d$h;->e:Le/a/g3/d;

    iput-object p2, p0, Le/a/g3/d$h;->f:Le/a/d4/e;

    iput-object p3, p0, Le/a/g3/d$h;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/g3/d$h;

    iget-object v0, p0, Le/a/g3/d$h;->e:Le/a/g3/d;

    iget-object v1, p0, Le/a/g3/d$h;->f:Le/a/d4/e;

    iget-object v2, p0, Le/a/g3/d$h;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/g3/d$h;-><init>(Le/a/g3/d;Le/a/d4/e;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/g3/d$h;->e:Le/a/g3/d;

    iget-object v1, p0, Le/a/g3/d$h;->f:Le/a/d4/e;

    iget-object v2, p0, Le/a/g3/d$h;->g:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object p2, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {v1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, v0, Le/a/g3/d;->b:Le/a/g3/g;

    const-string v1, "CleverTapFcmToken"

    .line 6
    invoke-interface {p2, v1}, Le/a/g3/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, v0, Le/a/g3/d;->b:Le/a/g3/g;

    .line 8
    invoke-interface {p2, v1, v2}, Le/a/g3/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, v0, Le/a/g3/d;->a:Le/a/g3/b;

    .line 10
    invoke-interface {p2, v2}, Le/a/g3/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object p2, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {v1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    iget-object p2, v0, Le/a/g3/d;->b:Le/a/g3/g;

    const-string v1, "CleverTapHmsToken"

    .line 13
    invoke-interface {p2, v1}, Le/a/g3/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 14
    iget-object p2, v0, Le/a/g3/d;->b:Le/a/g3/g;

    .line 15
    invoke-interface {p2, v1, v2}, Le/a/g3/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p2, v0, Le/a/g3/d;->a:Le/a/g3/b;

    .line 17
    invoke-interface {p2, v2}, Le/a/g3/b;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/g3/d$h;->f:Le/a/d4/e;

    .line 3
    sget-object v0, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Le/a/g3/d$h;->g:Ljava/lang/String;

    iget-object v0, p0, Le/a/g3/d$h;->e:Le/a/g3/d;

    .line 5
    iget-object v0, v0, Le/a/g3/d;->b:Le/a/g3/g;

    const-string v1, "CleverTapFcmToken"

    .line 6
    invoke-interface {v0, v1}, Le/a/g3/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Le/a/g3/d$h;->e:Le/a/g3/d;

    .line 8
    iget-object p1, p1, Le/a/g3/d;->b:Le/a/g3/g;

    .line 9
    iget-object v0, p0, Le/a/g3/d$h;->g:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Le/a/g3/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/a/g3/d$h;->e:Le/a/g3/d;

    .line 11
    iget-object p1, p1, Le/a/g3/d;->a:Le/a/g3/b;

    .line 12
    iget-object v0, p0, Le/a/g3/d$h;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/g3/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Le/a/g3/d$h;->g:Ljava/lang/String;

    iget-object v0, p0, Le/a/g3/d$h;->e:Le/a/g3/d;

    .line 15
    iget-object v0, v0, Le/a/g3/d;->b:Le/a/g3/g;

    const-string v1, "CleverTapHmsToken"

    .line 16
    invoke-interface {v0, v1}, Le/a/g3/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Le/a/g3/d$h;->e:Le/a/g3/d;

    .line 18
    iget-object p1, p1, Le/a/g3/d;->b:Le/a/g3/g;

    .line 19
    iget-object v0, p0, Le/a/g3/d$h;->g:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Le/a/g3/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Le/a/g3/d$h;->e:Le/a/g3/d;

    .line 21
    iget-object p1, p1, Le/a/g3/d;->a:Le/a/g3/b;

    .line 22
    iget-object v0, p0, Le/a/g3/d$h;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/g3/b;->b(Ljava/lang/String;)V

    .line 23
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
