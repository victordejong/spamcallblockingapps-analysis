.class Lg/f/c/a/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/w$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/w;->b(Lg/f/c/a/i;)Lg/f/c/a/w$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/f/c/a/i;


# direct methods
.method constructor <init>(Lg/f/c/a/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/w$a;->a:Lg/f/c/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lg/f/c/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Lg/f/c/a/g<",
            "TQ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lg/f/c/a/h;

    iget-object v1, p0, Lg/f/c/a/w$a;->a:Lg/f/c/a/i;

    invoke-direct {v0, v1, p1}, Lg/f/c/a/h;-><init>(Lg/f/c/a/i;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primitive type not supported"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()Lg/f/c/a/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/f/c/a/g<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/h;

    iget-object v1, p0, Lg/f/c/a/w$a;->a:Lg/f/c/a/i;

    .line 2
    invoke-virtual {v1}, Lg/f/c/a/i;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lg/f/c/a/h;-><init>(Lg/f/c/a/i;Ljava/lang/Class;)V

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/w$a;->a:Lg/f/c/a/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/w$a;->a:Lg/f/c/a/i;

    invoke-virtual {v0}, Lg/f/c/a/i;->h()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
