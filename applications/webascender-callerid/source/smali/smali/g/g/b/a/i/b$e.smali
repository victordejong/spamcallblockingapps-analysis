.class final Lg/g/b/a/i/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/i/b;->p(Lg/g/b/a/i/b$a;J)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Lg/g/b/a/i/a$a;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/i/b;


# direct methods
.method constructor <init>(Lg/g/b/a/i/b;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$e;->f:Lg/g/b/a/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/a/i/a$a;)Li/c/b0/b/i;
    .locals 1

    .line 1
    sget-object v0, Lg/g/b/a/i/a$a;->CALLER_PROFILE:Lg/g/b/a/i/a$a;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lg/g/b/a/i/b$e;->f:Lg/g/b/a/i/b;

    invoke-static {p1}, Lg/g/b/a/i/b;->e(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/dao/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/hiya/client/callerid/dao/c;->a()Li/c/b0/b/e;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lg/g/b/a/i/b$e;->f:Lg/g/b/a/i/b;

    invoke-static {p1}, Lg/g/b/a/i/b;->k(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/dao/a0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/dao/a0;->c()Li/c/b0/b/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/a/i/a$a;

    invoke-virtual {p0, p1}, Lg/g/b/a/i/b$e;->a(Lg/g/b/a/i/a$a;)Li/c/b0/b/i;

    move-result-object p1

    return-object p1
.end method
