.class final Lg/g/b/a/i/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/i/b;->q(Lg/g/b/a/i/a$a;Lg/g/b/a/k/k;J)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/i/b;

.field final synthetic g:Lg/g/b/a/i/a$a;


# direct methods
.method constructor <init>(Lg/g/b/a/i/b;Lg/g/b/a/i/a$a;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$i;->f:Lg/g/b/a/i/b;

    iput-object p2, p0, Lg/g/b/a/i/b$i;->g:Lg/g/b/a/i/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b$i;->g:Lg/g/b/a/i/a$a;

    sget-object v1, Lg/g/b/a/i/a$a;->CALLER_PROFILE:Lg/g/b/a/i/a$a;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lg/g/b/a/i/b$i;->f:Lg/g/b/a/i/b;

    invoke-static {v0}, Lg/g/b/a/i/b;->h(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/prefs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/client/callerid/prefs/Cache;->q(J)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lg/g/b/a/i/a$a;->TRANSLATION:Lg/g/b/a/i/a$a;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lg/g/b/a/i/b$i;->f:Lg/g/b/a/i/b;

    invoke-static {v0}, Lg/g/b/a/i/b;->h(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/prefs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/client/callerid/prefs/Cache;->r(J)V

    :cond_1
    :goto_0
    return-void
.end method
