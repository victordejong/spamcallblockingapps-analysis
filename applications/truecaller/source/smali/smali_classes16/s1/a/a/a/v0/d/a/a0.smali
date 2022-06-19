.class public final Ls1/a/a/a/v0/d/a/a0;
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
.field public static final b:Ls1/a/a/a/v0/d/a/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/a0;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/a0;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/a0;->b:Ls1/a/a/a/v0/d/a/a0;

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
    .locals 4

    check-cast p1, Ls1/a/a/a/v0/b/b;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->z(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    sget-object v0, Ls1/a/a/a/v0/d/a/e;->a:Ljava/util/List;

    const-string v0, "$this$getSpecialSignatureInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Ls1/a/a/a/v0/d/a/e;->e:Ljava/util/Set;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-object v0, Ls1/a/a/a/v0/d/a/f;->b:Ls1/a/a/a/v0/d/a/f;

    invoke-static {p1, v2, v0, v1}, Ls1/a/a/a/v0/j/v/b;->c(Ls1/a/a/a/v0/b/b;ZLs1/z/b/l;I)Ls1/a/a/a/v0/b/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Ls1/a/a/a/v0/d/b/p;->d(Ls1/a/a/a/v0/b/a;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    sget-object v0, Ls1/a/a/a/v0/d/a/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Ls1/a/a/a/v0/d/a/e$a;->a:Ls1/a/a/a/v0/d/a/e$a;

    goto :goto_1

    .line 7
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/d/a/e;->d:Ljava/util/Map;

    invoke-static {v0, p1}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/a/e$b;

    .line 8
    sget-object v0, Ls1/a/a/a/v0/d/a/e$b;->b:Ls1/a/a/a/v0/d/a/e$b;

    if-ne p1, v0, :cond_2

    .line 9
    sget-object p1, Ls1/a/a/a/v0/d/a/e$a;->c:Ls1/a/a/a/v0/d/a/e$a;

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Ls1/a/a/a/v0/d/a/e$a;->b:Ls1/a/a/a/v0/d/a/e$a;

    :goto_0
    move-object v3, p1

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 11
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
