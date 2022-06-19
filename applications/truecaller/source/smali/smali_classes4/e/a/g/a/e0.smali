.class public final Le/a/g/a/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Le/a/g/f/e;

.field public c:Lcom/truecaller/acs/analytics/DismissReason;

.field public final d:Lq3/a/w2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/j<",
            "Le/a/g/f/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/w2/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/j<",
            "Le/a/g/f/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "viewEventChannel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/a/e0;->d:Lq3/a/w2/j;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/g/a/e0;->a:Z

    .line 3
    sget-object p1, Lcom/truecaller/acs/analytics/DismissReason;->MINIMIZED:Lcom/truecaller/acs/analytics/DismissReason;

    iput-object p1, p0, Le/a/g/a/e0;->c:Lcom/truecaller/acs/analytics/DismissReason;

    return-void
.end method
