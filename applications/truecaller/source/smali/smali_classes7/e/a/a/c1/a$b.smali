.class public final Le/a/a/c1/a$b;
.super Le/a/a/c1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/truecaller/messaging/data/types/Draft;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/truecaller/messaging/data/types/Draft;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ")V"
        }
    .end annotation

    const-string v0, "failedDrafts"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedDraft"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/a/c1/a;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/a/c1/a$b;->a:Ljava/util/List;

    iput-object p2, p0, Le/a/a/c1/a$b;->b:Lcom/truecaller/messaging/data/types/Draft;

    return-void
.end method
