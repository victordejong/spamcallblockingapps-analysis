.class public final Le/a/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/f;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/f0/k/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/v/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/u3/g;

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/b0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/u3/g;Ljavax/inject/Provider;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/i/f0/k/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/i/v/a;",
            ">;",
            "Le/a/u3/g;",
            "Ljavax/inject/Provider<",
            "Le/a/i/b0/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignsReceiver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsAdCacheManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCampaignsManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/f;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/f/f;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/f/f;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/f/f;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Le/a/f/f;->e:Le/a/u3/g;

    iput-object p6, p0, Le/a/f/f;->f:Ljavax/inject/Provider;

    return-void
.end method
