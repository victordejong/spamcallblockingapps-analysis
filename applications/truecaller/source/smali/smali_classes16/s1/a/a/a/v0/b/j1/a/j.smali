.class public final Ls1/a/a/a/v0/b/j1/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/e0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/b/j1/a/j$a;
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/b/j1/a/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/j1/a/j;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/j1/a/j;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/j1/a/j;->a:Ls1/a/a/a/v0/b/j1/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;
    .locals 1

    const-string v0, "javaElement"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/j1/a/j$a;

    check-cast p1, Ls1/a/a/a/v0/b/j1/b/u;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/b/j1/a/j$a;-><init>(Ls1/a/a/a/v0/b/j1/b/u;)V

    return-object v0
.end method
