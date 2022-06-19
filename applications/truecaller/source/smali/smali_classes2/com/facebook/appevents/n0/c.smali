.class public final synthetic Lcom/facebook/appevents/n0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/appevents/m0/j$a;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/n0/h$b;

.field public final synthetic b:Lcom/facebook/appevents/n0/g;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/n0/h$b;Lcom/facebook/appevents/n0/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/n0/c;->a:Lcom/facebook/appevents/n0/h$b;

    iput-object p2, p0, Lcom/facebook/appevents/n0/c;->b:Lcom/facebook/appevents/n0/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/appevents/n0/c;->a:Lcom/facebook/appevents/n0/h$b;

    iget-object v1, p0, Lcom/facebook/appevents/n0/c;->b:Lcom/facebook/appevents/n0/g;

    const-string v2, "$slave"

    .line 1
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "file"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object v1, v0, Lcom/facebook/appevents/n0/h$b;->g:Lcom/facebook/appevents/n0/g;

    .line 3
    iput-object p1, v0, Lcom/facebook/appevents/n0/h$b;->f:Ljava/io/File;

    .line 4
    iget-object p1, v0, Lcom/facebook/appevents/n0/h$b;->h:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
