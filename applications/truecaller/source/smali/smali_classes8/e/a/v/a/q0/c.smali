.class public final Le/a/v/a/q0/c;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/q0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/v/a/q0/b;",
        ">;",
        "Le/a/v/a/q0/a;"
    }
.end annotation


# instance fields
.field public final b:Le/a/f5/a;

.field public final c:Le/a/v/a/z/a;

.field public final d:Le/a/b0/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/f5/a;Le/a/v/a/z/a;Le/a/b0/a/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f5/a;",
            "Le/a/v/a/z/a;",
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "swishManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAnalytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactAvatarXConfigProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/v/a/q0/c;->b:Le/a/f5/a;

    iput-object p2, p0, Le/a/v/a/q0/c;->c:Le/a/v/a/z/a;

    iput-object p3, p0, Le/a/v/a/q0/c;->d:Le/a/b0/a/b/b;

    return-void
.end method
