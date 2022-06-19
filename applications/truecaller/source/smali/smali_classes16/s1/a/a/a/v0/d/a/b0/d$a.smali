.class public final Ls1/a/a/a/v0/d/a/b0/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/b0/d;->a(Ljava/util/List;)Ls1/a/a/a/v0/j/t/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/a0;",
        "Ls1/a/a/a/v0/m/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/d/a/b0/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/b0/d$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/b0/d$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/b0/d$a;->b:Ls1/a/a/a/v0/d/a/b0/d$a;

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
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/a0;

    const-string v0, "module"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/c;->k:Ls1/a/a/a/v0/d/a/b0/c;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/c;->g:Ls1/a/a/a/v0/f/e;

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p1

    sget-object v1, Ls1/a/a/a/v0/a/k$a;->z:Ls1/a/a/a/v0/f/b;

    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/a/g;->i(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Le/q/f/a/d/a;->C0(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/b/b1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Error: AnnotationTarget[]"

    invoke-static {p1}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string v0, "ErrorUtils.createErrorTy\u2026ror: AnnotationTarget[]\")"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
