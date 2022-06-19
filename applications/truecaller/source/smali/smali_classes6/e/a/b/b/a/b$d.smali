.class public final Le/a/b/b/a/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/b/a/b;->um()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/b/a/b;


# direct methods
.method public constructor <init>(Le/a/b/b/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/a/b$d;->a:Le/a/b/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.truecaller.common.network.country.CountryListDto.Country"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 2
    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p2, p0, Le/a/b/b/a/b$d;->a:Le/a/b/b/a/b;

    invoke-virtual {p2}, Le/a/b/b/a/b;->PA()Le/a/b/b/a/k;

    move-result-object p2

    const-string p3, "it"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "countryIso"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p2, Le/a/b/b/a/k;->c:Ljava/lang/String;

    .line 5
    iget-object p3, p2, Le/a/b/b/a/k;->e:Le/a/b/l/a;

    invoke-interface {p3, p1}, Le/a/b/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/b/b/a/j;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Le/a/b/b/a/j;->Iu(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
