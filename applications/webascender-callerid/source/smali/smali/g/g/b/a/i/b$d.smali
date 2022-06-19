.class final Lg/g/b/a/i/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/i/b;->o(Lg/g/b/a/i/a$a;Li/c/b0/b/v;)Li/c/b0/b/v;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/i/b;

.field final synthetic g:Lg/g/b/a/i/a$a;


# direct methods
.method constructor <init>(Lg/g/b/a/i/b;Lg/g/b/a/i/a$a;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$d;->f:Lg/g/b/a/i/b;

    iput-object p2, p0, Lg/g/b/a/i/b$d;->g:Lg/g/b/a/i/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lm/h0;)Lg/g/b/a/i/a$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b$d;->f:Lg/g/b/a/i/b;

    invoke-static {v0}, Lg/g/b/a/i/b;->g(Lg/g/b/a/i/b;)Lg/g/b/a/k/h;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lg/g/b/a/i/b$d;->g:Lg/g/b/a/i/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lg/g/b/a/i/b$d;->g:Lg/g/b/a/i/a$a;

    sget-object v3, Lg/g/b/a/i/a$a;->TRANSLATION:Lg/g/b/a/i/a$a;

    if-ne v2, v3, :cond_0

    invoke-virtual {v2}, Lg/g/b/a/i/a$a;->getRowLimit()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lg/g/b/a/i/b$d;->f:Lg/g/b/a/i/b;

    invoke-static {v2}, Lg/g/b/a/i/b;->h(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/prefs/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/client/callerid/prefs/Cache;->j()I

    move-result v2

    .line 4
    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lg/g/b/a/k/h;->b(Lm/h0;Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lg/g/b/a/i/b$d;->g:Lg/g/b/a/i/a$a;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lm/h0;

    invoke-virtual {p0, p1}, Lg/g/b/a/i/b$d;->a(Lm/h0;)Lg/g/b/a/i/a$a;

    move-result-object p1

    return-object p1
.end method
