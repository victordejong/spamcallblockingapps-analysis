.class public final Ls1/a/a/a/v0/d/a/d0/n/n;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/d/a/f0/p;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/d/a/d0/n/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/n;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/d0/n/n;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/n/n;->b:Ls1/a/a/a/v0/d/a/d0/n/n;

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
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/d/a/f0/p;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/r;->e()Z

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
