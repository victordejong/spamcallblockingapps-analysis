.class public final Le/a/b/a/a/c/e/b$b;
.super Le/a/b/a/a/c/e/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/a/a/c/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;


# direct methods
.method public constructor <init>(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)V
    .locals 1

    const-string v0, "profile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/b/a/a/c/e/b;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/b/a/a/c/e/b$b;->a:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    return-void
.end method
