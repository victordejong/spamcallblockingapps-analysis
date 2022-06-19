.class public final Le/a/a/c1/b$a;
.super Le/a/a/c1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;I)V"
        }
    .end annotation

    const-string p4, "unsupportedEntities"

    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p4}, Le/a/a/c1/b;-><init>(Ls1/z/c/f;)V

    iput-wide p1, p0, Le/a/a/c1/b$a;->a:J

    iput-object p3, p0, Le/a/a/c1/b$a;->b:Ljava/util/List;

    return-void
.end method
