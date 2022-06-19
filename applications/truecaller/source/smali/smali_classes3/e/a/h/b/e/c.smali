.class public final Le/a/h/b/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/e/b;


# instance fields
.field public final a:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Lcom/truecaller/calling/dialer/util/CallLogViewState;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object v1

    iput-object v1, p0, Le/a/h/b/e/c;->a:Lq3/a/w2/h;

    .line 3
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object v1

    iput-object v1, p0, Le/a/h/b/e/c;->b:Lq3/a/w2/h;

    .line 4
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object v0

    iput-object v0, p0, Le/a/h/b/e/c;->c:Lq3/a/w2/h;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Lcom/truecaller/calling/dialer/util/CallLogViewState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/b/e/c;->a:Lq3/a/w2/h;

    return-object v0
.end method

.method public b()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/b/e/c;->c:Lq3/a/w2/h;

    return-object v0
.end method

.method public c()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/b/e/c;->b:Lq3/a/w2/h;

    return-object v0
.end method
