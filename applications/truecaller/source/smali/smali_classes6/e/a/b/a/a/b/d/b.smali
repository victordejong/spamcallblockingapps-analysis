.class public final Le/a/b/a/a/b/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/a/a/b/d/b$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/b/a/a/b/d/b$a;

.field public final b:Le/a/b/a/a/b/d/b$a;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    const-class v0, Le/a/b/a/a/b/d/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->COMPANYPROFILE:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v1, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/a/a/b/d/b$a;

    iput-object v1, p0, Le/a/b/a/a/b/d/b;->a:Le/a/b/a/a/b/d/b$a;

    .line 3
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->IMAGES:Lcom/truecaller/common/network/util/KnownEndpoints;

    sget-object v2, Le/a/b/a/a/b/d/b$b;->b:Le/a/b/a/a/b/d/b$b;

    invoke-static {v1, v0, v2}, Le/a/b0/b/a/d;->b(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/a/b/d/b$a;

    iput-object v0, p0, Le/a/b/a/a/b/d/b;->b:Le/a/b/a/a/b/d/b$a;

    return-void
.end method
