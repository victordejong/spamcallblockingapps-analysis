.class public final Le/a/l/c/a/m2;
.super Le/a/l/c/a/h;
.source "SourceFile"


# instance fields
.field public final d:Le/a/l/g/t;

.field public final e:Le/a/l/p2/v0;

.field public final f:Le/a/l/a/l0;


# direct methods
.method public constructor <init>(Le/a/l/g/t;Le/a/l/p2/v0;Le/a/l/a/l0;Le/a/l/c/a/r;Le/a/l/a/c;Le/a/p5/h0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "goldGiftPromoUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "welcomeOfferUtils"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardLabelFactory"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonBuildHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4, p5, p6}, Le/a/l/c/a/h;-><init>(Le/a/l/c/a/r;Le/a/l/a/c;Le/a/p5/h0;)V

    iput-object p1, p0, Le/a/l/c/a/m2;->d:Le/a/l/g/t;

    iput-object p2, p0, Le/a/l/c/a/m2;->e:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/c/a/m2;->f:Le/a/l/a/l0;

    return-void
.end method
