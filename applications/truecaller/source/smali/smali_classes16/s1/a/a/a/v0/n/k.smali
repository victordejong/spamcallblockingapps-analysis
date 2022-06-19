.class public final Ls1/a/a/a/v0/n/k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/k;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/n/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/n/k;

    invoke-direct {v0}, Ls1/a/a/a/v0/n/k;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/n/k;->b:Ls1/a/a/a/v0/n/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/k;)Z
    .locals 1

    const-string v0, "$this$isAny"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/b/e;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/a/g;->e:Ls1/a/a/a/v0/f/e;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/a/k$a;->a:Ls1/a/a/a/v0/f/c;

    invoke-static {p1, v0}, Ls1/a/a/a/v0/a/g;->c(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/f/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/k;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/n/k;->a(Ls1/a/a/a/v0/b/k;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
