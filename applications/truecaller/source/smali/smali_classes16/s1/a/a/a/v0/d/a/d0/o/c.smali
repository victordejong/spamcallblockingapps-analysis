.class public final Ls1/a/a/a/v0/d/a/d0/o/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/d/a/f0/v;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/d/a/d0/o/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/d0/o/c;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/d0/o/c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/o/c;->b:Ls1/a/a/a/v0/d/a/d0/o/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/d/a/f0/v;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/d/a/f0/z;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ls1/a/a/a/v0/d/a/f0/z;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/z;->n()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/z;->K()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    move v0, p1

    :cond_1
    return v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/d/a/f0/v;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/o/c;->a(Ls1/a/a/a/v0/d/a/f0/v;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
