.class public final Le/a/l/p2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Ls1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/g<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/s4/a;

.field public final g:Le/a/k3/j/g;

.field public final h:Le/a/p5/c0;

.field public final i:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Le/a/s4/a;Le/a/k3/j/g;Le/a/p5/c0;Le/a/l/p2/v0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localContactSearcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/h;->e:Le/a/b0/o/a;

    iput-object p2, p0, Le/a/l/p2/h;->f:Le/a/s4/a;

    iput-object p3, p0, Le/a/l/p2/h;->g:Le/a/k3/j/g;

    iput-object p4, p0, Le/a/l/p2/h;->h:Le/a/p5/c0;

    iput-object p5, p0, Le/a/l/p2/h;->i:Le/a/l/p2/v0;

    const-string p2, ","

    .line 2
    iput-object p2, p0, Le/a/l/p2/h;->a:Ljava/lang/String;

    const-string p3, "premiumAlreadyNotified"

    .line 3
    invoke-interface {p1, p3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x6

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p3, v0, p5, p5, p4}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    sget-object p3, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    iput-object p3, p0, Le/a/l/p2/h;->b:Ljava/util/List;

    const-string p3, "premiumFriendUpgradedPhoneNumber"

    .line 5
    invoke-interface {p1, p3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p1, p2, p5, p5, p4}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Ljava/lang/String;

    .line 8
    iget-object p5, p0, Le/a/l/p2/h;->b:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_1

    move-object p3, p2

    .line 9
    :cond_2
    check-cast p3, Ljava/lang/String;

    :cond_3
    iput-object p3, p0, Le/a/l/p2/h;->c:Ljava/lang/String;

    .line 10
    new-instance p1, Le/a/l/p2/h$a;

    invoke-direct {p1, p0}, Le/a/l/p2/h$a;-><init>(Le/a/l/p2/h;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/l/p2/h;->d:Ls1/g;

    return-void
.end method
