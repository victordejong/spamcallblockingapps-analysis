.class public final Ls1/a/a/a/v0/n/j$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/v;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/n/j$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/n/j$c;

    invoke-direct {v0}, Ls1/a/a/a/v0/n/j$c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/n/j$c;->b:Ls1/a/a/a/v0/n/j$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/v;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->k0()Ls1/a/a/a/v0/b/n0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object v0

    .line 4
    :goto_0
    sget-object v1, Ls1/a/a/a/v0/n/j;->b:Ls1/a/a/a/v0/n/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    const-string v2, "receiver.type"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$isSubtypeOf"

    .line 5
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "superType"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v2, Ls1/a/a/a/v0/m/l1/d;->a:Ls1/a/a/a/v0/m/l1/d;

    invoke-interface {v2, p1, v0}, Ls1/a/a/a/v0/m/l1/d;->d(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    const-string p1, "receiver must be a supertype of the return type"

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
