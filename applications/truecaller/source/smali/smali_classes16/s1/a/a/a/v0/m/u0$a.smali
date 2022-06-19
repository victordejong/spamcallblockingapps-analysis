.class public final Ls1/a/a/a/v0/m/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/u0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/m/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/m/u0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/u0$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/m/u0$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/m/u0$a;->a:Ls1/a/a/a/v0/m/u0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/v0;)V
    .locals 1

    const-string v0, "typeAlias"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/w0;)V
    .locals 1

    const-string v0, "bound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "unsubstitutedArgument"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "argument"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "typeParameter"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ls1/a/a/a/v0/b/f1/c;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ls1/a/a/a/v0/b/v0;Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/m/e0;)V
    .locals 0

    const-string p2, "typeAlias"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "substitutedArgument"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
