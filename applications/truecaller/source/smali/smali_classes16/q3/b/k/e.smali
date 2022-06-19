.class public final Lq3/b/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/b/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lq3/b/i/d;

.field public static final b:Lq3/b/k/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lq3/b/k/e;

    invoke-direct {v0}, Lq3/b/k/e;-><init>()V

    sput-object v0, Lq3/b/k/e;->b:Lq3/b/k/e;

    .line 2
    new-instance v0, Lq3/b/k/r;

    sget-object v1, Lq3/b/i/c$a;->a:Lq3/b/i/c$a;

    const-string v2, "kotlin.Boolean"

    invoke-direct {v0, v2, v1}, Lq3/b/k/r;-><init>(Ljava/lang/String;Lq3/b/i/c;)V

    sput-object v0, Lq3/b/k/e;->a:Lq3/b/i/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lq3/b/i/d;
    .locals 1

    .line 1
    sget-object v0, Lq3/b/k/e;->a:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "encoder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2}, Lq3/b/j/e;->e(Z)V

    return-void
.end method

.method public d(Lq3/b/j/d;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lq3/b/j/d;->s()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
