.class public final Le/a/f5/g/h;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/f5/g/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/f5/g/f;",
        ">;",
        "Le/a/f5/g/e;"
    }
.end annotation


# instance fields
.field public final d:Ljava/text/NumberFormat;

.field public final e:Ls1/w/f;

.field public final f:Ls1/w/f;

.field public final g:Le/a/f5/a;

.field public final h:Le/a/p5/c0;

.field public final i:Le/a/y/c/b;

.field public final j:Le/a/k3/j/b;

.field public final k:Le/a/b0/o/a;

.field public final l:Le/a/q2/a;

.field public final m:Le/a/b0/q/z;

.field public final n:Le/a/e4/p;

.field public final o:Le/a/u3/g;

.field public final p:Le/a/f5/i/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/f5/a;Le/a/p5/c0;Le/a/y/c/b;Le/a/k3/j/b;Le/a/b0/o/a;Le/a/q2/a;Le/a/b0/q/z;Le/a/e4/p;Le/a/u3/g;Le/a/f5/i/c;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swishManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swishMessageSender"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/f5/g/h;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/f5/g/h;->f:Ls1/w/f;

    iput-object p3, p0, Le/a/f5/g/h;->g:Le/a/f5/a;

    iput-object p4, p0, Le/a/f5/g/h;->h:Le/a/p5/c0;

    iput-object p5, p0, Le/a/f5/g/h;->i:Le/a/y/c/b;

    iput-object p6, p0, Le/a/f5/g/h;->j:Le/a/k3/j/b;

    iput-object p7, p0, Le/a/f5/g/h;->k:Le/a/b0/o/a;

    iput-object p8, p0, Le/a/f5/g/h;->l:Le/a/q2/a;

    iput-object p9, p0, Le/a/f5/g/h;->m:Le/a/b0/q/z;

    iput-object p10, p0, Le/a/f5/g/h;->n:Le/a/e4/p;

    iput-object p11, p0, Le/a/f5/g/h;->o:Le/a/u3/g;

    iput-object p12, p0, Le/a/f5/g/h;->p:Le/a/f5/i/c;

    .line 2
    new-instance p1, Ljava/util/Locale;

    const-string p2, "sv"

    const-string p3, "SE"

    invoke-direct {p1, p2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Le/a/f5/g/h;->d:Ljava/text/NumberFormat;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/swish/deeplink/data/SwishResultDto;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getPayee()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f5/g/h;->g:Le/a/f5/a;

    invoke-virtual {p1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getPayee()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/f5/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/f5/g/h;->m:Le/a/b0/q/z;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getPayee()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Le/a/f5/g/h;->n:Le/a/e4/p;

    invoke-interface {v1}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multiSimManager.defaultSimToken"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "SE"

    .line 6
    invoke-interface {v0, p1, v1, v2}, Le/a/b0/q/z;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getPayee()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "+"

    invoke-static {v0, v3, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x2b

    .line 8
    invoke-static {v0}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getPayee()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getPayee()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
