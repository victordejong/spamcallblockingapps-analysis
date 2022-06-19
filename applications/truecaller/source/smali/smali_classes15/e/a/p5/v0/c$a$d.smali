.class public final Le/a/p5/v0/c$a$d;
.super Ls1/z/c/m;
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
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/p5/v0/c$a;

.field public final synthetic c:Lq3/a/w2/x;

.field public final synthetic d:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Le/a/p5/v0/c$a;Lq3/a/w2/x;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/v0/c$a$d;->b:Le/a/p5/v0/c$a;

    iput-object p2, p0, Le/a/p5/v0/c$a$d;->c:Lq3/a/w2/x;

    iput-object p3, p0, Le/a/p5/v0/c$a$d;->d:Landroid/telephony/TelephonyManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/p5/v0/c$a$d;->b:Le/a/p5/v0/c$a;

    iget-object v1, v0, Le/a/p5/v0/c$a;->i:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Le/a/p5/v0/c$a;->h:Le/a/p5/v0/c;

    iget-object v1, p0, Le/a/p5/v0/c$a$d;->d:Landroid/telephony/TelephonyManager;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 6
    :goto_0
    invoke-static {p1, v1, p2}, Le/a/p5/s0/g;->f(ILjava/lang/Integer;Ljava/lang/String;)Le/a/p5/v0/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p2, p0, Le/a/p5/v0/c$a$d;->c:Lq3/a/w2/x;

    const-string v0, "$this$offerSafe"

    .line 8
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-interface {p2, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lq3/a/w2/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    sget-object v2, Ls1/s;->a:Ls1/s;

    :cond_2
    return-object v2
.end method
