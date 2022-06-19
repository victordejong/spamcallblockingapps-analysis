.class final Lcom/hiya/client/callerid/dao/e$l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/e$l;->a(Ljava/lang/String;)Li/c/b0/b/e0;
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
        "Lg/g/b/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/e$l;

.field final synthetic g:Lg/g/b/c/f;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/e$l;Lg/g/b/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e$l$d;->f:Lcom/hiya/client/callerid/dao/e$l;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/e$l$d;->g:Lg/g/b/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/f;)V
    .locals 3

    .line 1
    sget-object p1, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$l$d;->f:Lcom/hiya/client/callerid/dao/e$l;

    iget-object v0, v0, Lcom/hiya/client/callerid/dao/e$l;->g:Lg/g/b/c/j;

    invoke-virtual {v0}, Lg/g/b/c/j;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/e$l$d;->g:Lg/g/b/c/f;

    invoke-virtual {v1}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object v1

    sget-object v2, Lcom/hiya/client/callerid/dao/d;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 4
    sget-object v1, Lg/g/a/e/e/j;->EVENT_PROFILE:Lg/g/a/e/e/j;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lg/g/a/e/e/j;->EVENT_PROFILE:Lg/g/a/e/e/j;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lg/g/a/e/e/j;->TOP_SPAMMER:Lg/g/a/e/e/j;

    .line 7
    :goto_0
    invoke-virtual {p1, v0, v1}, Lg/g/a/e/e/b;->i(Ljava/lang/String;Lg/g/a/e/e/j;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/f;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/e$l$d;->a(Lg/g/b/c/f;)V

    return-void
.end method
