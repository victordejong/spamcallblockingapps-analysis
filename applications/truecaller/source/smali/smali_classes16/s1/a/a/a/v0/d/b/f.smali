.class public final Ls1/a/a/a/v0/d/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/q;


# static fields
.field public static final a:Ls1/a/a/a/v0/d/b/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/b/f;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/b/f;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/b/f;->a:Ls1/a/a/a/v0/d/b/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/e/q;Ljava/lang/String;Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "proto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexibleId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lowerBound"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlin.jvm.PlatformType"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error java flexible type with id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ".."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string p2, "ErrorUtils.createErrorTy\u2026owerBound..$upperBound)\")"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    sget-object p2, Ls1/a/a/a/v0/e/a0/a;->g:Ls1/a/a/a/v0/h/h$f;

    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/h/h$d;->g(Ls1/a/a/a/v0/h/h$f;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Ls1/a/a/a/v0/d/a/d0/o/k;

    invoke-direct {p1, p3, p4}, Ls1/a/a/a/v0/d/a/d0/o/k;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    return-object p1

    .line 5
    :cond_1
    invoke-static {p3, p4}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    return-object p1
.end method
