.class public final Ls1/a/a/a/w$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/w;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/w;


# direct methods
.method public constructor <init>(Ls1/a/a/a/w;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/w$c;->b:Ls1/a/a/a/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/w$c;->b:Ls1/a/a/a/w;

    invoke-virtual {v0}, Ls1/a/a/a/z;->i()Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Ls1/a/a/a/w$c;->b:Ls1/a/a/a/w;

    .line 2
    iget-object v3, v2, Ls1/a/a/a/z;->g:Ljava/lang/Object;

    invoke-virtual {v2}, Ls1/a/a/a/z;->j()Ls1/a/a/a/v0/b/k0;

    move-result-object v2

    invoke-static {v3, v2}, Le/q/f/a/d/a;->H(Ljava/lang/Object;Ls1/a/a/a/v0/b/b;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    :try_start_0
    sget-object v3, Ls1/a/a/a/z;->h:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {v0}, Ls1/a/a/a/z;->j()Ls1/a/a/a/v0/b/k0;

    move-result-object v3

    invoke-interface {v3}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not an extension property and thus getExtensionDelegate() "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is not going to work, use getDelegate() instead"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ls1/a/q/b;

    invoke-direct {v1, v0}, Ls1/a/q/b;-><init>(Ljava/lang/IllegalAccessException;)V

    throw v1
.end method
