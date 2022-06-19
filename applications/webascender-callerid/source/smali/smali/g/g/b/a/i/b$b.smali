.class final Lg/g/b/a/i/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/i/b;->a()Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/i/b;


# direct methods
.method constructor <init>(Lg/g/b/a/i/b;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$b;->f:Lg/g/b/a/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b$b;->f:Lg/g/b/a/i/b;

    invoke-static {v0}, Lg/g/b/a/i/b;->h(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/prefs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hiya/client/callerid/prefs/Cache;->q(J)V

    return-void
.end method
