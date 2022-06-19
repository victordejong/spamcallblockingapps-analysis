.class public final Ls1/a/a/a/v0/m/p0;
.super Ls1/a/a/a/v0/m/z0;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/m/e0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/g;)V
    .locals 1

    const-string v0, "kotlinBuiltIns"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/z0;-><init>()V

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/a/g;->o()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string v0, "kotlinBuiltIns.nullableAnyType"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/v0/m/p0;->a:Ls1/a/a/a/v0/m/e0;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ls1/a/a/a/v0/m/j1;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    return-object v0
.end method

.method public getType()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/p0;->a:Ls1/a/a/a/v0/m/e0;

    return-object v0
.end method
