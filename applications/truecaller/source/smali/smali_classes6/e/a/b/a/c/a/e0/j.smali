.class public final Le/a/b/a/c/a/e0/j;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/b/a/c/a/u;",
        ">;",
        "Le/a/b/a/c/a/t;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public o5()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/u;

    if-eqz v0, :cond_0

    sget v1, Lcom/truecaller/bizmon/R$string;->GooglePlayServicesNotAvailable:I

    invoke-interface {v0, v1}, Le/a/b/a/c/a/u;->a(I)V

    :cond_0
    return-void
.end method
