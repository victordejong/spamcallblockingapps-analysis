.class final Lcom/hiya/client/callerid/ui/x/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/x/a;->f()V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/x/a;

.field final synthetic g:Lcom/hiya/client/callerid/ui/x/d;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/x/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/x/a$d;->f:Lcom/hiya/client/callerid/ui/x/a;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/x/a$d;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 14

    .line 1
    instance-of v0, p1, Ljava/util/NoSuchElementException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/a$d;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/x/d;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/x/a$d;->f:Lcom/hiya/client/callerid/ui/x/a;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/x/a;->c(Lcom/hiya/client/callerid/ui/x/a;)Lcom/hiya/client/callerid/ui/x/e;

    move-result-object p1

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/x/a$d;->g:Lcom/hiya/client/callerid/ui/x/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/x/d;->e()I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xbf

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/hiya/client/callerid/ui/x/d;->b(Lcom/hiya/client/callerid/ui/x/d;Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JIIILjava/lang/Object;)Lcom/hiya/client/callerid/ui/x/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/x/e;->f(Lcom/hiya/client/callerid/ui/x/d;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/hiya/client/callerid/ui/x/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to send PhoneInfo."

    invoke-static {v0, p1, v2, v1}, Lcom/hiya/client/support/logging/d;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/x/a$d;->a(Ljava/lang/Throwable;)V

    return-void
.end method
