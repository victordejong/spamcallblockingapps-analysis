.class public final Le/a/b/o/f/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/o/f/c/h;->a:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public a(Le/a/b/o/f/c/i;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "districtView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "districtName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p2}, Le/a/b/o/f/c/i;->x1(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Le/a/b/o/f/c/h;->a:Le/a/p5/c0;

    .line 3
    sget v0, Lcom/truecaller/bizmon/R$plurals;->biz_govt_contacts_count:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-interface {p2, v0, p3, v1}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resourceProvider.getQuan\u2026ontacts\n                )"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1, p2}, Le/a/b/o/f/c/i;->M4(Ljava/lang/String;)V

    return-void
.end method
