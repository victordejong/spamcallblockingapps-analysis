.class public final Le/a/c5/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c5/a/h;
.implements Le/a/c5/a/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c5/a/j;->c:Ls1/w/f;

    const-string p1, "me"

    .line 2
    iput-object p1, p0, Le/a/c5/a/j;->a:Ljava/lang/String;

    const-string p1, "fields"

    .line 3
    iput-object p1, p0, Le/a/c5/a/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public G1()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O1()V
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/v;->b:Lcom/facebook/login/v$b;

    invoke-virtual {v0}, Lcom/facebook/login/v$b;->a()Lcom/facebook/login/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/v;->f()V

    return-void
.end method
