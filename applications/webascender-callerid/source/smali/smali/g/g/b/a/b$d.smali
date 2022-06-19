.class final Lg/g/b/a/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/b;->G(Ljava/lang/String;ZZZLjava/lang/Boolean;Lg/g/b/a/g/b/a;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/b;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lg/g/b/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/b$d;->f:Lg/g/b/a/b;

    iput-object p2, p0, Lg/g/b/a/b$d;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/a/b$d;->f:Lg/g/b/a/b;

    invoke-virtual {v0}, Lg/g/b/a/b;->n()Lcom/hiya/client/callerid/prefs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->b()Lcom/hiya/client/callerid/prefs/c;

    move-result-object v0

    iget-object v1, p0, Lg/g/b/a/b$d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/prefs/c;->l(Ljava/lang/String;)V

    return-void
.end method
