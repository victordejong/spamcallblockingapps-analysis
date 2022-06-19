.class public final Le/a/b/a/h/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/h/a/a;


# instance fields
.field public final a:Le/a/b/a/a/b/a;


# direct methods
.method public constructor <init>(Le/a/b/a/a/b/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "bizProfileRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/a/h/a/b;->a:Le/a/b/a/a/b/a;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Le/a/b/l/q<",
            "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/a/h/a/b;->a:Le/a/b/a/a/b/a;

    invoke-interface {v0}, Le/a/b/a/a/b/a;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
