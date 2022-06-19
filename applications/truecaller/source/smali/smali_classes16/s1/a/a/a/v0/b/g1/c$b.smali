.class public final Ls1/a/a/a/v0/b/g1/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/g1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/g1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/b/g1/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/g1/c$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/g1/c$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/g1/c$b;->a:Ls1/a/a/a/v0/b/g1/c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/q0;)Z
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "functionDescriptor"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    .line 2
    sget-object p2, Ls1/a/a/a/v0/b/g1/d;->a:Ls1/a/a/a/v0/f/b;

    .line 3
    invoke-interface {p1, p2}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
