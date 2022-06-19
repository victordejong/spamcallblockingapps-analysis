.class public final Ls1/a/a/a/v0/d/a/g0/l$b$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/g0/l$b;->a(Ls1/a/a/a/v0/d/a/g0/w;)Ls1/a/a/a/v0/d/a/g0/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/i1;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/d/a/g0/l$b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/g0/l$b$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/g0/l$b$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/g0/l$b$b;->b:Ls1/a/a/a/v0/d/a/g0/l$b$b;

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
    check-cast p1, Ls1/a/a/a/v0/m/i1;

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "it.constructor.declarati\u2026 ?: return@contains false"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    .line 4
    sget-object v1, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    .line 5
    sget-object v1, Ls1/a/a/a/v0/a/p/c;->f:Ls1/a/a/a/v0/f/b;

    .line 6
    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->g()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1
.end method
