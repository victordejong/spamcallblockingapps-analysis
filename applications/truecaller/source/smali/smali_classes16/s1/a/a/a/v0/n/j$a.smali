.class public final Ls1/a/a/a/v0/n/j$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/v;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/n/j$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/n/j$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/n/j$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/n/j$a;->b:Ls1/a/a/a/v0/n/j$a;

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

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/v;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p1

    const-string v0, "valueParameters"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/b1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->a(Ls1/a/a/a/v0/b/b1;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/b1;->H0()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 4
    :cond_1
    sget-object p1, Ls1/a/a/a/v0/n/j;->b:Ls1/a/a/a/v0/n/j;

    if-nez v0, :cond_2

    const-string p1, "last parameter should not have a default value or be a vararg"

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
