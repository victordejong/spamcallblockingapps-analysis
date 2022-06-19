.class public final Ls1/a/a/a/v0/d/a/z;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/d/a/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/z;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/z;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/z;->b:Ls1/a/a/a/v0/d/a/z;

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

    check-cast p1, Ls1/a/a/a/v0/b/b;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/d/a/d;->f:Ls1/a/a/a/v0/d/a/d;

    check-cast p1, Ls1/a/a/a/v0/b/q0;

    const-string v0, "functionDescriptor"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->z(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ls1/a/a/a/v0/d/a/c;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/d/a/c;-><init>(Ls1/a/a/a/v0/b/q0;)V

    invoke-static {p1, v2, v0, v1}, Ls1/a/a/a/v0/j/v/b;->c(Ls1/a/a/a/v0/b/b;ZLs1/z/b/l;I)Ls1/a/a/a/v0/b/b;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
