.class final Lg/g/a/a/h/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/a/h/b;->k()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lg/g/a/a/i/o/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/a/a/h/b;


# direct methods
.method constructor <init>(Lg/g/a/a/h/b;)V
    .locals 0

    iput-object p1, p0, Lg/g/a/a/h/b$c;->f:Lg/g/a/a/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/o/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/g/a/a/h/b$c;->f:Lg/g/a/a/h/b;

    invoke-virtual {p1}, Lg/g/a/a/i/o/a;->getExpiresInSeconds()I

    move-result v1

    invoke-virtual {p1}, Lg/g/a/a/i/o/a;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lg/g/a/a/h/b;->h(Lg/g/a/a/h/b;ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lg/g/a/a/h/b$c;->f:Lg/g/a/a/h/b;

    invoke-virtual {p1}, Lg/g/a/a/i/o/a;->getGrantInfos()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lg/g/a/a/h/b;->i(Lg/g/a/a/h/b;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/o/a;

    invoke-virtual {p0, p1}, Lg/g/a/a/h/b$c;->a(Lg/g/a/a/i/o/a;)V

    return-void
.end method
