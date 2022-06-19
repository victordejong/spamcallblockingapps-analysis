.class public final Le/a/b0/n/h$g;
.super Le/a/b0/n/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/common/profile/ProfileSaveError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/common/profile/ProfileSaveError;",
            ">;)V"
        }
    .end annotation

    const-string v0, "errors"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1a6

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/b0/n/h;-><init>(ILs1/z/c/f;)V

    iput-object p1, p0, Le/a/b0/n/h$g;->c:Ljava/util/List;

    return-void
.end method
