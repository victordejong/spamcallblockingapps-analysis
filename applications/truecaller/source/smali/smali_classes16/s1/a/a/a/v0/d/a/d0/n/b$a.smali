.class public final Ls1/a/a/a/v0/d/a/d0/n/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/d0/n/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/d0/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/d/a/d0/n/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/b$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/d0/n/b$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/n/b$a;->a:Ls1/a/a/a/v0/d/a/d0/n/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    return-object v0
.end method

.method public b(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/d/a/f0/n;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    return-object v0
.end method

.method public d(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method
