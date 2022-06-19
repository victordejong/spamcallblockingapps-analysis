.class final Lg/g/b/a/b$i;
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

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lg/g/b/a/b;Z)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/b$i;->f:Lg/g/b/a/b;

    iput-boolean p2, p0, Lg/g/b/a/b$i;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/a/b$i;->f:Lg/g/b/a/b;

    invoke-virtual {v0}, Lg/g/b/a/b;->n()Lcom/hiya/client/callerid/prefs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->b()Lcom/hiya/client/callerid/prefs/c;

    move-result-object v0

    iget-boolean v1, p0, Lg/g/b/a/b$i;->g:Z

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/prefs/c;->j(Z)V

    return-void
.end method
