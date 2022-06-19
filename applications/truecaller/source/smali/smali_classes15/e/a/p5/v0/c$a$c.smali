.class public final Le/a/p5/v0/c$a$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/v0/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Landroid/telephony/PhoneStateListener;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.utils.telephony.TelephonyUtilImpl$callStates$1$phoneStateListener$2"
    f = "TelephonyUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/p5/v0/c$a;

.field public final synthetic f:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Le/a/p5/v0/c$a;Ls1/z/b/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/v0/c$a$c;->e:Le/a/p5/v0/c$a;

    iput-object p2, p0, Le/a/p5/v0/c$a$c;->f:Ls1/z/b/p;

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

    new-instance p1, Le/a/p5/v0/c$a$c;

    iget-object v0, p0, Le/a/p5/v0/c$a$c;->e:Le/a/p5/v0/c$a;

    iget-object v1, p0, Le/a/p5/v0/c$a$c;->f:Ls1/z/b/p;

    invoke-direct {p1, v0, v1, p2}, Le/a/p5/v0/c$a$c;-><init>(Le/a/p5/v0/c$a;Ls1/z/b/p;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/p5/v0/c$a$c;

    iget-object v0, p0, Le/a/p5/v0/c$a$c;->e:Le/a/p5/v0/c$a;

    iget-object v1, p0, Le/a/p5/v0/c$a$c;->f:Ls1/z/b/p;

    invoke-direct {p1, v0, v1, p2}, Le/a/p5/v0/c$a$c;-><init>(Le/a/p5/v0/c$a;Ls1/z/b/p;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/p5/v0/c$a$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/p5/v0/c$a$c;->e:Le/a/p5/v0/c$a;

    iget-object p1, p1, Le/a/p5/v0/c$a;->h:Le/a/p5/v0/c;

    new-instance v0, Le/a/p5/v0/c$a$c$a;

    invoke-direct {v0, p0}, Le/a/p5/v0/c$a$c$a;-><init>(Le/a/p5/v0/c$a$c;)V

    .line 3
    iget-object v1, p0, Le/a/p5/v0/c$a$c;->e:Le/a/p5/v0/c$a;

    iget-object v1, v1, Le/a/p5/v0/c$a;->i:Ljava/lang/Integer;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    const-class p1, Landroid/telephony/PhoneStateListener;

    const-string v2, "mSubId"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method
