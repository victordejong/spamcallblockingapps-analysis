.class public final Le/a/l/u2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/u2/a;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/l/u2/c;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/l/u2/c;II)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseViaBillingSupportedCheck"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/u2/b;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/l/u2/b;->b:Le/a/l/u2/c;

    iput p3, p0, Le/a/l/u2/b;->c:I

    iput p4, p0, Le/a/l/u2/b;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/premium/provider/Store;
    .locals 4

    .line 1
    iget v0, p0, Le/a/l/u2/b;->d:I

    iget v1, p0, Le/a/l/u2/b;->c:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/l/u2/b;->b:Le/a/l/u2/c;

    invoke-interface {v0}, Le/a/l/u2/c;->a()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/l/u2/b;->a:Le/a/u3/g;

    .line 4
    iget-object v1, v0, Le/a/u3/g;->y:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/truecaller/premium/provider/Store;->WEB:Lcom/truecaller/premium/provider/Store;

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lcom/truecaller/premium/provider/Store;->GOOGLE_PLAY:Lcom/truecaller/premium/provider/Store;

    :goto_1
    return-object v0
.end method
