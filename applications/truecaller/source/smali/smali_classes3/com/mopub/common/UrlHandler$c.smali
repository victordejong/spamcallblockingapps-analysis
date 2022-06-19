.class public Lcom/mopub/common/UrlHandler$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/UrlResolutionTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Iterable;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/mopub/common/UrlHandler;


# direct methods
.method public constructor <init>(Lcom/mopub/common/UrlHandler;Landroid/content/Context;ZLjava/lang/Iterable;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/UrlHandler$c;->e:Lcom/mopub/common/UrlHandler;

    iput-object p2, p0, Lcom/mopub/common/UrlHandler$c;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/mopub/common/UrlHandler$c;->b:Z

    iput-object p4, p0, Lcom/mopub/common/UrlHandler$c;->c:Ljava/lang/Iterable;

    iput-object p5, p0, Lcom/mopub/common/UrlHandler$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mopub/common/UrlHandler$c;->e:Lcom/mopub/common/UrlHandler;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/mopub/common/UrlHandler;->g:Z

    .line 3
    iget-object v1, p0, Lcom/mopub/common/UrlHandler$c;->d:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/mopub/common/UrlHandler;->a(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mopub/common/UrlHandler$c;->e:Lcom/mopub/common/UrlHandler;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/mopub/common/UrlHandler;->g:Z

    .line 3
    iget-object v1, p0, Lcom/mopub/common/UrlHandler$c;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/mopub/common/UrlHandler$c;->b:Z

    iget-object v3, p0, Lcom/mopub/common/UrlHandler$c;->c:Ljava/lang/Iterable;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/mopub/common/UrlHandler;->handleResolvedUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z

    return-void
.end method
