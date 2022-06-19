.class public final Le/a/l/c/a/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/a/j0;

.field public final b:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Le/a/l/a/j0;Le/a/p5/h0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "temporaryPromoCardManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/w2;->a:Le/a/l/a/j0;

    iput-object p2, p0, Le/a/l/c/a/w2;->b:Le/a/p5/h0;

    return-void
.end method
