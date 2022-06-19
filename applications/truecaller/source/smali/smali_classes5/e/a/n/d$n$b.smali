.class public final Le/a/n/d$n$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/d$n;->b(Ljava/lang/Object;)Z
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
    c = "com.truecaller.backup.BackupSettingsRegistry$settingsMap$20$restore$1"
    f = "BackupSettingsRegistry.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/n/d$n;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/n/d$n;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/d$n$b;->e:Le/a/n/d$n;

    iput-object p2, p0, Le/a/n/d$n$b;->f:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/n/d$n$b;

    iget-object v0, p0, Le/a/n/d$n$b;->e:Le/a/n/d$n;

    iget-object v1, p0, Le/a/n/d$n$b;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/n/d$n$b;-><init>(Le/a/n/d$n;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/n/d$n$b;->e:Le/a/n/d$n;

    iget-object v1, p0, Le/a/n/d$n$b;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Le/a/n/d$n;->e:Landroid/content/Context;

    check-cast p2, Ljava/util/Locale;

    invoke-static {v0, p2}, Le/a/b0/k/h;->b(Landroid/content/Context;Ljava/util/Locale;)Z

    :cond_0
    const/4 p2, 0x0

    .line 6
    sput-object p2, Le/a/b0/q/m;->o:Ljava/text/DateFormat;

    .line 7
    sput-object p2, Le/a/b0/q/m;->p:Ljava/text/DateFormat;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/n/d$n$b;->f:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/Locale;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/n/d$n$b;->e:Le/a/n/d$n;

    iget-object v0, v0, Le/a/n/d$n;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a/b0/k/h;->b(Landroid/content/Context;Ljava/util/Locale;)Z

    :cond_0
    const/4 p1, 0x0

    .line 4
    sput-object p1, Le/a/b0/q/m;->o:Ljava/text/DateFormat;

    .line 5
    sput-object p1, Le/a/b0/q/m;->p:Ljava/text/DateFormat;

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
