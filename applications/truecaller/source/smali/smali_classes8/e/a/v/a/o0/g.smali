.class public final Le/a/v/a/o0/g;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/o0/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/v/a/o0/c;",
        ">;",
        "Le/a/v/a/o0/b;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/v/a/o0/a;

.field public final f:Le/a/p5/c0;

.field public final g:Le/a/v/a/z/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/v/a/o0/a;Le/a/p5/c0;Le/a/v/a/z/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialMediaHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAnalytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/v/a/o0/g;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/v/a/o0/g;->e:Le/a/v/a/o0/a;

    iput-object p3, p0, Le/a/v/a/o0/g;->f:Le/a/p5/c0;

    iput-object p4, p0, Le/a/v/a/o0/g;->g:Le/a/v/a/z/a;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->P()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Le/a/v/a/o0/g;->e:Le/a/v/a/o0/a;

    invoke-interface {v0, p1}, Le/a/v/a/o0/a;->b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method
