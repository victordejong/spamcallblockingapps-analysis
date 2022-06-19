.class public final Le/a/b/a/a/b/b$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/b/b;->c()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroidx/lifecycle/LiveData<",
        "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/a/b/b;


# direct methods
.method public constructor <init>(Le/a/b/a/a/b/b;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/b/b$b;->b:Le/a/b/a/a/b/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/a/b/b$b;->b:Le/a/b/a/a/b/b;

    .line 2
    iget-object v0, v0, Le/a/b/a/a/b/b;->a:Le/a/b/a/a/b/c/a;

    .line 3
    iget-object v0, v0, Le/a/b/a/a/b/c/a;->a:Le/a/b/a/a/b/c/b;

    return-object v0
.end method
